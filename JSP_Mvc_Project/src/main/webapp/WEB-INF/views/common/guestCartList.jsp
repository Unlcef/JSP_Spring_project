<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
<html>
<script type="text/javascript">
function allChk(obj){
    var chkObj = document.getElementsByName("check");
    var rowCnt = chkObj.length - 1;
    var check = obj.checked;
    if (check) {﻿
        for (var i=0; i<=rowCnt; i++){
         if(chkObj[i].type == "checkbox")
             chkObj[i].checked = true; 
        }
    } else {
        for (var i=0; i<=rowCnt; i++) {
         if(chkObj[i].type == "checkbox"){
             chkObj[i].checked = false; 
         }
        }
    }
}
function checkVali(){
	var isProductChk = false;
    var arr_product = document.getElementsByName("check");
    for(var i=0;i<arr_product.length;i++){
        if(arr_product[i].checked == true) {
        	isProductChk = true;
            break;
        }
    }
    if(!isProductChk){
    	alert("삭제할 제품을 한개이상 체크해주세요.");
    	return false;
    }else{
    	var a = confirm("정말 삭제하시겠습니까?");
    	if(a){
    		return;
    	}else{
    		return false;
    	}
    }
	}
	
	function purchase(){
		var selectNum="";
		var isProductChk = false;
	    var arr_product = document.getElementsByName("check");
	    for(var i=0;i<arr_product.length;i++){
	        if(arr_product[i].checked == true) {
	        	if(selectNum==""){
		        	selectNum += arr_product[i].value;
		        }else{
		        	selectNum += "," + arr_product[i].value;
		        }
	        	isProductChk = true;
	        }
	        
	    }
    	window.location="purchaseForm.cu?cart_id="+selectNum;
	    if(!isProductChk){
	    	alert("구매할 제품을 한개이상 체크해주세요.");
	    	return false;
	    }
	}
</script>
<body>
<form name="list" action="deleteCart.cu" onsubmit="return checkVali();" name="cartForm">
<table align="center" style="width:80%" border="1">
  <caption style="background-color: rgba(0,0,0,0.1)"><h1>장바구니</h1></caption>
	<tr>
		<th><input type="checkbox" onclick="allChk(this);"/></th>
		<th>이미지</th>
		<th>제품명</th>
		<th>주문수량</th>
		<th width="10%">제품가격(개당)</th>
		<th width="5%">제품종류</th>
		<th width="10%">등록일</th>
	</tr>
  <tfoot>
    <tr align="center">
			<th align="center" colspan="7">
					<c:if test="${listcnt > 0}">
						<!-- [◀◀] : 처음 / 이전블록 [◀]-->
						<c:if test="${startPage > pageBlock}">
							<a href="guestCartList.cu">[처음으로]</a>
							<a href="guestCartList.cu?pageNum=${startPage - pageBlock}">[이전]</a>
						</c:if>
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
							<c:if test="${i == currentPage}">
								<span><b>[${i}]</b></span>
							</c:if>
							<c:if test="${i != currentPage}">
								<a href="guestCartList.cu?pageNum=${i}">[${i}]</a>
							</c:if>
						</c:forEach>
						
						<!-- 다음블록[▶] / 끝[▶▶] -->
						<c:if test="${pageCount > endPage }">
							<a href="guestCartList.cu?pageNum=${startPage + pageBlock}">[다음]</a>
							<a href="guestCartList.cu?pageNum=${pageCount}">[끝]</a>
						</c:if>
					</c:if>
				</th>	
			</tr>
  </tfoot>
  <tbody>
  <c:set var="total" value="0"/>
      <c:forEach var="dto" items="${dtos}">
  <tr width="1200" height="190">
	<c:set var="total" value="${total + (dto.quantity*dto.product_price)}"/>
	<th><input name="check" type="checkbox" value="${dto.cart_id}"></th>
    <th scope="row"><a href="productView.cu?product_id=${dto.product_id}&pageNum=${pageNum}"><img src="images/image/${dto.product_imgpath}" width="160" height="160" style="margin-right:10px;"></a></th>
    <td width="575" height="160"><h3>${dto.product_name}</h3></td>
    <th><h3>${dto.quantity}</h3></th>
    <th width="15%" height="160"><fmt:formatNumber value="${dto.product_price}" pattern="#,###" />원</th>
    <th>${dto.kind}</th>
	<th>${dto.reg_date}</th>
  </tr>
      </c:forEach>
      <tr>
      <th><input type="button" value="구매" onclick="purchase();"></th>
      <th><input type="submit" value="선택삭제" onclick=""></th>
      <th colspan="5">총 금액 : <fmt:formatNumber value="${total}" pattern="#,###" /></th>
            </tr>
      </tbody>

</table>
</form>
</body>
</html>