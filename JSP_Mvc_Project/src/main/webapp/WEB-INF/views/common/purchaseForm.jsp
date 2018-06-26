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
	var isProductChk = false;
    var arr_product = document.getElementsByName("check");
    var arr_product2 = document.getElementsByName("check2");
    for(var i=0;i<arr_product.length;i++){
        if(arr_product[i].checked == true) {
        	isProductChk = true;
            break;
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
	}

</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<body onload="autoCheck();">
<form name="list" action="orderPro.cu" onsubmit="return checkVali();" name="cartForm">
<input type="hidden" name="paystat" value="0">
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
  <c:set var="product_name" value=""/>
      <c:forEach var="dto" items="${dtos}">
      <%-- 
      <c:set var="product_name" value="${product_name += dto.product_name}"/> --%>
  <tr width="1200" height="190">
	<c:set var="total" value="${total + (dto.quantity*dto.product_price)}"/>
	<input name="check" type="checkbox" value="${dto.cart_id}" checked="checked" style="display: none;">
	<input name="check2" type="checkbox" value="${dto.product_name}" checked="checked" style="display: none;">
    <th scope="row"><img src="images/image/${dto.product_imgpath}" width="160" height="160" style="margin-right:10px;"></th>
    <td width="575" height="160"><h3>${dto.product_name}</h3></td>
    <th><h3>${dto.quantity}</h3></th>
    <th width="15%" height="160"><fmt:formatNumber value="${dto.product_price}" pattern="#,###" />원</th>
    <th>${dto.kind}</th>
	<th>${dto.reg_date}</th>
  </tr>
      </c:forEach>
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
		<input type="radio" name="pay" value="nobankbook">무통장 입금
				<input type="radio" name="pay" value="card">카드 결제
				<input type="radio" name="pay" value="bankbook">실시간 계좌이체
				<input type="radio" name="pay" value="kakaopay" onclick="alert('준비중')">카카오페이
				
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