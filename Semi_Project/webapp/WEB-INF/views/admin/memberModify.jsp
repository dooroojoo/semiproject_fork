<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원등급변경</title>

  <!-- 외부 스타일 시트 -->
    <link rel="stylesheet" href="${ contextPath }/resources/css/common/memberModify.css">

    <!-- 글꼴 (Noto Sans) -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        
        
        <%
	if(request.getAttribute("result") != null) {
		// 신고 요청을 수행하고 돌아온 상황일 때 (처음 팝업창을 여는 상황은 result가 null)
		if(request.getAttribute("result").equals("success")) {
			// 신고 요청에 성공
%>
<script>
alert("회원 정보가 변경되었습니다.");
window.opener.location.reload();
	window.close();
</script>
<% 
		} else { // 신고 요청에 실패
%>
<script>
	alert("다시 확인해주세요.");
</script>
<%
		}
	}
%>
</head>

<body>
    <div class="page body">
        <h2 id="title">회원 정보 수정</h2>
        <form name="modifyForm" id="modify" action="${contextPath }/member/modifyview" method="post">

            <div class="line">

            <div class="label-input1">
            <label class="id">아이디  : </label>
            <input type="text" class="id-text" name="userId" value="${member.userId}"><br>
            </div>
			
            <div class="label-input2">
            <label class="name">이 름 : </label>
            <input type="text" class="birth-text" name="name" value="${member.userName }"><br>
            </div>
			
			
            <div class="label-input3">
            <label class="phone">핸드폰 : </label>
            <input type="text" class="phone-text" name="phone" value="${member.userPhone }">
            </div>
            
            <div class="label-input4">
            <label class="gender">성 별 : </label>
            <select id="gender" name="gender">
              <option value="F" <c:if test="${member.userGrade eq 'F'}">selected</c:if>>F</option>
               <option value="M" <c:if test="${member.userGrade eq'M'}">selected</c:if>>M</option>
              </select>
            </div>
            
             <div class="label-input5">
            <label class="grade">등 급 : </label>
            <select id="grade" name="grade">
            
              <option value="강사" <c:if test="${member.userGrade eq '강사'}">selected</c:if>>강사</option>
               <option value="관리자" <c:if test="${member.userGrade eq'관리자'}">selected</c:if>>관리자</option>
               <option value="회원" <c:if test="${member.userGrade eq'회원'}">selected</c:if>>회원</option>
            
            
              </select>
            </div>




 			<label class="account">활동여부 : </label>        
                <select id="account " name="account">
                
                   <option value="Y" <c:if test="${member.status=='Y'}">selected</c:if>>활동가능</option>
                    <option value="N" <c:if test="${member.status=='N'}">selected</c:if>>활동중지</option>
                    
                </select>
                
                <div class="subTitle">
                <p id="subTitle">${member.userName}님의 
                                <br>회원등급을 변경하시겠습니까?</p>
            </div>
            
    
            <div class="btnArea">
            <button type="button" id="cancel" onclick="window.close()">취소</button>
            
            <button id="sub" type="submit">확인</button>
            
            </div>

            </div>
        </form>
    </div>
    

    
</body>

</html>