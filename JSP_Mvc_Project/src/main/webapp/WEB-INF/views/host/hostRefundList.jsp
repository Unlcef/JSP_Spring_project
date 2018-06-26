<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@include file="../host/hostMain.jsp" %>
<html>
<script type="text/javascript">
function adminRefundConfirm(a,d,c){
	var b = confirm("환불승인 하시겠습니까?");
	if(b){
		var paystat="5";
		alert("환불승인 되었습니다.");
		window.location="hostRefundConfirm.ad?order_id="+a+"&paystat="+paystat+"&quantity="+d+"&product_id="+c;
	}else{
		alert("환불이 취소되었습니다.");
	}
}
</script>
<body>
<form name="list" action="orderPro.cu" onsubmit="return checkVali();" name="cartForm">
<input type="hidden" name="paystat" value="0">
<table align="center" style="width:95%" border="1">
<tr>
<th colspan="8">
  <caption style="background-color: rgba(0,0,0,0.1)"><h1>환불요청목록 ( 갯수 : ${listcnt})</h1></caption>
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
			<c:if test="${dto.paystat==4}">
				환불 승인 대기중
				<input type="button" onclick="adminRefundConfirm(${dto.order_id}, ${dto.quantity}, ${dto.product_id});" value="환불승인">
			</c:if>
		</th>
	<th>${dto.reg_date}</th>

  </tr>
  </c:forEach>
      <tr>
      <th colspan="8">총 금액 : <fmt:formatNumber value="${total}" pattern="#,###" /></th>
            </tr>
      </tbody>
          <tr align="center">
			<th align="center" colspan="8">
					<c:if test="${listcnt > 0}">
						<!-- [◀◀] : 처음 / 이전블록 [◀]-->
						<c:if test="${startPage > pageBlock}">
							<a href="hostRefundList.ad">[처음으로]</a>
							<a href="hostRefundList.ad?pageNum=${startPage - pageBlock}">[이전]</a>
						</c:if>
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
							<c:if test="${i == currentPage}">
								<span><b>[${i}]</b></span>
							</c:if>
							<c:if test="${i != currentPage}">
								<a href="hostRefundList.ad?pageNum=${i}">[${i}]</a>
							</c:if>
						</c:forEach>
						
						<!-- 다음블록[▶] / 끝[▶▶] -->
						<c:if test="${pageCount > endPage }">
							<a href="hostRefundList.ad?pageNum=${startPage + pageBlock}">[다음]</a>
							<a href="hostRefundList.ad?pageNum=${pageCount}">[끝]</a>
						</c:if>
					</c:if>
				</th>	
			</tr>
</table>

</form>
</body>
</html>