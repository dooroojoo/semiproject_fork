<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소셜링</title>

<!-- 외부 스타일 시트 -->
<link href="resources/css/main_style.css" rel="stylesheet">
<link href="resources/css/header_footer.css" rel="stylesheet">

<!-- 글꼴 (Noto Sans) -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<!-- Slide -->
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

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
    <div class="socialing body">
        <div class="body-inner">
            <div class="s-title">
                <p id="main-title">소셜링</p>
                <h3 id="sub-title">언제 어디서나 일상을 더 다채롭게</h3>
            </div>
            <hr>
            <article>
                <h3 id="soon-title">시작 임박 소셜링</h3>
                <div class="slide">
                    <div class="swiper mySwiper">
                        <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div id="thumbox">
                                <img src="resources/image/flower1.PNG"><br>
                                <img id="like2" src="resources/image/heart_empty.png">
                            </div>
                            <a href="#">
                                <div id="titlebox">
                                    <p id="s-thumtitle">할로윈 같이 즐겨요</p><br>
                                    <h5 id="s-thumsub">이태원역 6호선 10.31(일) 오후 6:00</h5>
                                    <a href=""><img id="profile2" src="resources/image/profile.png"></a>
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <div id="thumbox">
                                <img src="resources/image/flower1.PNG"><br>
                                <img id="like2" src="resources/image/heart_empty.png">
                            </div>
                            <a href="#">
                                <div id="titlebox">
                                    <p id="s-thumtitle">아침에 공원에서 산책하실 분!</p><br>
                                    <h5 id="s-thumsub">평촌 중앙공원 10.20(수) 오전 9:00</h5>
                                    <a href=""><img id="profile2" src="resources/image/profile.png"></a>
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <div id="thumbox">
                                <img src="resources/image/flower1.PNG"><br>
                                <img id="like2" src="resources/image/heart_empty.png">
                            </div>
                            <a href="#">
                                <div id="titlebox">
                                    <p id="s-thumtitle">이터널스 같이 보러가요</p><br>
                                    <h5 id="s-thumsub">CGV 용산아이파크몰 11.20(토) 오...</h5>
                                    <a href=""><img id="profile2" src="resources/image/profile.png"></a>
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <div id="thumbox">
                                <img src="resources/image/flower1.PNG"><br>
                                <img id="like2" src="resources/image/heart_empty.png">
                            </div>
                            <a href="#">
                                <div id="titlebox">
                                    <p id="s-thumtitle">할로윈 같이 즐겨요</p><br>
                                    <h5 id="s-thumsub">이태원역 6호선 10.31(일) 오후 6:00</h5>
                                    <a href=""><img id="profile2" src="resources/image/profile.png"></a>
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <div id="thumbox">
                                <img src="resources/image/flower1.PNG"><br>
                                <img id="like2" src="resources/image/heart_empty.png">
                            </div>
                            <a href="#">
                                <div id="titlebox">
                                    <p id="s-thumtitle">아침에 공원에서 산책하실 분!</p><br>
                                    <h5 id="s-thumsub">평촌 중앙공원 10.20(수) 오전 9:00</h5>
                                    <a href=""><img id="profile2" src="resources/image/profile.png"></a>
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <div id="thumbox">
                                <img src="resources/image/flower1.PNG"><br>
                                <img id="like2" src="resources/image/heart_empty.png">
                            </div>
                            <a href="#">
                                <div id="titlebox">
                                    <p id="s-thumtitle">이터널스 같이 보러가요</p><br>
                                    <h5 id="s-thumsub">CGV 용산아이파크몰 11.20(토) 오...</h5>
                                    <a href=""><img id="profile2" src="resources/image/profile.png"></a>
                                </div>
                            </a>
                        </div>
                        </div> 
                    </div> 
                </div>

                <div class="button1">
                    <!-- If we need navigation buttons -->
                    <div class="button-prev"><img width="30px" src="resources/image/prev_b.png"></div>
                </div>
                
                <div class="button2">
                    <div class="button-next"><img width="30px" src="resources/image/next_b.png"></div>
                </div>
            </article>
            <article>
                <h3 id="all-title">소셜링 전체 보기</h3>
                <div id="filterbox">
                    <form>
                        <div id="search">
                            <img id="searchIcon" src="resources/image/search.png">
                            <input type="text" name="keyword" size="31" maxlength="20" placeholder="검색할 키워드를 입력해주세요"><br><br>
                        </div>
                        <label id="flabel">지역</label>
                        <select name="local">
                            <option value="seoul">서울</option>
                            <option value="gyeonggi">경기</option>
                            <option value="incheon">인천</option>
                            <option value="gangwon">강원</option>
                        </select>
                        <select name="local-details">
                            <option value="">관악구</option>
                            <option value="">동작구</option>
                            <option value="">서초구</option>
                            <option value="">강남구</option>
                        </select><br><br>
                        <label id="flabel">날짜</label>
                        <input type="date" name="dateIn"><br><br>
                        <label id="flabel">온오프라인</label>
                        <input type="radio" id="offline" name="onoff" value="offline" checked>
                        <label for="offline">오프라인</label>&nbsp;
                        <input type="radio" id="online" name="onoff" value="online">
                        <label for="online">온라인</label>
                        <input type="reset" value="조건 초기화" id="s-reset">
                        <input type="submit" value="선택항목 검색" id="s-submit">
                    </form>
                </div>
                <div id="lineupbox">
                    <select name="lineup">
                        <option value="">최신순</option>
                        <option value="">인기순</option>
                    </select>
                </div>
                <div class="s-container2">
                    <div id="s-list2">
                        <div id="thumbox">
                            <a href="socialing_detail.html"><img id="s-thumbnail" src="resources/image/thumbnail.png"></a><br>
                            <img id="like" src="resources/image/heart_empty.png">
                            <!-- 클릭 시 꽉찬 하트 아이콘으로 변경 + 찜한 소셜링에 추가 -->
                        </div>
                        <a href="#">
                            <div id="titlebox">
                                <p id="s-thumtitle">한강에서 치맥 하실분~!</p><br>
                                <h5 id="s-thumsub">여의나루역 5호선 10.30(토) 오후 2:00</h5>
                                <a href=""><img id="profile" src="resources/image/profile.png"></a>
                            </div>
                        </a>
                    </div>
                    <div id="s-list2">
                        <div id="thumbox">
                            <img id="s-thumbnail" src="resources/image/flower1.PNG"><br>
                            <img id="like" src="resources/image/heart_empty.png">
                        </div>
                        <a href="#">
                            <div id="titlebox">
                                <p id="s-thumtitle">아침에 공원에서 산책하실 분!</p><br>
                                <h5 id="s-thumsub">평촌 중앙공원 10.20(수) 오전 9:00</h5>
                                <a href=""><img id="profile" src="resources/image/profile.png"></a>
                            </div>
                        </a>
                    </div>
                    <div id="s-list2">
                        <div id="thumbox">
                            <img id="s-thumbnail" src="resources/image/flower1.PNG"><br>
                            <img id="like" src="resources/image/heart_empty.png">
                        </div>
                        <a href="#">
                            <div id="titlebox">
                                <p id="s-thumtitle">이터널스 같이 보러가요</p><br>
                                <h5 id="s-thumsub">CGV 용산아이파크몰 11.20(토) 오후 3:00</h5>
                                <a href=""><img id="profile" src="resources/image/profile.png"></a>
                            </div>
                        </a>
                    </div>
                    <div id="s-list2">
                        <div id="thumbox">
                            <img id="s-thumbnail" src="resources/image/flower1.PNG"><br>
                            <img id="like" src="resources/image/heart_empty.png">
                        </div>
                        <a href="#">
                            <div id="titlebox">
                                <p id="s-thumtitle">할로윈 같이 즐겨요</p><br>
                                <h5 id="s-thumsub">이태원역 6호선 10.31(일) 오후 6:00</h5>
                                <a href=""><img id="profile" src="resources/image/profile.png"></a>
                            </div>
                        </a>
                    </div>
                    <div id="s-list2">
                        <div id="thumbox">
                            <img id="s-thumbnail" src="resources/image/flower1.PNG"><br>
                            <img id="like" src="resources/image/heart_empty.png">
                        </div>
                        <a href="#">
                            <div id="titlebox">
                                <p id="s-thumtitle">아침에 공원에서 산책하실 분!</p><br>
                                <h5 id="s-thumsub">평촌 중앙공원 10.20(수) 오전 9:00</h5>
                                <a href=""><img id="profile" src="resources/image/profile.png"></a>
                            </div>
                        </a>
                    </div>
                    <div id="s-list2">
                        <div id="thumbox">
                            <img id="s-thumbnail" src="resources/image/flower1.PNG"><br>
                            <img id="like" src="resources/image/heart_empty.png">
                        </div>
                        <a href="#">
                            <div id="titlebox">
                                <p id="s-thumtitle">이터널스 같이 보러가요</p><br>
                                <h5 id="s-thumsub">CGV 용산아이파크몰 11.20(토) 오후 3:00</h5>
                                <a href=""><img id="profile" src="resources/image/profile.png"></a>
                            </div>
                        </a>
                    </div>
                    <div id="s-list2">
                        <div id="thumbox">
                            <img id="s-thumbnail" src="resources/image/flower1.PNG"><br>
                            <img id="like" src="resources/image/heart_empty.png">
                        </div>
                        <a href="#">
                            <div id="titlebox">
                                <p id="s-thumtitle">할로윈 같이 즐겨요</p><br>
                                <h5 id="s-thumsub">이태원역 6호선 10.31(일) 오후 6:00</h5>
                                <a href=""><img id="profile" src="resources/image/profile.png"></a>
                            </div>
                        </a>
                    </div>
                    <div id="s-list2">
                        <div id="thumbox">
                            <img id="s-thumbnail" src="resources/image/flower1.PNG"><br>
                            <img id="like" src="resources/image/heart_empty.png">
                        </div>
                        <a href="#">
                            <div id="titlebox">
                                <p id="s-thumtitle">아침에 공원에서 산책하실 분!</p><br>
                                <h5 id="s-thumsub">평촌 중앙공원 10.20(수) 오전 9:00</h5>
                                <a href=""><img id="profile" src="resources/image/profile.png"></a>
                            </div>
                        </a>
                    </div>
                    <div id="s-list2">
                        <div id="thumbox">
                            <img id="s-thumbnail" src="resources/image/flower1.PNG"><br>
                            <img id="like" src="resources/image/heart_empty.png">
                        </div>
                        <a href="#">
                            <div id="titlebox">
                                <p id="s-thumtitle">이터널스 같이 보러가요</p><br>
                                <h5 id="s-thumsub">CGV 용산아이파크몰 11.20(토) 오후 3:00</h5>
                                <a href=""><img id="profile" src="resources/image/profile.png"></a>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="pagebox">
                    <a class="paging" href="#"><img width="20px" src="resources/image/circle_sky.png"></a>
                    <a class="paging" href="#"><img width="20px" src="resources/image/circle_beige.png"></a>
                    <a class="paging" href="#"><img width="20px" src="resources/image/circle_beige.png"></a>
                    <a class="paging" href="#"><img width="20px" src="resources/image/circle_beige.png"></a>
                    <a class="paging" href="#"><img width="20px" src="resources/image/circle_beige.png"></a>
                </div>
                
                <div id="writebox">
                    <button id="writing" onclick="location.href='socialing_writing.html'">글 쓰기</button>
                </div>
            </article>
        </div>
    </div>
    
    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
        
    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".mySwiper", {
            slidesPerView: 3,
            spaceBetween: 30,

            loop: true,
            
            // Navigation arrows
            navigation: {
                nextEl: '.button-next',
                prevEl: '.button-prev',
            },
        });
    </script>

    <script>
        let like = document.querySelectorAll('#like');
        let like2 = document.querySelectorAll('#like2');
        
        for(let i = 0; i < like.length; i++) {
            like[i].onclick = function() {
                if(like[i].src.indexOf('_empty') == -1) {
                    like[i].src = like[i].src.replace('.png', '_empty.png');
                } else {
                    like[i].src = like[i].src.replace('_empty.png', '.png');
                }
            }

            like2[i].onclick = function() {
                if(like2[i].src.indexOf('_empty') == -1) {
                    like2[i].src = like2[i].src.replace('.png', '_empty.png');
                } else {
                    like2[i].src = like2[i].src.replace('_empty.png', '.png');
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