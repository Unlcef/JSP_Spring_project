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
     function proAddCheck(){
    	 if(!document.productAddForm.imgAttach.value){
    		 alert("이미지를 추가하세요.");
    		 return false;
    	 }else if(!document.productAddForm.productName.value){
    		 alert("재고명을 입력하세요.");
    		 return false;
    	 }else if(document.productAddForm.productStock.value < 0){
    		 alert("재고수량을 1개이상 입력하세요.");
    		 return false;
    	 }else if(!document.productAddForm.productStock.value){
    		 alert("재고수량을 입력하세요.");
    		 return false;
    	 }else if(!document.productAddForm.category.value){
    		 alert("재고 종류를 입력하세요.");
    		 return false;
    	 }else if(!document.productAddForm.productPrice.value){
    		 alert("재고가격을 입력하세요.");
    		 return false;
    	 }
    	 
     }
</script>
<body>
<form action="addPro.ad" name="productAddForm" onsubmit="return proAddCheck();"  method="post" enctype="multipart/form-data">
<table>
<tr>
<th>
재고 이미지
</th>
<th>
<input type="file" id="imgAttach" name="imgAttach" onchange="LoadImg(this);">
	</th>
	</tr>
	<tr>
	<th colspan="2">
	<img id="adad" width="400" height="200">
	</th>
	</tr>
	<tr>
	<th>
		재고 이름
	</th>
	<th>
	<input type="text" name="productName" >
	</th>
	</tr>
	<tr>
	<th>
		재고수량
	</th>
	<th>
		<input type="number" name="productStock" >
	</th>
	</tr>
	<tr>
	<th>
		종류
	</th>
	<th>
		<select name="category">
			<option value="">[필수]</option>
			<option value="soccer">축구</option>
			<option value="basketball">농구</option>
			<option value="badminton">배드민턴</option>
			<option value="baseball">야구</option>
		</select>
	</th>
	</tr>
	<tr>
	<th>
		종류2
	</th>
	<th>
		<select name="kind">
			<option value="">종류</option>
			<option value="shoes">신발</option>
			<option value="cloth">옷</option>
			<option value="pants">바지</option>
			<option value="ball">공</option>
		</select>
	</th>
	</tr>
	<tr>
	<th>
		재고가격
	</th>
	<th>
		<input type="text" name="productPrice" width="50px">
	</th>
	</tr>
	<tr>
	<th colspan="2">
		<input type="submit" value="재고추가">
		<input type="reset" value="초기화">
		</th>
	</tr>
</table>
</form>
</body>
</html>