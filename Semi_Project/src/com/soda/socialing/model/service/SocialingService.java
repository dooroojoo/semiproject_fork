package com.soda.socialing.model.service;

import static com.common.JDBCTemplate.close;
import static com.common.JDBCTemplate.commit;
import static com.common.JDBCTemplate.getConnection;
import static com.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.soda.socialing.model.dao.SocialingDao;
import com.soda.socialing.model.vo.PageInfo;
import com.soda.socialing.model.vo.Socialing;
import com.soda.socialing.model.vo.SodaFile;

public class SocialingService {
	
	private SocialingDao socialingDao = new SocialingDao();
	
	/* 페이징 : 페이지와 게시글리스트를 리턴*/
	public Map<String, Object> selectList(int page) {
		Connection conn = getConnection();
		
		// 1. 조회할 게시글 총 개수 구하기 
		int listCount = socialingDao.getListCount(conn);
		
		// 2. PageInfo 객체 만들기 (목록 5개씩, 한 페이지당 9개 게시글)
		PageInfo pi = new PageInfo(page, listCount, 5, 9);
		
		// 3. 페이징 처리 된 게시글 목록 조회
		List<Socialing> socialingList = socialingDao.selectList(conn, pi);
		
		Map<String, Object> returnMap = new HashMap<>();
		
		returnMap.put("pi", pi);
		returnMap.put("socialingList", socialingList);
		
		return returnMap;
	}

	public int insertSocialing(Socialing socialing) {
		Connection conn = getConnection();
		
		/* Notice 테이블에 삽입 */
		int NoticeResult = socialingDao.insertNotice(conn, socialing);
		
		/* Socialing 테이블에 삽입 */
		int socialingResult = socialingDao.insertSocialing(conn, socialing);
		
		/* File 테이블에 삽입 */
		int fileResult = 0;
		for(SodaFile photo : socialing.getPhotoList()) {
			fileResult += socialingDao.insertFile(conn, photo);
		}
		
		int result = 0;	// 3가지 로직이 모두 잘 수행 되었음을 나타내는 변수
		if(NoticeResult > 0 && socialingResult > 0 && fileResult == socialing.getPhotoList().size()) {
			// fileResult = 사진 삽입(insert)이 정상 수행 된 갯수, size() = 실제 첨부 된 사진 갯수
			commit(conn);
			result = 1;
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

//	public List<Socialing> selectList() {
//		Connection conn = getConnection();
//		
//		List<Socialing> socialingList = socialingDao.selectList(conn);
//		
//		close(conn);
//		
//		return socialingList;
//	}

}
