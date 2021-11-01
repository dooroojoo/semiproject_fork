<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소셜링_상세페이지</title>

<!-- 외부 스타일 시트 -->
<link href="resources/css/header_footer.css" rel="stylesheet">
<link href="resources/css/detail_style.css" rel="stylesheet">

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
    <div class="page body">
        <div class="body-inner">
            <div class="wrapper1">
                <p id="title">한강에서 치맥 하실분~!</p>
                <hr>
                <h3 id="subTitle">장소</h3><p id="subTitle2">여의나루역 5호선</p><br>
                <h3 id="subTitle">날짜</h3><p id="subTitle2">10.30(토) 오후 2시 0분</p>
            </div>
            <div class="wrapper2">
                <img src="resources/image/thumbnail.png">
            </div>
            <div class="wrapper3">
                <p id="content">
		                    날도 좋은데 한강에서 자전거 타고 같이 치맥 하실 분~~
		                    돗자리랑 블투스피커 가져갈 수 있어요!!
                </p>
            </div>
            <div class="wrapper4">
                <div class="profileBox">
                    <img id="p-image" src="resources/image/profile.png"><br>
                    <p id="p-name">홍길동</p><br>
                    <!-- if문으로 일반 회원 : 참여하기 버튼 / 작성자 : 참여확인 버튼 출력되게 -->
                    <!-- <button type="button" id="p-button" onclick="join()">소셜링 참여하기</button> -->
                    <button type="button" id="p-button2">소셜링 참여확인</button>
                </div>
            </div>
            <hr>
            <h3 id="subTitle3">함께하는 멤버</h3>
            <!-- 회원이 참여하기 버튼 누르면 비동기통신으로 멤버 목록 바로 갱신(시간 남으면) -->
            <div class="subWrap">
                <a href="#"> <!-- 참여자 피드로 이동 -->
                    <img id="s-image" src="resources/image/profile.png">
                    <div class="subWrap2">
                        <p id="s-name">홍길동</p>
                        <p id="s-intro">사람들 만나고 사귀는 걸 좋아해요!</p>
                    </div>
                </a>
            </div>
            <div class="subWrap">
                <a href="#">
                    <img id="s-image" src="resources/image/profile.png">
                    <div class="subWrap2">
                        <p id="s-name">유미</p>
                        <p id="s-intro">글쓰기가 취미이고 맛있는거 먹는 걸 좋아해요~</p>
                    </div>
                </a>
            </div>
            <div class="subWrap">
                <a href="#">
                    <img id="s-image" src="resources/image/profile.png">
                    <div class="subWrap2">
                        <p id="s-name">구웅</p>
                        <p id="s-intro">토끼 티셔츠를 좋아합니다</p>
                    </div>
                </a>
            </div>
            <div class="subWrap">
                <a href="#">
                    <img id="s-image" src="resources/image/profile.png">
                    <div class="subWrap2">
                        <p id="s-name">루비</p>
                        <p id="s-intro">패션에 관심 많아요! ootd 구경오세요&gt;&lt;</p>
                    </div>
                </a>
            </div>
            <h3 id="subTitle4">자세한 정보를 알려드릴게요</h3>
            <div class="subWrap3">
                <img id="icon" src="resources/image/user.png">
                <p id="detail">최소 2명 ~ 최대 4명</p>
            </div>
            <div class="subWrap3">
                <img id="icon" src="resources/image/pin.png">
                <p id="detail">여의나루역 5호선 (서울특별시 영등포구 여의동로 지하 343)</p>
            </div>
            <div class="subWrap3">
                <img id="icon" src="resources/image/time.png">
                <p id="detail">10.30(토) 오후 2시 0분</p>
            </div>
            <div class="buttons"> <!-- 삭제, 수정은 작성자/관리자만 표시 -->
                <button type="button" id="delete" onclick="deleteBoard()">삭제</button>
                <button type="button" id="update">수정</button>
                <button type="button" id="report" onclick="openPopup('report.html', 'report', 370, 500)">신고</button>
            </div>
        </div>
    </div>

    <div class="checkPop" style="display:none;">
        <h2 id="chk_title">참여 회원 체크</h2>
        <form name="checking" action="" method="post">
            <div class="checkArea">
                <!-- 체크 후 submit 하면 체크 유지되게 (checked) -->
                <input type="checkbox" id="person1" name="check" value="person1">
                <label for="person1">구웅</label><br>
                <input type="checkbox" id="person2" name="check" value="person2">
                <label for="person2">유미</label><br>
                <input type="checkbox" id="person3" name="check" value="person3">
                <label for="person3">루비</label><br>
            </div><br>
            <div class="btnArea">
                <button type="button" id="cancel">취소</button>
                <button type="button" id="sub" onclick="checkSub()">체크</button>
            </div>
        </form>
    </div>

    <script>
        function openPopup(url, title, width, height) {
            let left = (document.body.clientWidth/2)-(width/2);
            left += window.screenLeft;
            let top = (screen.availHeight/2)-(height/2);
                
            let options = "width="+width+",height="+height+",left="+left+",top="+top;
                
            window.open(url, title, options);
        }

        function join() {
            if(confirm('모임에 참여하시겠습니까?')) {
                // 참여회원 테이블에 id 추가
            }
        }

        function checkSub() {
            if(confirm('참석 처리 하시겠습니까?')) {
                // 참여 여부 'Y'로 변경
                document.forms.checking.submit();
            }
        }

        function deleteBoard() {
            if(confirm('이 게시글을 삭제하시겠습니까?')) {
                // 글 삭제 후 목록으로 이동
            }
        }

        $(document).ready(function() {
            $('#p-button2').click(function() {
                $('.checkPop').show();
            });

            $('#cancel').click(function() {
                $('.checkPop').hide();
            });
        });

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