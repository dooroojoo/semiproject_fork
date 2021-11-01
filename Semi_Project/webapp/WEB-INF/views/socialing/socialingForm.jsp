<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소셜링_글 작성</title>

<!-- 외부 스타일 시트 -->
<link href="resources/css/header_footer.css" rel="stylesheet">
<link href="resources/css/writing_style.css" rel="stylesheet">

<!-- 글꼴 (Noto Sans) -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>
	<!--header-->
    <div class="header">
        <div class="head-inner">
            <div class="logo">
                <img src="resources/image/logo.png">
            </div>
            <div class="big-category">
                <div class="category1">
                    <a href="socialing_main.html">SOCIALING</a>
                    <a href="#">CLASS</a>
                    <a href="#">MAGAZINE</a>
                </div>
                <div class="category2">
                    <a href="#">CART</a>
                    <a href="#">MYPAGE</a>
                </div>
            </div>
        </div>
    </div>

    <!-- body -->
    <div class="writing body">
        <div class="body-inner">
            <div class="w-title">
                <a id="back" href="socialing_main.html">&lt; 소셜링</a>
                <p id="main-title">글 작성하기</p>
                <h3 id="sub-title">모든 입력폼은 필수 영역입니다.</h3>
            </div>
            <article id="wrapper">
                <form method="post">
                    <h1 id="w-main-title">어떤 활동을 하는 소셜링인가요?</h1>
                    <h4 id="w-sub-title">제목을 입력해 주세요 (최대 30자)</h4>
                    <input type="text" id="inputTitle" maxlength="30" placeholder="연희동 카페투어 함께 가요!">
                    <h3 id="w-sub-title2">설명 (선택)</h3>
                    <h4 id="w-sub-title3">썸네일 이미지를 첨부해주세요</h4>
                    <div class="image_area"></div>
                    <button type="button" id="fileBtn">file</button><br>
                    <input type="file" name="thumbnail" accept="image/gif,image/jpeg,image/png">
                    <textarea id="content" name="content" placeholder="함께 이야기하고 싶은 주제나 꼭 알려주고 싶은 내용을 입력해 주세요"></textarea>
                    <hr>
                    <h1 id="w-main-title2">언제 어디서 만나나요?</h1>
                    <h4 id="w-sub-title4">날짜를 선택하세요</h4>
                    <input type="date" name="dateIn">
                    <h4 id="w-sub-title5">시간을 선택하세요</h4>
                    <input type="time" name="timeIn">
                    <h4 id="w-sub-title5">장소를 입력하세요</h4>
                    <input type="radio" id="offline" name="place" value="off" checked>
                    <label for="offline">오프라인</label>
                    <input type="radio" id="online" name="place" value="on">
                    <label for="online">온라인</label><br>
                    <input type="text" id="inputPlace" class="postcodify_address postcodify_details" placeholder="여의나루역 5호선 한강공원 / Zoom">&nbsp;&nbsp;
                    <button type="button" class="search" id="postcodify_search_button">검색</button><br>
                    <h4 id="w-sub-title5">인원 설정 (최소 2명 이상)</h4>
                    <select id="min" name="min">
                        <option value="2">2명</option>
                        <option value="3">3명</option>
                        <option value="4">4명</option>
                        <option value="5">5명</option>
                        <option value="6">6명</option>
                        <option value="7">7명</option>
                        <option value="7">8명</option>
                    </select>
                    <p id="wave">~</p>
                    <select id="max" name="max">
                        <option value="2">2명</option>
                        <option value="3">3명</option>
                        <option value="4">4명</option>
                        <option value="5">5명</option>
                        <option value="6">6명</option>
                        <option value="7">7명</option>
                        <option value="7">8명</option>
                    </select><br>
                    <!-- max 인원이 min보다 적을 경우 경고 alert 출력 후 min과 같은 값으로 -->
                    <div class="center">
                        <button type="submit" id="w-submit">소셜링 등록</button>
                    </div>
                </form>
            </article>
        </div>
    </div>

    <!-- jQuery와 Postcodify를 로딩한다 -->
    <!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script> -->

    <!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
    <script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>

    <script>
        let fileBtn = document.querySelector("#fileBtn");

        const fileElements = document.querySelector("[type=file]");
        const imageArea = document.querySelector(".image_area");

        fileBtn.onclick = function() {
            fileElements.click();
        }

        fileElements.addEventListener('change', preview);

        function preview(){       
            if(this.files && this.files[0]) {
                let reader = new FileReader();
                reader.readAsDataURL(this.files[0]);
                reader.onload = function(){
                    imageArea.innerHTML = "<img src='" + reader.result + "'>";
                }
            }
        }
    </script>

    <!--footer-->
    <div class="footer">
        <div class="foot-inner">
            <div class="foot-logo foot-all">
                S O D A</div>
            <div class="information foot-all">
                <ul>주식회사 소셜 다이닝</ul>
                <ul>대표 : 홍길동 | 개인정보관리책임자 : 홍길동 | 전화 : 02-123-4567 | 이메일 : soda@gmail.com</ul>
                <ul>주소 : 서울 강남구 테헤란로 14길 6 남도빌딩 2층 | 사업자등록번호 : 000-00-00000</ul>
                    <ul> 통신판매 : 제 2021-서울강남-0000호</ul>
                        <ul>영업시간 : 월-금 오후 2시-7시</ul>
            </div>
            <div class="foot-category foot-all">
                <ul><a href="#">소다소개</a></ul>
                <ul><a href="#">공지사항 </a></ul>
                <ul><a href="#">강사신청</a></ul>
                <ul><a href="#">자주묻는질문</a></ul>
            </div>
        </div>
    </div>
    <div class="final">
        <div class="foot-final">
            <a href="terms.html">이용약관 | </a>
            <a href="personalInfo.html">개인정보처리방침 | </a>
            <a href="#">사업자정보확인</a>
        </div>
    </div>
</body>
</html>