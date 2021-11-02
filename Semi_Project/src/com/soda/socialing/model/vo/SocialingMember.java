package com.soda.socialing.model.vo;

public class SocialingMember {
	private int noticeNum;			// 게시판 번호 (pfk - Socialing 테이블 noticeNum 참조 값)
	private String userId;			// 참여자 (pfk - Member 테이블 user_id 참조 값)
	private String status;			// 참여 완료 여부 (Y/N)
	private String smember;			// 참여자명 (Member 테이블 join 결과 값)
	private String profile;			// 참여자 프로필사진 (Profile 테이블 join 결과 값)
	private String introduction;	// 참여자 자기소개 (Profile 테이블 join 결과 값)
	
	public SocialingMember() {}

	public SocialingMember(int noticeNum, String userId, String status, String smember, String profile,
			String introduction) {
		super();
		this.noticeNum = noticeNum;
		this.userId = userId;
		this.status = status;
		this.smember = smember;
		this.profile = profile;
		this.introduction = introduction;
	}

	public int getNoticeNum() {
		return noticeNum;
	}

	public void setNoticeNum(int noticeNum) {
		this.noticeNum = noticeNum;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSmember() {
		return smember;
	}

	public void setSmember(String smember) {
		this.smember = smember;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	@Override
	public String toString() {
		return "SocialingMember [noticeNum=" + noticeNum + ", userId=" + userId + ", status=" + status + ", smember="
				+ smember + ", profile=" + profile + ", introduction=" + introduction + "]";
	}

}