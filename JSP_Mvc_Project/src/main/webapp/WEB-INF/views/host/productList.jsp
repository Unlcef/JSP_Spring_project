<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp" %>
<%@include file="../host/hostMain.jsp" %>
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

</script>
<form name="list" action="deletePro.ad" onsubmit="return checkVali();" name="deleteForm">
	<table style="width:95%" align="center" border="1">
		<tr>
		<td><input type="submit" value="재고삭제"></a></td>
			<th colspan="7" align="center" style="height:25px">
				재고량(총 재고 : ${listcnt}) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="productAdd.ad">재고추가</a> 
			</th>
		</tr>
		<tr>
			<th style="width:8%"><input type="checkbox" onclick="allChk(this);"/></th>
			<th style="width:15%">재고ID</th>
			<th style="width:20%">재고이름</th>
			<th style="width:10%">재고이미지</th>
			<th style="width:5%">재고종류</th>
			<th style="width:5%">재고종류2</th>
			<th style="width:5%">재고가격</th>
			<th style="width:5%">재고수량</th>
		</tr>
				<!-- 게시글이 있으면 -->
		<c:if test="${listcnt > 0}">
			<c:forEach var="dto" items="${dtos}"> <!-- 큰 바구니에서 작은 바구니를 꺼내서 아래서 출력, 건수만큼 반복-->
				<tr>
				<th>
					 <input name="check" type="checkbox" value="${dto.product_id}">
				</th>
					<td>
						${dto.product_id}
						<c:set var="number" value="${number-1}"/>
					</td>
						<td>
						<a href="productModifyForm.ad?product_id=${dto.product_id}&pageNum=${pageNum}" style="color:black">${dto.product_name}</a>
						</td>
					<td>
						<img src="images/image/${dto.product_imgpath}" width="300px" height="200px">
					</td>
					<td>
						${dto.product_category}
					</td>
					<td>
						${dto.kind}
					</td>
					<td>
						${dto.product_price}
					</td>
					<td>
						${dto.product_stock}
					</td>

				</tr>
					</c:forEach>
					</c:if>
					
		</table>
		<table style="width:1000px" align="center">
			<tr>
				<th align="center">
					<c:if test="${listcnt > 0}">
						<!-- [◀◀] : 처음 / 이전블록 [◀]-->
						<c:if test="${startPage > pageBlock}">
							<a href="productList.ad">[처음으로]</a>
							<a href="productList.ad?pageNum=${startPage - pageBlock}">[이전]</a>
						</c:if>
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
							<c:if test="${i == currentPage}">
								<span><b>[${i}]</b></span>
							</c:if>
							<c:if test="${i != currentPage}">
								<a href="productList.ad?pageNum=${i}">[${i}]</a>
							</c:if>
						</c:forEach>
						
						<!-- 다음블록[▶] / 끝[▶▶] -->
						<c:if test="${pageCount > endPage }">
							<a href="productList.ad?pageNum=${startPage + pageBlock}">[다음]</a>
							<a href="productList.ad?pageNum=${pageCount}">[끝]</a>
						</c:if>
					</c:if>
				</th>	
			</tr>
		</table>
		</form>
</body>
</html>