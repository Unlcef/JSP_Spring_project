<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@include file="../host/hostMain.jsp" %>
<html>
<script type="text/javascript">
function delivery2(a,b,c){
	alert("배송시작");
	window.location="deliveryStat.ad?order_id="+a+"&quantity="+b+"&product_id="+c;
}
</script>
<body>
<form name="list" action="orderPro.cu" onsubmit="return checkVali();" name="cartForm">
<input type="hidden" name="paystat" value="0">
<table align="center" style="width:95%" border="1">
<tr>
<th colspan="10">
  <caption style="background-color: rgba(0,0,0,0.1)"><h1>구매목록</h1></caption>
</th>
</tr>
	<tr>
		<th width="5%">주문번호</th>
		<th>이미지</th>
		<th>제품명</th>
		<th>배송지</th>
		<th width="5%">주문수량</th>
		<th width="10%">제품가격(개당)</th>
		<th>결제수단</th>
		<th width="8%">주문상태</th>
		<th width="10%">구매일</th>
	</tr>
  <tbody>
  <c:set var="total" value="0"/>
      <c:forEach var="dto" items="${dtos}">
      <c:set var="total" value="${total + (dto.quantity*dto.product_price)}"/>
  <tr width="1200" height="190" align="center">
  <th>${dto.order_id}</th>
    <th scope="row"><img src="images/image/${dto.product_imgpath}" width="160" height="160" style="margin-right:10px;"></th>
    <td width="275" height="160"><h3>${dto.product_name}</h3></td>
   <th>
우편번호 : <span style="color:red;">${dto.user_postnum}</span> <br><br> 
${dto.user_address1}<br>
${dto.user_address2}<br><br>
수취인 : <span style="color:blue;">${dto.user_name}</span>
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
				<!-- 0: 결제 대기, 1 : 결제후 배송준비, 2: 배송완료, 3: 수취확인, 4:환불요청, 5: 환불처리완료  -->
			<c:if test="${dto.paystat==0}">
				결제 대기중
			</c:if>
			<c:if test="${dto.paystat==1}">
				배송 준비중
				<input type="button" onclick="delivery2(${dto.order_id},${dto.quantity},${dto.product_id});" value="배송시작">
			</c:if>
			<c:if test="${dto.paystat==2}">
				배송 완료
			</c:if>
			<c:if test="${dto.paystat==3}">
				<p style="color:red;">수취확인 제품</p>
			</c:if>
			<c:if test="${dto.paystat==4}">
				환불 승인 대기중
			</c:if>
			<c:if test="${dto.paystat==5}">
				<span style="color:blue; font-style:oblique;">환불처리된 제품입니다.</span>
			</c:if>
		</th>
	<th><fmt:formatDate value="${dto.reg_date}" pattern="yy년 MM월 dd일 HH:MM"/></th>

  </tr>
  </c:forEach>
      <tr>
      <th colspan="10">총 금액 : <fmt:formatNumber value="${total}" pattern="#,###" /></th>
            </tr>
      </tbody>
          <tr align="center">
			<th align="center" colspan="10">
					<c:if test="${listcnt > 0}">
						<!-- [◀◀] : 처음 / 이전블록 [◀]-->
						<c:if test="${startPage > pageBlock}">
							<a href="adminOrderList.ad">[처음으로]</a>
							<a href="adminOrderList.ad?pageNum=${startPage - pageBlock}">[이전]</a>
						</c:if>
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
							<c:if test="${i == currentPage}">
								<span><b>[${i}]</b></span>
							</c:if>
							<c:if test="${i != currentPage}">
								<a href="adminOrderList.ad?pageNum=${i}">[${i}]</a>
							</c:if>
						</c:forEach>
						
						<!-- 다음블록[▶] / 끝[▶▶] -->
						<c:if test="${pageCount > endPage }">
							<a href="adminOrderList.ad?pageNum=${startPage + pageBlock}">[다음]</a>
							<a href="adminOrderList.ad?pageNum=${pageCount}">[끝]</a>
						</c:if>
					</c:if>
				</th>	
			</tr>
</table>

</form>
</body>
</html>