package com.soda.admin.model.vo;

import java.util.Date;

public class Refund {
	
	private String nTitle;		// 클래스명 notice_title
	private Date pDate;			// 결제일
	private Date fDate;			// 환불날짜
	private String userName;	// 강사명 user_name
	private String userId;		// 환불 신청한 회원 아이디
	private int price;			// 결제 금액
	private String rAccount;	// 환불 계좌
	private String bank;		// 은행
	private String aHolder;		// 예금주
	private int nNum;			// 게시물번호 notice_num
	
	
	public Refund() {}


	public Refund(String nTitle, Date pDate, Date fDate, String userName, String userId, int price, String rAccount,
			String bank, String aHolder, int nNum) {
		super();
		this.nTitle = nTitle;
		this.pDate = pDate;
		this.fDate = fDate;
		this.userName = userName;
		this.userId = userId;
		this.price = price;
		this.rAccount = rAccount;
		this.bank = bank;
		this.aHolder = aHolder;
		this.nNum = nNum;
	}


	public String getnTitle() {
		return nTitle;
	}


	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}


	public Date getpDate() {
		return pDate;
	}


	public void setpDate(Date pDate) {
		this.pDate = pDate;
	}


	public Date getfDate() {
		return fDate;
	}


	public void setfDate(Date fDate) {
		this.fDate = fDate;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getrAccount() {
		return rAccount;
	}


	public void setrAccount(String rAccount) {
		this.rAccount = rAccount;
	}


	public String getBank() {
		return bank;
	}


	public void setBank(String bank) {
		this.bank = bank;
	}


	public String getaHolder() {
		return aHolder;
	}


	public void setaHolder(String aHolder) {
		this.aHolder = aHolder;
	}


	public int getnNum() {
		return nNum;
	}


	public void setnNum(int nNum) {
		this.nNum = nNum;
	}


	@Override
	public String toString() {
		return "Refund [nTitle=" + nTitle + ", userName=" + userName + ", userId=" + userId + ", price=" + price
				+ ", rAccount=" + rAccount + ", bank=" + bank + ", aHolder=" + aHolder + ", nNum=" + nNum + "]";
	}
	
	
	

}
