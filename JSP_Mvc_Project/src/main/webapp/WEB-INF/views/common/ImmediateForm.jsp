<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
<html>
<script type="text/javascript">
function openAddr(){
	  daum.postcode.load(function(){
	         new daum.Postcode({
	             oncomplete: function(data) {
	                    document.getElementsByName( "postnum" )[0].value = data.zonecode;
	                          document.getElementsByName( "addr1" )[0].value = data.roadAddress;
	             }
	         }).open();
	     });
	 }
function checkVali(){	
	var a = confirm("바로 결제하시겠습니까?");
	if(a) {
		document.list.paystat.value = "1";
		alert("결제가 완료되었습니다. 배송준비중입니다.");
	}else{
		document.list.paystat.value = "0";
	}
}
</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<body onload="autoCheck();">
<form name="list" action="ImmediatePro.cu" onsubmit="return checkVali();" name="cartForm">
<input type="hidden" name="paystat" value="0">
<input type="hidden" name="product_id" value="${dtos.product_id}">
<input type="hidden" name=product_name value="${dtos.product_name}">
<input type="hidden" name="product_detail" value="${detail}">
<input type="hidden" name="quantity" value="${quantity}">
<table align="center" style="width:80%" border="1">
  <caption style="background-color: rgba(0,0,0,0.1)"><h1>구매목록</h1></caption>
	<tr>
		<th>이미지</th>
		<th>제품명</th>
		<th>주문수량</th>
		<th width="10%">제품가격(개당)</th>
		<th width="5%">제품종류</th>
		<th width="10%">등록일</th>
	</tr>
  <tbody>
  <c:set var="total" value="0"/>
  <tr width="1200" height="190">
	<c:set var="total" value="${total + (dtos.quantity*dto.product_price)}"/>
    <th scope="row"><img src="images/image/${dtos.product_imgpath}" width="160" height="160" style="margin-right:10px;"></th>
    <td width="575" height="160"><h3>${dtos.product_name}</h3></td>
    <th><h3>${quantity}</h3></th>
    <th width="15%" height="160"><fmt:formatNumber value="${dtos.product_price}" pattern="#,###" />원</th>
    <th>${dtos.kind}</th>
	<th>${dtos.reg_date}</th>
  </tr>
      <tr>
      <th colspan="7">총 금액 : <fmt:formatNumber value="${total}" pattern="#,###" /></th>
            </tr>
      </tbody>
</table>
<h1 style="margin-left : 10%; color:rgba(0,0,0,0.5)">배송지/결제방법</h1>
<table border="1" style="margin:0 auto; width:80%;">
	<tr>
		<th>
			배송지
		</th>
		<th>
			배송지변경
		</th>
	</tr>
	<tr>
		<th>
		<large> 수취인:</large>
			<input type="text" name="receiver" value="${vo.user_name}" style="width:20%; height:30px;">
			우편번호:
			<input type="text" name="postnum" value="${vo.user_postnum}" style="width:20%; height:30px;" readonly="readonly">
			주소:<input type="text" name="addr1" value="${vo.user_address1}" style="width:20%; height:30px;" readonly="readonly">
			상세주소:<input type="text" name="addr2" value="${vo.user_address2}" style="width:20%; height:30px;">
		</th>
		<th>
			<input type="button" value="주소변경" onclick="openAddr();">
		</th>
	</tr>
	<tr>
		<th colspan="2">
		결제수단
		</th>
		</tr>
		<tr>
		<th colspan="2">
		<input type="radio" name="payment" value="nobankbook">무통장 입금
				<input type="radio" name="payment" value="card">카드 결제
				<input type="radio" name="payment" value="bankbook">실시간 계좌이체
				<input type="radio" name="payment" value="kakaopay" onclick="alert('준비중')">카카오페이
				
		</th>
	</tr>
	<tr>
		<th colspan="2">
			<input type="submit" value="결제하기">
			
			<input type="button" value="취소하기">
		</th>
	</tr>
</table>
</form>
</body>
</html>