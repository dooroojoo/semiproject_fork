<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.soda.member.model.vo.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// session 객체에 담긴 loginUser 정보를 변수에 담아두기
	Member loginUser = (Member)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${ contextPath }/resources/css/common/mainpage.css?1">
    <title>SODA 메인페이지</title>

	<%-- session에 담긴 message 있을 경우 alert 하는 script --%>
	<% if(session.getAttribute("message") != null) { %>
	<script>
	alert('<%= session.getAttribute("message") %>');
	</script>
	<% 
			session.removeAttribute("message");
		} 
	%>
	
    <!-- 글꼴 (Noto Sans) -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <!-- Slide -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    
	
</head>
<body>
<!-- 변수 선언 -->
<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application"/>

<!--header-->

<div class="header">
    <div class="head-inner">
        <div class="left-menu">
            <ul class="main-menu">
                <li><a class="main-logo" href="#"><b>SODA</b></a></li><br>
                <li><a class="main-menu2" href="${ contextPath }/socialing/main">SOCIALING</a></li>
                <li><a class="main-menu2" href="${ contextPath }/lesson/main">CLASS</a></li>
                <li><a class="main-menu2" href="${ contextPath }/magazine/main">MAGAZINE</a></li>
                <c:choose>
                <c:when test="${ !empty loginUser }">
                <li><a class="main-menu2" href="${ contextPath }/wishlist"><img class="icon" src="resources/images/장바구니.png"></img></a></li>
               	</c:when>
               	<c:when test="${ empty loginUser }">
               	<li><a class="main-menu2" href="${ contextPath }/login"><img class="icon2" src="resources/images/사람아이콘3.png"></a></li>
                </c:when>
                </c:choose>
                <c:choose>
                <c:when test="${ loginUser.userGrade == '회원' }">
                <li><a class="main-menu2" href="${ contextPath }/mypage/main"><img class="icon2" src="resources/images/사람아이콘3.png"></img></a></li>
                </c:when>
                <c:when test="${ loginUser.userGrade == '강사' }">
				<li><a class="main-menu2" href="${ contextPath }/mypage/tutormain"><img class="icon2" src="resources/images/사람아이콘3.png"></img></a></li>
                </c:when>
                <c:when test="${ loginUser.userGrade == '관리자' }">
				<li><a class="main-menu2" href="${ contextPath }/mypage/adminmain"><img class="icon2" src="resources/images/사람아이콘3.png"></img></a></li>
                </c:when>
                </c:choose>
            </ul>
            <h1 class="under-logo">
                <b><span style="color: lightgray">S</span>ocial <br>
                    <span style="color: lightgray">D</span>ining</b>
            </h1>
        </div>

        <div class="banner-slide1">
            <div class="banner">
                <div>
                    <img class="header-banner" src="resources/images/main/메인페이지그림1.png">
                </div>
                
            </div>
            <div>
                <h3 class="right-title">배우고 싶다면 망설이지 말고 원데이 클래스</h3>
            </div>
            <article>
                <div class="slide">
                    <div class="swiper mySwiper1" style="width: 580px; height: 300px; margin-left: 70px;">
                        <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div id="thumbox">
                                <ul>
                                    <li><img src="resources/images/main/climing.png" style="width:176px; height:200px;"><br></li>
                                </ul>
                                
                            </div>
                            <a href="#">
                                <div class="titlebox">
                                    <p id="s-thumtitle" style="margin-left: 40px;">클라이밍</p><br>
                                    <h5 id="s-thumsub" style="margin-left: 60px;">나는 나를 이긴다</h5>
                                    
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <div id="thumbox">
                                <ul>
                                    <li><img src="resources/images/main/surfing.png" style="width:176px; height:200px;"><br></li>
                                </ul>
  
                            </div>
                            <a href="#">
                                <div id="titlebox">
                                    <p id="s-thumtitle" style="margin-left: 40px;">서핑</p><br>
                                    <h5 id="s-thumsub" style="margin-left: 60px;">두려움을 넘어서</h5>
                                    
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <div id="thumbox">
                                <ul>
                                    <li><img src="resources/images/main/poledancing.png" style="width:176px; height:200px;"><br></li>
                                </ul>

                            </div>
                            <a href="#">
                                <div id="titlebox">
                                    <p id="s-thumtitle" style="margin-left: 40px;">폴댄스</p><br>
                                    <h5 id="s-thumsub" style="margin-left: 60px;">내 한계에 도전하다</h5>
                                    
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <div id="thumbox">
                                <ul>
                                    <li><img src="resources/images/main/barista.jfif" style="width:176px; height:200px;"><br></li>
                                </ul>
 
                            </div>
                            <a href="#">
                                <div id="titlebox">
                                    <p id="s-thumtitle" style="margin-left: 40px;">바리스타</p><br>
                                    <h5 id="s-thumsub" style="margin-left: 60px;">새로운 세상에 도전</h5>
                                    
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <div id="thumbox">
                                <ul>
                                    <li><img src="resources/images/main/cooking.jfif" style="width:176px; height:200px;"><br></li>
                                </ul>
     
                            </div>
                            <a href="#">
                                <div id="titlebox">
                                    <p id="s-thumtitle" style="margin-left: 40px;">쿠킹 클래스</p><br>
                                    <h5 id="s-thumsub" style="margin-left: 60px;">풍부한 요리 경험</h5>
                                    
                                </div>
                            </a>
                        </div>
                        <div class="swiper-slide">
                            <div id="thumbox">
                                <ul>
                                    <li><img src="resources/images/main/florist.jfif" style="width:176px; height:200px;"><br></li>
                                </ul>
  
                            </div>
                            <a href="#">
                                <div id="titlebox">
                                    <p id="s-thumtitle" style="margin-left: 40px;">플로리스트 클래스</p><br>
                                    <h5 id="s-thumsub" style="margin-left: 60px;">삶의 생기를 넣고</h5>
                                    
                                </div>
                            </a>
                        </div>
                        </div> 
                        
                    </div> 
                        
                </div>
                </article>

            <!-- Swiper JS -->
		    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
		        
		    <!-- Initialize Swiper -->
		    <script>
		        var swiper1 = new Swiper(".mySwiper1", {
		            slidesPerView: 3,
		            spaceBetween: 25,
		
		            loop: true,
		
		            autoplay:{
		                delay: 2000, 
		                disableOnInteraction: false,
		            },
		            
		            // Navigation arrows
		            navigation: {
		                nextEl: '.but1',
		                prevEl: '.but2',
		            },
		        });
		    </script>

        </div>

     </div>
