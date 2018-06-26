<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
 <div id="content">
  <div id="frameDiv"></div>
	<div class="search">
	<center>
		<input id="mysearch2" type="search" placeholder="search"><button type="submit" for="mysearch2">검색</button>
	</center>
	</div>
<!-- 	<div class="fistline_new"> 신규상품, 핫아이템 목록
		<ul>
			<li><a href="#"><img src="../images/onclick.gif" alt=""></a>
			<li><a href="#"><img src="../images/onclick2.gif" alt=""></a>
		</ul>
	</div> -->
	<div class="intro">
		<center><img src="${context}images/newpro.gif" alt=""></center> <!-- 신규상품 목록  -->
	</div>
	<div class="firstline_product"> <!-- 메인제품 목록  -->
		<ul>
		<c:forEach var="dto" items="${dtos}">
			<li><a href="productView?product_id=${dto.product_id}&pageNum=${pageNum}"><img src="${image}${dto.product_imgpath}" width="240" height="300"><center>${dto.product_name}</center><br><center>\ <fmt:formatNumber value="${dto.product_price}" pattern="#,###"/></center></a></li>
		</c:forEach>
		</ul>
	</div>
	<div class="intro2">
		<center><img src="${context}images/recom.gif" alt=""></center> <!-- 추천상품  -->
	</div>
	<div class="firstline_product"><!-- 메인제품 목록  -->
		<ul>
			<li><a href="${context}productlist/soccer_no3.html"><img src="${context}images/레뷸라 V1.PNG" width="240px" height="300px"><center>[미즈노] 레뷸라 V1 JAPAN(JPN/P1GA178003)<br>\ 339,000</center></a></li>
			<li><a href="${context}productlist/jordan_no2.html"><img src="${context}images/jordan2.jpg"width="240px" height="300px"><center>나이키 조던13 "Bred" / 414571-004	<br>\ 209,000</center></a></li>
			<li><a href="${context}productlist/socks_no1.html"	><img src="${context}images/socks.jpg" width="240px" height="300px"><center>나이키 하이퍼 엘리트 크루 농구양말 / SX4801-657<br>\ 14,800</center></a></li>
			<li><a href="${context}productlist/soccer_no4.html"><img src="${context}images/nike2.PNG" width="240px" height="300"><center>	[나이키] 마지스타 오브라 2 엘리트 FG (AH7305-080)<br>\ 269,000</center></a></li>
		</ul>
	</div>
</div>