<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/adminsetting.jsp" %>
    <%@include file="../host/hostMain.jsp" %>
    <html>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script>
		google.charts.load('current', {packages:['corechart']});
	</script>

<body>
<h2><center>결산</center></h2>
<c:set var="total" value="${firstChart['total']}"/>
<c:set var="soccer" value="${firstChart['soccer']}"/>
<c:set var="basketball" value="${firstChart['basketball']}"/>
<c:set var="baseball" value="${firstChart['baseball']}"/>
<c:set var="badminton" value="${firstChart['badminton']}"/>
<div align="center">
	<div>총 매출액 : ${totalSale}</div>
	<div id="firstChart"></div>
</div>
<script type="text/javascript">
google.charts.setOnLoadCallback(drawChartFirst);

var firstChart_options = {
		title : '구매 수량',
		width : 600,
		height : 400,
		bar : {
			groupWidth : 'bottom'
		}
};
function drawChartFirst(){
	var data = google.visualization.arrayToDataTable([
		['Element', '품목별 구매량'],
		['축구',${soccer}],
		['농구',${basketball}],
		['야구',${baseball}],
		['배드민턴',${badminton}]
	]);
	var firstChart = new google.visualization.ColumnChart(document.getElementById('firstChart'));
	firstChart.draw(data, firstChart_options);
}
</script>
<form name="list" action="orderPro.cu" onsubmit="return checkVali();" name="cartForm">
<input type="hidden" name="paystat" value="0">
<table align="center" style="width:95%" border="1">
<tr>
<th colspan="8">
</th>
</tr>
	<tr>
		<th>이미지</th>
		<th>제품명</th>
		<th>배송지</th>
		<th width="5%">주문수량</th>
		<th width="10%">제품가격(개당)</th>
		<th>결제수단</th>
		<th width="8%">상품현황</th>
		<th width="10%">구매일</th>
	</tr>
  <tbody>
  <c:set var="total" value="0"/>
      <c:forEach var="dto" items="${dtos}">
      <c:set var="total" value="${total + (dto.quantity*dto.product_price)}"/>
  <tr width="1200" height="190">
    <th scope="row"><img src="images/image/${dto.product_imgpath}" width="160" height="160" style="margin-right:10px;"></th>
    <td width="275" height="160"><h3>${dto.product_name}</h3></td>
   <th>
${dto.user_postnum}|
${dto.user_address1}
${dto.user_address2}
수취인 : ${dto.user_name}
		</th>
    <th><h3>${dto.quantity}</h3></th>
   <th width="15%" height="160"><fmt:formatNumber value="${dto.product_price}" pattern="#,###" />원</th>
   <th><c:if test="${dto.payment=='nobankbook'}">
			무통장 입금
		</c:if>
		<c:if test="${dto.payment=='card'}">
			카드
		</c:if>
		<c:if test="${dto.payment=='bankbook'}">
			실시간 계좌이체
		</c:if>
		<c:if test="${dto.payment=='kakaopay'}">
			카카오페이
		</c:if></th>
		<th>
			<c:if test="${dto.paystat==3}">
				수취확인 완료 제품
			</c:if>
		</th>
	<th>${dto.reg_date}</th>

  </tr>
  </c:forEach>
</table>
</form>
</body>
</html>