</div>
<div class="body">
    <div class="body-inner">

        <div class="banner-slide1">
          
            <div>
            <h3 id="socialing-title" style="margin-left: 20px;">취향이 통하는 친구와 원데이 소셜링</h3>
            <h5><a class="view-all" href="${ contextPath }/socialing/main" style="margin-left:810px;">전체보기</a></h5>
        </div>

        <article>
                <div class="slide2">
                    <div class="swiper mySwiper2" style="height: 350px;">
                        <div class="swiper-wrapper">
                        <!-- 반복문으로 현재날짜(date) 기준 모임날짜(sdate) 2일 이내로 남은 소셜링 글 목록 출력 -->
                        <c:forEach var="s" items="${ socialingList }">
	                        <div class="swiper-slide">
	                            <div id="thumbox">
	                                <img id="s-thumbnail2" onclick="detailView(${ s.nNum })" 
	                                src="${ contextPath }${ s.photoList.get(0).route }${ s.photoList.get(0).changeName }"
	                                style="width: 256px; height: 200px;"><br>
	                            </div>
	                            <a href="${ contextPath }/socialing/detail?nNum=${ s.nNum }">
	                                <div id="titlebox">
	                                    <p id="s-thumtitle">${ s.nTitle }</p><br>
	                                    <!-- 오프라인일 경우 상세주소, 온라인일 경우 기본 주소 출력 (주소 글자 수 7자 이상일 경우 잘라내기) -->
		                                <c:choose>
											<c:when test='${ s.splace.contains("|") }'>
												<h5 id="s-thumsub">${ s.splace.split("\\|")[1] }
											</c:when>
											<c:otherwise>
												<h5 id="s-thumsub">${ s.splace }
											</c:otherwise>
										</c:choose>
		                                <fmt:formatDate value="${ s.sdate }" type="date" pattern="M.dd(E)"/>
		                                <fmt:parseDate value="${ s.stime }" var="stime2" pattern="HH:mm" scope="page"/>
										<fmt:formatDate value="${ stime2 }" type="time" pattern="a h:mm"/></h5>
	                                    <a href="#"></a>
	                                </div>
	                            </a>
	                        </div>
                        </c:forEach>
                        </div> 
                    </div>  
                </div>
                    
                    <div class="button3">
                        <!-- If we need navigation buttons -->
                        <div class="but3"><img width="30px" src="resources/images/main/prev_b.png"></div>
                    </div>
                    
                    <div class="button4">
                        <div class="but4"><img width="30px" src="resources/images/main/next_b.png"></div>
                    </div>
            </article>

            <!-- Swiper JS -->
		    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
		        
		    <!-- Initialize Swiper -->
		    <script>
		        var swiper2 = new Swiper(".mySwiper2", {
		            slidesPerView: 3,
		            spaceBetween: 30,
		
		            loop: true,
		            
		            // Navigation arrows
		            navigation: {
		                nextEl: '.but3',
		                prevEl: '.but4',
		            },
		        });
		    </script>
    
    

     </div>

     </div>
