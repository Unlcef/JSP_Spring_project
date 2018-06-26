<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
<html>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
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
</script>
     <style>
      .signUp {
   margin: 0 auto;
   width: 500px;
   padding: 33px 25px 29px;
   background: #FFFFFF;
   border-bottom: 1px solid #C4C4C4;
   border-radius: 5px;
   -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
   box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}

.signUp:before,
.signUp:after {
   content: '';
   position: absolute;
   bottom: 1px;
   left: 0;
   right: 0;
   height: 10px;
   background: inherit;
   border-bottom: 1px solid #D2D2D2;
   border-radius: 4px;
}

.signUp:after {
   bottom: 3px;
   border-color: #DCDCDC;
}

.signUpTitle {
   line-height: 35px;
   font-size: 20px;
   font-weight: 100;
   color: #777;
   text-align: center;
   text-shadow: 0 1px rgba(255, 255, 255, 0.75);
   background: #F7F7F7;
}
.signUpTitle2 {
   line-height: 20px;
   font-size: 16px;
   width:100px;
   color: #777;
   text-align: center;
   text-shadow: 0 1px rgba(255, 255, 255, 0.75);
   background: #F7F7F7;
}

.signUpTitle:before {
   content: '';
   position: absolute;

   height: 8px;
   background: #C4E17F;
   border-radius: 5px 5px 0 0;
   background-image: -webkit-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #db9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: -moz-linear-gradient(left, #c4e17f, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: -o-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCC 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9DBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: linear-gradient(to right, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9CBE 62.5%, #c49cde 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62c2e4 87.5%, #62C2E4);
}

input {
   font-family: inherit;
   color: inherit;
   -webkit-box-sizing: border-box;
   -moz-box-sizing: border-box;
   box-sizing: border-box;
}

.signUpInput {
   width: 100%;
   height: 50px;
   margin-bottom: 25px;
   padding: 0 15px 2px;
   font-size: 17px;
   background: white;
   border: 2px solid #EBEBEB;
   border-radius: 4px;
   -webkit-box-shadow: inset 0 -2px #EBEBEB;
   box-shadow: inset 0 -2px #EBEBEB;
}
.signUpInput2 {
   width: 100%;
   height: 50px;
   margin-top: 10px;
   margin-bottom: 25px;
   padding: 0 15px 2px;
   font-size: 14px;
   background: white;
   border: 2px solid #EBEBEB;
   border-radius: 4px;
   -webkit-box-shadow: inset 0 -2px #EBEBEB;
   box-shadow: inset 0 -2px #EBEBEB;
}
.signUpInput:focus {
   border-color: #62C2E4;
   outline: none;
   -webkit-box-shadow: inset 0 -2px #62C2E4;
   box-shadow: inset 0 -2px #62C2E4;
}

.lt-ie9 .signUpInput {
   line-height: 48px;
}

.signUpButton {
   position: relative;
   vertical-align: top;
   width: 45%;
   height: 40px;
   padding: 0;
   font-size: 22px;
   color: white;
   text-align: center;
   text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
   background: #F0776C;
   border: 0;
   border-bottom: 2px solid #D76B60;
   border-radius: 5px;
   cursor: pointer;
   -webkit-box-shadow: inset 0 -2px #D76B60;
   box-shadow: inset 0 -2px #D76B60;
}

.signUpButton:active {
   top: 1px;
   outline: none;
   -webkit-box-shadow: none;
   box-shadow: none;
}
        </style>
        <script type="text/javascript">
			function valiCheck(){
				if(!document.regForm.user_pwd.value){
					alert("변경 비밀번호를 입력해주세요");
					document.regForm.user_pwd.focus();
					return false;
				}else if(!document.regForm.user_pwd_re.value){
					alert("비밀번호를 한번더 입력해주세요.");
					document.regForm.user_pwd_re.focus();
					return false;
				}else if(document.regForm.user_pwd.value != document.regForm.user_pwd_re.value){
					alert("비밀번호를 맞게 입력하세요.");
					document.regForm.user_pwd_re.focus();
					return false;
				}else if(!document.regForm.postnum.value){
					alert("주소를 입력해주세요.");
					return false;
				}else if(!document.regForm.addr1.value){
					alert("주소를 입력해주세요.");
					return false;
				}else if(!document.regForm.addr2.value){
					alert("주소를 입력해주세요.");
					return false;
				}else if(!document.regForm.user_email1.value){
					alert("이메일을 입력해주세요.");
					document.regForm.user_email1.focus();
					return false;
				}else if(!document.regForm.user_email2.value){
					alert("이메일 주소를 입력해주세요.");
					document.regForm.user_email2.focus();
					return false;
				}
			}        	
        </script>
