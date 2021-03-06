<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>매거진 상세 페이지</title>




<!-- 외부 스타일 시트 -->
<link
	href="<%= request.getContextPath() %>/resources/css/magazine/magazineDetail.css"
	rel="stylesheet">

<!-- favicon (Real Favicon Generator)-->
<link rel="icon" type="image/x-icon"
	href="resources/image/khfavicon.ico">

<!-- 글꼴 -->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap"
	rel="stylesheet">
<!--font-family: 'Noto Sans KR', sans-serif;-->

<!-- JQuery-->
<script src="../js/jquery-3.6.0.min.js"></script>

</head>




<!--header-->
<%@ include file="/WEB-INF/views/common/header.jsp"%>


<!--body-->
<div class="body-super">
	<div class="body-inner-blue">
		<div class="buttons">
			<div class="back">
				<button>
					<a href="${ contextPath }/magazine/main">back</a>
				</button>
			</div>
			<div class="admin">
				<c:if
					test="${ loginUser.userId.contains('admin') || loginUser.userId == magazine.userId }">
					<button onclick="deleteDetail();">삭제</button>
					<button onclick="updateDetail();">수정</button>
				</c:if>
				
				<c:if test="${ loginUser.userId.contains('admin') || !empty loginUser}">
					<button type="button" class="report-button"
						onclick="openPopup('${ contextPath }/reportForm', 'reportForm', 600, 500)">신고</button>
				</c:if>
			</div>

		</div>
		<div class="ntype">
			<p>[${magazine.nRef }]
			<p>
		</div>

		<div class="title">
			<p>${magazine.nTitle }</p>
		</div>

		<div class="write">
			<div class="content-inner">
				<div class="myinfo">
					<div class="myinfo1">
						   <div class="profile">
                        <c:choose>
                         
                         <c:when test="${not empty profile.profileFile.get(0).changeName}">
                            <img src="${ contextPath }${ profile.profileFile.get(0).route}${profile.profileFile.get(0).changeName}">
                          </c:when>
                          <c:otherwise>
                           <img src="${ contextPath }/resources/images/yewon/profile.png">
                          </c:otherwise>
                          </c:choose>
                        </div>
						
						
						
						<div class="id">



							<c:choose>
								<c:when test="${ loginUser.userId == magazine.userId}">
									<a href="${contextPath}/myfeed">${ magazine.userId }</a>

								</c:when>
								<c:otherwise>
									<a href="${contextPath}/others/feed?userId=${magazine.userId}">${ magazine.userId }</a>
								</c:otherwise>
							</c:choose>


						</div>
						<div class="date">
							<p>
								<fmt:formatDate value="${ magazine.nDate }" type="both"
									pattern="yyy.MM.dd HH:mm" />
							</p>
						</div>
					</div>



					<!-- <div class="myinfo2">
						<div class="follow">
							<button>팔로워 추가</button>
						</div>
					</div> -->
				</div>

				<hr class="hr1">

				<h4>
					<span class="title_span">&nbsp;</span> 사진
				</h4>

				<c:forEach items="${ magazine.photoList}" var="photo">
					<div class="photoList">
						<img src="${ contextPath }${photo.route}${photo.changeName}">
						<p>
					</div>


				</c:forEach>
				<h4>
					<span class="title_span">&nbsp;</span> 내용
				</h4>
				<pre class="content" name="content">${ magazine.nContent }</pre>
			</div>
		</div>
	</div>




	<div class="comment">
		<div class="comment-title">
			<p>댓글</p>
		</div>

		<div class="comment-each">
			<div class="com-front">
				<div class="reply_list">
					<c:forEach items="${ magazine.replyList }" var="reply">
						<div class="reply-with">
							<ul class="reply_ul">
								<a href class="rwriter">${ reply.rWriter }</a>
								<li class="rcontent">${ reply.rContent }</li>
								<li class="rdate"><fmt:formatDate value="${ reply.rDate }"
										type="both" pattern="yyyy.MM.dd HH:mm" /></li>

							</ul>
							<div class="delete">
								<form name="replyForm" method="post">
									<input type="hidden" name="reNum" id='reNum'
										value="${reply.rNum }"> <input type="hidden"
										value="${magazine.nNum }" name="nNum">
										
								<c:if test="${ loginUser.userId.contains('admin') || loginUser.userId eq reply.rWriter}">
									<button id="btn" onclick="deleteReply()">삭제</button>
								</c:if>
										
								</form>
							</div>
						</div>
					</c:forEach>



				</div>

			</div>








		</div>
		<form method="post" action="${contextPath}/magazine/insertReply">
			<input type="hidden" value="${magazine.nNum }" name="nNum">
			<div class="reply_write">
				<input type="text" name="rContent" class="reply_content">
				<button type="submit">댓글등록</button>
			</div>
		</form>

		<!-- <div class="comment-each">
			<div class="com-front">
				<div class="comment-pro">
					<img src="../image/pro2.png">
				</div>
				<div class="comment-info">
					<a href="#">Sodaisthebest</a>
					<p class="com-con">역시 제니님ㅋ 최고예요!</p>
					<p class="com-date">2021.10.30</p>
				</div>
			</div>
			<div class="admin com-button">
				<button>삭제</button>
				<button>수정</button>
				<button type="button" class="report-button"
					onclick="openPopup('Report_popup.html', 'checking', 450, 650)">신고</button>
			</div>
		</div>
		<div>
			<hr class="hr2">
		</div> -->



		<%-- 	<div class="admin com-button">
				<button>삭제</button>
				<button>수정</button>
				<c:if
					test="${ !empty loginUser && loginUser.userId == 'admin@gmail.com'}">
					<button type="button" class="report-button"
						onclick="openPopup('Report_popup.html', 'checking', 450, 650)">신고</button>
				</c:if>
			</div> --%>






	</div>