</div>
<div class="body">
    <div class="body-inner">

        <div class="banner-slide1">
          
            <div>
	            <h3 id="onedayclass-title" style="margin-left: 20px;">취향을 더 깊이있게 알아가는 원데이클래스</h3>
	            <h5><a class="view-all" href="${ contextPath }/socialing/main" style="margin-left:810px;">전체보기</a></h5>
	        </div>

        <article>
                <div class="slide2">
                    <div class="swiper mySwiper3" style="height: 330px;">
                        <div class="swiper-wrapper">
                        <c:forEach var="lesson" items="${ lessonList }">
	                        <div class="swiper-slide">
	                            <div id="thumbox">
	                                <img id="s-thumbnail2" onclick="detailView2(${lesson.nNum})" 
	                                src="${ contextPath }${ lesson.photoList.get(0).route}${ lesson.photoList.get(0).changeName }"
	                                style="width: 256px; height: 200px;"><br>
	                            </div>
	                            <a href="${ contextPath }/socialing/detail?nNum=${lesson.nNum}">
	                                <div id="titlebox">
	                                    <p id="s-thumtitle">${ lesson.nTitle }</p><br>
	                                    <!-- 오프라인일 경우 상세주소, 온라인일 경우 기본 주소 출력 (주소 글자 수 7자 이상일 경우 잘라내기) -->
		                                <c:choose>
											<c:when test='${ lesson.cLocation.contains("|") }'>
												<h5 id="s-thumsub">${ lesson.cLocation.split("\\|")[1] }
											</c:when>
											<c:otherwise>
												<h5 id="s-thumsub">${ lesson.cLocation }
											</c:otherwise>
										</c:choose>
	                                </div>
	                            </a>
	                        </div>
                        </c:forEach>
                        </div>
                    </div> 
                </div>
                <div class="button5">
                    <!-- If we need navigation buttons -->
                    <div class="but5"><img width="30px" src="resources/images/main/prev_b.png"></div>
                </div>
                
                <div class="button6">
                    <div class="but6"><img width="30px" src="resources/images/main/next_b.png"></div>
                </div>
            </article>
    
            </div>
                
    
    
		     <!-- Swiper JS -->
		    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
		        
		    <!-- Initialize Swiper -->
		    <script>
		        var swiper3 = new Swiper(".mySwiper3", {
		            slidesPerView: 3,
		            spaceBetween: 30,
		
		            loop: true,
		            
		            // Navigation arrows
		            navigation: {
		                nextEl: '.but5',
		                prevEl: '.but6',
		            },
		        });
		    </script>
    
    

     	</div>

     </div>
</div>

    
    <script>
    	const MAX_LENGTH = 7;
    	var place = document.getElementById('s-thumtitle');
    
	    $(document).ready(function() {
	    	if($('#s-thumtitle').length >= 7) {
	    		
	    	}
	    	
	        $('#s-thumtitle').click(function() {
	            $('.checkPop').show();
	        });
	
	        $('#cancel').click(function() {
	            $('.checkPop').hide();
	        });
	    });
    </script>  
    
    <!-- 로그인 여부에 따른 스크립트 -->
    <c:choose>
		<c:when test="${ !empty loginUser }">
			<script>
				function detailView(nNum){
					location.href = '${contextPath}/socialing/detail?nNum=' + nNum;
				}
			</script>
		</c:when>
		<c:otherwise>
			<script>
				function detailView(nNum){
					alert('로그인 후 이용 가능합니다.');
					location.href = '${contextPath}/login';
				}			
			</script>
		</c:otherwise>
	</c:choose>
	
	<!-- 클래스 상세 페이지 스크립트 -->	
	<c:choose>
		<c:when test="${ !empty loginUser }"> <!-- 로그인 했을 때 볼 수 있게 -->
			<script>
				function detailView2(nNum){
					location.href = '${contextPath}/lesson/detail?nNum=' + nNum;
				}
			</script>
		</c:when>
		<c:otherwise>	<!-- 로그인 안 했을 때 -->
			<script>
				function detailView(){
					alert('로그인 후 이용 가능합니다. 로그인 해주세요.');
					location.href='${ contextPath }/login';
				}			
			</script>
		</c:otherwise>
	</c:choose>
    
    <!-- 예제 종료 -->
    <!--footer-->
    <div class="footer" >
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
                <ul><a href="<%= request.getContextPath() %>/footer/content">소다소개</a></ul>
                <ul><a href="<%= request.getContextPath() %>/notice">공지사항 </a></ul>
                <ul><a href="#">강사신청</a></ul>
                <ul><a href="#">자주묻는질문</a></ul>
            </div>


        </div>
    </div>
    <div class="final">
        <div class="foot-final">
            <a href="#">이용약관 | </a>
            <a href="#">개인정보처리방침 | </a>
            <a href="#">사업자정보확인</a>
        </div>
    </div>

</div>


</body>

</html>