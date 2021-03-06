package com.soda.magazine.model.vo;

import java.util.Date;
import java.util.List;



public class Magazine {
	private int nNum;			// 게시글 번호 pk
	private String nTitle;		// 게시글 제목
	private String nContent;	// 게시글 내용
	private Date nDate;			// 작성 날짜
	private String nStatus;		// 상태 (Y, N)
	private String nType;		// 게시판 종류 (클래스, 소셜링, 매거진)
	private String nRef;		// 매거진 참조 게시팜
	private String userId;		// 사용자 아이디 (Member_info 테이블 참조)
	private String userName; 	// 사용자 이름 (Member_info 테이블 참조)
	private Date modifyDate;	// 수정 날짜
	
	private String selfNum;		// 셀프 참조
	private int nCount;		// 조회수
	
	private List<MagazineFile> photoList;  // 첨부파일
	
	  private List<Reply> replyList;
	
	public Magazine() {}

	
	
	
	
	
	
	
	
	
	
	
	
	
	















	public Magazine(int nNum, String nTitle, String nContent, Date nDate, String nStatus, String nType, String nRef,
			String userId, String userName, Date modifyDate, String selfNum, int nCount, List<MagazineFile> photoList,
			List<Reply> replyList) {
		super();
		this.nNum = nNum;
		this.nTitle = nTitle;
		this.nContent = nContent;
		this.nDate = nDate;
		this.nStatus = nStatus;
		this.nType = nType;
		this.nRef = nRef;
		this.userId = userId;
		this.userName = userName;
		this.modifyDate = modifyDate;
		this.selfNum = selfNum;
		this.nCount = nCount;
		this.photoList = photoList;
		this.replyList = replyList;
	}















	public String getnRef() {
		return nRef;
	}






























	public void setnRef(String nRef) {
		this.nRef = nRef;
	}






























	public int getnNum() {
		return nNum;
	}















	public void setnNum(int nNum) {
		this.nNum = nNum;
	}















	public String getnTitle() {
		return nTitle;
	}















	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}















	public String getnContent() {
		return nContent;
	}















	public void setnContent(String nContent) {
		this.nContent = nContent;
	}















	public Date getnDate() {
		return nDate;
	}















	public void setnDate(Date nDate) {
		this.nDate = nDate;
	}















	public String getnStatus() {
		return nStatus;
	}















	public void setnStatus(String nStatus) {
		this.nStatus = nStatus;
	}















	public String getnType() {
		return nType;
	}















	public void setnType(String nType) {
		this.nType = nType;
	}















	public String getUserId() {
		return userId;
	}















	public void setUserId(String userId) {
		this.userId = userId;
	}















	public String getUserName() {
		return userName;
	}















	public void setUserName(String userName) {
		this.userName = userName;
	}















	public Date getModifyDate() {
		return modifyDate;
	}















	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}















	public String getSelfNum() {
		return selfNum;
	}















	public void setSelfNum(String selfNum) {
		this.selfNum = selfNum;
	}















	public int getnCount() {
		return nCount;
	}















	public void setnCount(int nCount) {
		this.nCount = nCount;
	}















	public List<MagazineFile> getPhotoList() {
		return photoList;
	}















	public void setPhotoList(List<MagazineFile> photoList) {
		this.photoList = photoList;
	}















	public List<Reply> getReplyList() {
		return replyList;
	}















	public void setReplyList(List<Reply> replyList) {
		this.replyList = replyList;
	}















	@Override
	public String toString() {
		return "Magazine [nNum=" + nNum + ", nTitle=" + nTitle + ", nContent=" + nContent + ", nDate=" + nDate
				+ ", nStatus=" + nStatus + ", nType=" + nType + ", nRef=" + nRef + ", userId=" + userId + ", userName="
				+ userName + ", modifyDate=" + modifyDate + ", selfNum=" + selfNum + ", nCount=" + nCount
				+ ", photoList=" + photoList + ", replyList=" + replyList + "]";
	}

	
	
	


}