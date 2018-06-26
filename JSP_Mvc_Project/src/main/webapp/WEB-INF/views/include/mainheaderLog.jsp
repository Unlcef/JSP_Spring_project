<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
<header>
		<div id="customermenu">
			<a href="<%= request.getContextPath() %>/main.cu" alt=""><img src="<%= request.getContextPath() %>/images/mainlo.png"></a>
			<ul>
				<li><span style="color:white">${memId}님 안녕하세요.</span></li>
				<li><a href="logout.cu" alt="" >로그아웃</a></li>
				<li><a href="myPage.cu?pageNum=0" alt="" > 마이페이지 </a></li>
				<li><a  href="boardList.bo"> 고객센터</a></li>
				<li><a href="guestCartList.cu" alt="" > 장바구니</a></li>
				<li><a href="orderList.cu" alt="" > 주문/배송조회</a></li>
			</ul>
		</div>

	<div id="headerwrap"><!-- 메인 롤링 배너 css : headerwrap~ headerwrap .banner ul li-->
		<div class="banner">
		<ul>
		<li><img src="<%= request.getContextPath() %>/images/mainlogo.jpg" width="100%" height="500"></li>
		</ul>
			</div>
		</div>
			<div id="category">
		 <ul>
		 	<li><a href="basketballList.cu" alt="" >농구</a></li>
		 	<li><a href="soccerList.cu" alt="">축구</a></li>
		 	<li><a href="badmintonList.cu" alt="">배드민턴</a></li>
		 	<li><a href="baseballList.cu" alt="">야구</a></li> </ul>
	</div>
		
	</header>