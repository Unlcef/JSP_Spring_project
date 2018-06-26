<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
<link type="text/css" rel="stylesheet" href="${context}style.css">
<header>

		<div id="customermenu">
			<a href="main" alt=""><img src="${context}/images/mainlo.png"></a>
			<ul>
				<li><a href="guest_login" alt="">로그인</a></li>
				<li><a href="guest_register" alt="" >회원가입</a></li>
				<li><a href="myPageDisting" alt="" > 마이페이지 </a></li>
				<li><a  href="boardList.bo"> 고객센터</a></li>
				<li><a href="myPageDisting" alt="" > 장바구니</a></li>
			</ul>
		</div>

	<div id="headerwrap"><!-- 메인 롤링 배너 css : headerwrap~ headerwrap .banner ul li-->
		<div class="banner">
		<ul>
		<li><img src="${context}images/mainlogo.jpg" width="100%" height="500"></li>
		</ul>
			</div>
		</div>
			<div id="category">
		 <ul>
		 	<li><a href="basketballList" alt="" >농구</a></li>
		 	<li><a href="soccerList" alt="">축구</a></li>
		 	<li><a href="badmintonList" alt="">배드민턴</a></li>
		 	<li><a href="baseballList" alt="">야구</a></li>
		 </ul>
	</div>
		
	</header>