<body>

	<c:if test="${selectCnt != 1}">
	<script type="text/javascript">
			alert("비밀번호가 일치하지 않습니다..");
			window.history.back();
		</script>
	</c:if>
		<c:if test="${selectCnt==1}">
		<script type="text/javascript">
		</script>
		<form action="myPageModifyPro.cu" name="regForm" method="post" onsubmit="return valiCheck();"
class="signUp" id="signupForm">
	<h1 class="signUpTitle">수정할 정보를 입력해주세요.</h1>
	<input type="hidden" name="hiddenId2" value="0">
	
	<table align="center">
	<tr>
	<th class="signUpTitle2">아이디</th>
	<td>
	<input type="text"  name="user_id" class="signUpInput2" value="${dto.user_id}" disabled="disabled" scope="session" >
  	</td>
  	</tr>
  	<tr>
  	<th class="signUpTitle2"> 변경비밀번호 </th>
  	<td>
	<input type="password" name="user_pwd" class="signUpInput2" placeholder="Pwd">
   </td>
   </tr>
   <tr>
   <th class="signUpTitle2">
   		변경비밀번호 확인
   </th>
   <td>
   <input type="password" name="user_pwd_re" class="signUpInput2" placeholder="Pwd">
   </td>
   <tr>
   	<th class="signUpTitle2">
   		이름
   	</th>
   	<td>
      <input type="text" name="user_name" class="signUpInput2" value="${dto.user_name}"  disabled="disabled">
		</td>
   </tr>
   <tr>
   	<th class="signUpTitle2">
   		성별
   	</th>
   	<td>
   	<c:if test="${dto.user_gender == 'M'}">
   		<c:set var="gender" value="남자"/>
   	</c:if>
   	<c:if test="${dto.user_gender == 'F'}">
   		<c:set var="gender" value="여자"/>
   	</c:if>
   		<input type="text" name="user_gender" class="signUpInput2" value="${gender}" disabled="disabled">
   	<c:if test="${dto.user_gender == '남자'}">
   		<c:set var="gender" value="M"/>
   		</c:if>
   		<c:if test="${dto.user_gender =='여자' }">
   		<c:set var="gender" value="F"/>
   		</c:if>
   	</td>
   </tr>
   <tr>
   	<th class="signUpTitle2">
   		주소
   	</th>
   	<td>
        	<input name="postnum" type="text" readonly="readonly" placeholder="우편번호" value="${dto.user_postnum}">
        	<input value="주소" type="button" onclick="openAddr();">
        	<br>
        	<input name="addr1" type="text" readonly="readonly" placeholder="주소" value="${dto.user_address1}">
        	<input name="addr2" type="text" placeholder="상세주소" value="${dto.user_address2}">
        	</td>
   </tr>
   <tr>
   <th class="signUpTitle2">
   		번호
   </th>
   <td>
   <c:if test="${dto.user_hp == null}">
   	<input name="user_hp1" type="text"  style="width:50px; height:30px; " class="signUpInput2">
   	-
   	<input name="user_hp2" type="text" style="width:70px; height:30px;"  class="signUpInput2">
   	-
   	<input name="user_hp3" type="text" style="width:70px; height:30px;" class="signUpInput2">
   </c:if>
    <c:if test="${dto.user_hp != null}">
    <c:set var="hpArr" value="${fn:split(dto.user_hp, '-') }"/>
   	<input name="user_hp1" type="text"  style="width:50px; height:30px; " class="signUpInput2" value="${hpArr[0]}">
   	-
   	<input name="user_hp2" type="text" style="width:70px; height:30px;"  class="signUpInput2" value="${hpArr[1]}">
   	-
   	<input name="user_hp3" type="text" style="width:70px; height:30px;" class="signUpInput2" value="${hpArr[2]}">
   </c:if>
   </td>
   </tr>
   <tr>
   <th class="signUpTitle2">
   	이메일
   </th>
   <td>
   <c:set var="emailArr" value="${fn:split(dto.user_email, '@') }"/>
   	   	<input name="user_email1" type="text" style="width:45% " class="signUpInput2" value="${emailArr[0]}" >
   	   	@
   	   	<input name="user_email2" type="text" style="width:45% " class="signUpInput2" value="${emailArr[1]}">
   	
   </td>
   </tr>
   <tr>
   <th>
   <th colspan="2">
   <input type="submit" value="확인" class="signUpButton">
   <input type="button" value="취소" class="signUpButton" onclick="window.history.back();">
	</th>
	</tr>
	
	</table>
</form>
	</c:if>
	<%@ include file="../include/footer.jsp" %>
</body>
</html>