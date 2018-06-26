<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../host/hostMain.jsp" %>
<html>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
<script type="text/javascript">
     function LoadImg(value) {
          if(value.files && value.files[0]) {
               var reader = new FileReader();
               reader.onload = function (e) {
                    $('#adad').attr('src', e.target.result);
               }
               reader.readAsDataURL(value.files[0]);
          }
     }
     </script>
<body>
<form action="productModifyPro.ad" method="post" name="modifyForm"
				onsubmit="return modifyCheck(); " enctype="multipart/form-data">
			<input type="hidden" name="pageNum" value="${pageNum}">
			<table align="center">
				<tr>
					<th colspan="2">수정할 정보를 입력하세요.</th>
				</tr>
				<tr>
					<th>재고ID</th>
					<td><input type="text" name="product_id" value="${dtos.product_id}" readonly="readonly"></td>
				</tr>
				<tr>
					<th>재고명</th>
					<td>
					<input class="input" type="text" value="${dtos.product_name}" name="product_name" maxlength="50" style="width:270px">
					</td>
				</tr>
				<tr>
					<th>재고이미지</th>
					<td>
					<input type="file" id="imgAttach" name="imgAttach" onchange="LoadImg(this);">
					<img id="adad" width="400" height="200" src="images/image/${dtos.product_imgpath}">
					</td>
				</tr>
				<tr>
					<th>재고종류</th>
					<td>
						<select name="category" value="${dto.category}">
							<option value="soccer">축구</option>
							<option value="basketball">농구</option>
							<option value="badminton">배드민턴</option>
							<option value="baseball">야구</option>
						</select>
					</td>
					</tr>
					<tr>
				<th>
					종류2
				</th>
				<th>
					<select name="kind" value="${dto.kind}">
						<option value="shoes">신발</option>
						<option value="cloth">옷</option>
						<option value="pants">바지</option>
						<option value="ball">공</option>
					</select>
				</th>
				</tr>
				<tr>
				<th>	재고가격
				</th>
					<td>
						<input type="text" name="product_price" value="${dtos.product_price}">
					</td>
					</tr>
					<tr>
					<th>
					재고량
					</th>
					<td>
						<input type="number" name="product_stock" value="${dtos.product_stock}">
					</td>
				</tr>
				<tr>
					<th colspan="2">
						<input type="submit" class="inputButton" value="수정">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="button" class="inputButton" value="수정취소"
							onclick="window.history.back();">
					</th>
				</tr>
			</table>
		</form>
</body>
</html>