package com.soda.lesson.model.service;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.soda.lesson.model.dao.LessonDao;
import com.soda.lesson.model.vo.Attachment;
import com.soda.lesson.model.vo.Lesson;
import com.soda.lesson.model.vo.PageInfo;

import static com.common.JDBCTemplate.*;


public class LessonService {
	private LessonDao lessonDao = new LessonDao();
	
	/* 페이징 : 페이지와 게시글리스트를 리턴*/
	public Map<String, Object> selectList(int page) {
		Connection conn = getConnection();
		
		// 1. 조회할 게시글 총 개수 구하기 
		int listCount = lessonDao.getListCount(conn);
		//System.out.println(listCount);
		
		// 2. PageInfo 객체 만들기 (목록 5개씩, 한 페이지당 9개 게시글)
		PageInfo pi = new PageInfo(page, listCount, 5, 9);
		
		// 3. 페이징 처리 된 게시글 목록 조회
		List<Lesson> lessonList = lessonDao.selectList(conn, pi);
		
		Map<String, Object> returnMap = new HashMap<>();
		
		//System.out.println(pi); 
		//System.out.println(lessonList);
		
		
		returnMap.put("pi", pi);
		returnMap.put("lessonList", lessonList);
		
		
		return returnMap;
	}

	// 조회수 증가
	public int increaseCount(int nNum) {
		Connection conn = getConnection();
		
		int result = lessonDao.increaseCount(conn, nNum);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	// 클래스  상세페이지 조회
	public Lesson selectLesson(int nNum) {
		Connection conn = getConnection();
		
		// 글
		Lesson lesson = lessonDao.selectLesson(conn, nNum);
		
		// 사진
		List<Attachment> photoList = lessonDao.selectPhotoList(conn, nNum);
		lesson.setPhotoList(photoList);
		
		/* 문의 사항 추가 필요 */
		
		close(conn);
		
		return lesson;
	}

	// 클래스 글 추가
	public int insertLesson(Lesson lesson) {
		Connection conn = getConnection();
		
		// 글 : notice, class
		int lessonResult = lessonDao.insertLesson(conn, lesson);
		int noticeResult = lessonDao.insertNotice(conn, lesson);
		
		int attachmentResult = 0;
		
		for(Attachment photo : lesson.getPhotoList()) { // 첨부파일은 최소 1개에서 최대 3개가 삽입 되기 때문에 반복문 사용헤서 
			// 사진
			attachmentResult += lessonDao.insertAttachment(conn, photo);		// 데이터를 쌓음
		}
		
		int result = 0; // 3가지 로직이 모두 잘 수행 되었음을 나타내는 변수
		if(lessonResult > 0 && noticeResult > 0 && attachmentResult == lesson.getPhotoList().size()) {
			commit(conn);
			result = 1;
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
}
