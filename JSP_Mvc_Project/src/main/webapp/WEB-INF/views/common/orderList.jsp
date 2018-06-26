<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
<html>
<script type="text/javascript">
function confirm(c){
	var a = confirm("수취확인 하시겠습니까? 수취확인 후에는 환불이 불가능합니다.");
	if(a){
		var paystat = "3";
		alert("수취확인 완료되었습니다.");
		window.location="Receiptconfirm.cu?order_id="+c+"&paystat="+paystat;
		
	}
}
function rere(d){
	var a = confirm("환불요청 하시겠습니까?");
	if(a){
		var paystat = "4";
		alert("환불요청이 완료되었습니다.");
		window.location="Receiptconfirm.cu?order_id="+d+"&paystat="+paystat;
	}
}
    if(!isProductChk){
    	alert("구매할 제품을 한개이상 체크해주세요.");
    	return false;
    }else{
    	var a = confirm("바로 결제하시겠습니까?");
    	if(a){
    		document.list.paystat.value = "1";
    		return;
    	}else{
    		return false;
    	}
    }
	
	function pay(b){
		var b = confirm("결제하시겠습니까?");
		if(b) {
			var paystat = document.list.paystat.value = "1";
			window.location="paySuccess.ad?order_id="+b;
			alert("결제가 완료되었습니다. 배송준비중입니다.");
		}else{
			document.list.paystat.value = "0";
		}
	}

</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<body>
<form name="list" action="orderPro.cu" onsubmit="return checkVali();" name="cartForm">
<input type="hidden" name="paystat" value="0">
<table align="center" style="width:80%" border="1">
  <caption style="background-color: rgba(0,0,0,0.1)"><h1>구매목록</h1></caption>
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
		<!-- 0: 결제 대기, 1 : 결제후 배송준비, 2: 배송완료, 3: 수취확인, 4:환불요청, 5: 환불처리완료  -->
			<c:if test="${dto.paystat==0}">
				결제 대기중
				<input type="button" onclick="pay(${dto.order_id});" value="결제하기">
			</c:if>
			<c:if test="${dto.paystat==1}">
				배송 준비중
			</c:if>
			<c:if test="${dto.paystat==2}">
				배송 완료
				<input type="button" onclick="rere(${dto.order_id});" value="환불신청">
				<input type="button" onclick="confirm(${dto.order_id});" value="수취확인">
			</c:if>
			<c:if test="${dto.paystat==3}">
				<span style="color:red">수취 확인된 제품입니다.</span>
			</c:if>
			<c:if test="${dto.paystat==4}">
				환불승인 대기
			</c:if>
			<c:if test="${dto.paystat==5}">
				<p style="color:red;">환불처리 완료된 상품</p>
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
							<a href="orderList.cu">[처음으로]</a>
							<a href="orderList.cu?pageNum=${startPage - pageBlock}">[이전]</a>
						</c:if>
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
							<c:if test="${i == currentPage}">
								<span><b>[${i}]</b></span>
							</c:if>
							<c:if test="${i != currentPage}">
								<a href="orderList.cu?pageNum=${i}">[${i}]</a>
							</c:if>
						</c:forEach>
						
						<!-- 다음블록[▶] / 끝[▶▶] -->
						<c:if test="${pageCount > endPage }">
							<a href="orderList.cu?pageNum=${startPage + pageBlock}">[다음]</a>
							<a href="orderList.cu?pageNum=${pageCount}">[끝]</a>
						</c:if>
					</c:if>
				</th>	
			</tr>
</table>

</form>
</body>
</html>