</div>



<!--footer-->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>

</div>



<!--게시물 신고 팝업-->
<script>
      function openPopup(url, title, width, height) {
         let left = (document.body.clientWidth / 2) - (width / 2);
         left += window.screenLeft;
         let top = (screen.availHeight / 2) - (height / 2);

         let options = "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top;

         window.open(url, title, options);
      }

   </script>


<!--  게시물 삭제 수정 -->

<form name="detailForm" method="post">
	<input type="hidden" name="nNum" id='nNum' value="${magazine.nNum }">
</form>


<script>
		function updateDetail(){
			document.forms.detailForm.action="${contextPath}/magazine/updateView";
			document.forms.detailForm.submit();
		}
	
		function deleteDetail(){
			if(confirm("이 게시글을 삭제하시겠습니까?")){
				document.forms.detailForm.action="${contextPath}/magazine/delete";
				document.forms.detailForm.submit();
			}
		}
	</script>

<!--  댓글 삭제 수정 -->




<script>
	
	
		function deleteReply(){
			if(confirm("이 게시글을 삭제하시겠습니까?")){
				document.forms.replyForm.action="${contextPath}/reply/delete";
				document.forms.replyForm.submit();
			}
		}
	</script>


<script type="text/javascript">
function openPopup(url, title, width, height) {
		            let left = (document.body.clientWidth/2)-(width/2);
		            left += window.screenLeft;
		            let top = (screen.availHeight/2)-(height/2);
		                
		            let options = "width="+width+",height="+height+",left="+left+",top="+top;
		                
		            window.open(url, title, options);
		        }
</script>





<!-- <script>
      /* 댓글달기 버튼 클릭 시 Reply 테이블에 insert 기능 수행 후 
      비동기적으로 새로 갱신된 댓글 목록을 Reply 테이블에서 select해서 화면에 적용시키는 기능 */
      function addReply(nNum) {
         $.ajax({
            url : "${ contextPath }/magazine/insertReply",
            type : "post",
            dataType : "json",
            data : { nNum : nNum, rContent : $(".reply_content").val() },
            success : function(data) {
               console.log(data);
               
               var html = '';
               
               for(var i in data) {         // index를 뽑아가며 data 완성시키기
                  html += '<ul class="reply_ul"><a href="#" class="rwriter">'
                       + data[i].rWriter + '</a><li class="rcontent">'
                       + data[i].rContent + '</li><li class="rdate">'
                       + data[i].rDate + '</li></ul>'
                       ;
               }
               
               /* 갱신된 replyList를 테이블에 다시 적용 */
               $(".reply_list").html(html);      // 뽑아준 리스트를 해당 div에 다시 적용
               /* 댓글 작성 부분 리셋 */
               $(".reply_content").val("");
            },
            error : function(e) {
               console.log(e);
            }
         });
      };
   </script> -->


</body>

</html>