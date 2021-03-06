package com.soda.order.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import static com.common.JDBCTemplate.close;

import com.soda.member.model.dao.MemberDao;
import com.soda.order.model.vo.WishList;

public class WishListDao {

	private Properties wishlistQuery = new Properties();
	
	public WishListDao() {
		wishlistQuery = new Properties();
		String fileName = MemberDao.class.getResource("/com/sql/wishlist/wishlist-query.xml").getPath();
		try {
			wishlistQuery.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


	// 클래스를 장바구니에 추가
	public int wishListAdd(Connection conn, WishList wishlist) {
		PreparedStatement pstmt = null;
		int result = 0;
		ResultSet rset = null;
		String sql = wishlistQuery.getProperty("wishListAdd");
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, wishlist.getnNum());
				pstmt.setString(2, wishlist.getUserId());
				pstmt.setString(3, wishlist.getlessonDate());
				
				result = pstmt.executeUpdate();
			
			
			} catch (SQLException e) {
				e.printStackTrace();
			} finally{
				close(rset);
				close(pstmt);
			}
		
		return result;
	}

	// 장바구니 리스트 조회
	public List<WishList> wishlistList(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<WishList> wishlist = new ArrayList<>();
		String sql = wishlistQuery.getProperty("wishlist");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				WishList w = new WishList();
				w.setnNum(rset.getInt("notice_num"));
				w.setWishNum(rset.getInt("wish_num"));
				w.setlessonDate(rset.getString("lesson_date"));
				w.setnTitle(rset.getString("notice_title"));
				w.setcPrice(rset.getInt("c_price"));
				w.setcCategory(rset.getString("c_category"));
				w.setcLocation(rset.getString("c_location"));
				w.setcTime1(rset.getString("c_time1"));
				w.setcTime2(rset.getString("c_time2"));
				w.setvDate(rset.getString("v_date"));
				w.setRoute(rset.getString("route"));
				w.setChangeName(rset.getString("change_name"));
				
				wishlist.add(w);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return wishlist;
	}

	// 장바구니 삭제
	public int deleteWishlist(Connection conn, int deleteList, String userId) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = wishlistQuery.getProperty("deleteWishlist");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setInt(2, deleteList);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	// 결제 화면 조회
		public List<WishList> wishlistPay(Connection conn, int nNum, String selDate) {
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			List<WishList> wishlist = new ArrayList<>();
			String sql = wishlistQuery.getProperty("paySelect");

			try {
				pstmt = conn.prepareStatement(sql);

				pstmt.setInt(1, nNum);

				rset = pstmt.executeQuery();

				while(rset.next()) {
					WishList w = new WishList();
					w.setnNum(rset.getInt("notice_num"));
					w.setnTitle(rset.getString("notice_title"));
					w.setlessonDate(selDate);
					w.setcPrice(rset.getInt("c_price"));
					w.setcCategory(rset.getString("c_category"));
					w.setcTime1(rset.getString("c_time1"));
					w.setcTime2(rset.getString("c_time2"));
					w.setvDate(rset.getString("v_date"));
					w.setRoute(rset.getString("route"));
					w.setChangeName(rset.getString("change_name"));

					wishlist.add(w);
				}


			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}

			return wishlist;
		}


	// 클래스 장바구니 담을 때 중복이면 새로 담은 클래스로 업데이트
	public int checkUpdate(Connection conn, WishList wishlist) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = wishlistQuery.getProperty("updateAdd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, wishlist.getlessonDate());
			pstmt.setInt(2, wishlist.getnNum());
			pstmt.setString(3, wishlist.getUserId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
			
		}


	// 담으려는 클래스 이미 등록된 클래스인지 조회
	public int wishlistCheck(Connection conn, WishList wishlist) {
		PreparedStatement pstmt = null;
		int result = 0;
		ResultSet rset = null;
		String sql = wishlistQuery.getProperty("wishListCheck");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, wishlist.getUserId());
			pstmt.setInt(2, wishlist.getnNum());

			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
		
	}

	

	

	
}
