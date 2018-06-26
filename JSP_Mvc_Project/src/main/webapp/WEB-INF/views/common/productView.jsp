<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 
<html>
<head>
<link type="text/css" rel="stylesheet" href="<%= request.getContextPath() %>/css/product.css">
<style type="text/css">
.btn_submit{
 background-image: url('<%= request.getContextPath() %>/images/buybtn.gif');
    background-position:  0px 0px;
    background-repeat: no-repeat;
    width: 172px;
    height: 45px;
    border: 0px;
 cursor:pointer;
 outline: 0;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="../script/mainjs.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	function addCart(){
	if(!document.product.productInfo2.value){
		alert("갯수를 선택해주세요.");
		return false;
	}else if(!document.product.productInfo.value){
		alert("사이즈를 선택해주세요.");
	}else if(document.product.productInfo2.value > ${dtos.product_stock}){
		alert("재고가 부족합니다.");
		return false;
	}else{
		var quantity = document.product.productInfo2.value;
		var size = document.product.productInfo.value;
		var mode = document.product.nowbuy.value;
		window.location="getCart.cu?product_id="+${dtos.product_id}+"&size="+size+"&quantity="+quantity+"&pageNum="+${pageNum}+"&nowbuy="+mode+1;
	}
	}
	function buy(){
		if(!document.product.productInfo2.value){
			alert("갯수를 선택해주세요.");
			return false;
		}else if(!document.product.productInfo.value){
			alert("사이즈를 선택해주세요.");
			return false;
		}else if(document.product.productInfo2.value > ${dtos.product_stock}){
			alert("재고가 부족합니다.");
			return false;
		}
		}
</script>
</head>
<body>
<div id="contents1">
	<div class="productPic">
		<img id="adad" width="400" height="350" src="images/image/${dtos.product_imgpath}">
		<center><button class="button2" class="zoom" id="zoombtn"><img src="<%= request.getContextPath() %>/images/zoom.gif"></button></center>
	</div>
	<div class="productInt">
		<h2 style="color:orange;">${dtos.product_name}</h2>
		<hr>
		<form name="product" id="productjoin" method="post" action="Immediate.cu" onsubmit="return buy();">
	<input type="hidden" name="nowbuy" value="0">
	<input type="hidden" name="pageNum" value="${pageNum}">
	<input type="hidden" name="userid" value="${sessionScope.memId}">
	<input type="hidden" name="product_name" value="${dtos.product_name}">
	<input type="hidden" name="product_id" value="${dtos.product_id}">
	<input type="hidden" name="product_price" value="${dtos.product_price}">
	<input type="hidden" name="product_imgpath" value="${dtos.product_imgpath}">
		<table class="table2" align="center">
			<tr>
				<th>상품명</th>
				<td>${dtos.product_name}</td>
			</tr>
			<tr style="color:orange;">
				<th>판매가</th>
				<td>${dtos.product_price }</td>
			</tr>
			<tr>
			<c:if test="${dtos.kind=='shoes'}">
				<th>사이즈</th>
				<td><select name="productInfo" width="300">
						<option value=""> -필수- 사이즈를 선택하세요 </option>
						<option value="260"> 260 </option>
						<option value="265"> 265 </option>
						<option value="270"> 270 </option>
						<option value="275"> 275 </option>
						<option value="280"> 280 </option>
						</select>
						<select name="productInfo2" width="300">
				<option value=""> -필수- 구매갯수를 선택하세요 </option>
				<option value=""> -------------------------------- </option>
				<option value="1"> 1개 </option>
				<option value="2"> 2개 </option>
				<option value="3"> 3개 </option>
				<option value="4"> 4개 </option>
				<option value="5"> 5개 </option>
				<option value="6"> 6개 </option>
				<option value="7"> 7개 </option>
				<option value="8"> 8개 </option>
				<option value="9"> 9개 </option>
				<option value="10"> 10개 </option>
				</select>
				</td>
				</c:if>
				<c:if test="${dtos.kind=='ball'}">
				<th>갯수</th>
				<td><select name="productInfo2" width="300">
				<option value=""> -필수- 구매갯수를 선택하세요 </option>
				<option value=""> -------------------------------- </option>
				<option value="1"> 1개 </option>
				<option value="2"> 2개 </option>
				<option value="3"> 3개 </option>
				<option value="4"> 4개 </option>
				<option value="5"> 5개 </option>
				<option value="6"> 6개 </option>
				<option value="7"> 7개 </option>
				<option value="8"> 8개 </option>
				<option value="9"> 9개 </option>
				<option value="10"> 10개 </option>
				</select>
				</td>					
			</c:if>
			<c:if test="${dtos.kind=='cloth' || dtos.kind=='pants'}">
			<th>사이즈</th>
				<td><select name="productInfo" width="300">
						<option value=""> -필수- 옵션를 선택하세요 </option>
						<option value=""> -------------------------------- </option>
						<option value="M"> M(23~25) </option>
						<option value="L"> L(25~27) </option>
						<option value="XL"> XL(27~29) </option>
						</select>
			<select name="productInfo2" width="300">
				<option value=""> -필수- 구매갯수를 선택하세요 </option>
				<option value=""> -------------------------------- </option>
				<option value="1"> 1개 </option>
				<option value="2"> 2개 </option>
				<option value="3"> 3개 </option>
				<option value="4"> 4개 </option>
				<option value="5"> 5개 </option>
				<option value="6"> 6개 </option>
				<option value="7"> 7개 </option>
				<option value="8"> 8개 </option>
				<option value="9"> 9개 </option>
				<option value="10"> 10개 </option>
				</select>
						</td>
			</c:if>
			</tr>
		<tr>
	<th>
	남은 재고량 : ${dtos.product_stock}
	</th>
	<td>
	<c:if test="${sessionScope.memId!=null}">
	<c:if test="${dtos.product_stock > 0}">
	<input type="button" class=".btn_submit2" onclick="addCart();" value="" style="background-image: url('<%= request.getContextPath() %>/images/cart.PNG'); width:132px; height:50px;">
	<input type="submit" class="btn_submit" class="getbuybtn" id="getbuybtn-img" value="">
	</c:if>
	</c:if>
	<c:if test="${sessionScope.memId==null}">
		제품을 구매하기 위해선 로그인 해야합니다.
	</c:if>
	
	<c:if test="${dtos.product_stock==0}">
		남은 재고가 없습니다.
	</c:if>
	</td>
		</table>
		</form>
		<br><br><br>	<br><br><br><br><br><br>
	</div>
	
</div>

</form>
<div id="tradepic">
<center><img src="<%= request.getContextPath() %>/images/tradeimg2.png"></center>
</div>
<div id="warnpic">
<img src="<%= request.getContextPath() %>/images/warning.gif">
</div>

</body>
</html>