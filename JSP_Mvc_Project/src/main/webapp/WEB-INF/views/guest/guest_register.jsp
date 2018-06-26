<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
    <%@ include file="../include/bootstrap.jsp" %>
<html>
<head>
<meta charset="utf-8">
<title>::Register::</title>
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


	$(function() {
		$("#join").submit(function(){
			if(!$("input[name='user_id']").val()){
				alert("아이디를 입력하세요!");
				$("input[name='user_id']").focus();
				return false;
			}
			
				if(!$("input[name='user_pwd']").val()){
					alert("비밀번호를 입력하세요!");
					$("input[name='user_pwd']").focus();
					return false;
				}
				if(!$("input[name='user_pwd_re']").val()){
					alert("비밀번호를 입력하세요!");
					$("input[name='user_pwd_re']").focus();
					return false;
				}
				
				
				if($("input[name='user_pwd']").val() != $("input[name='user_pwd_re']").val()){
						alert("비밀번호가 일치하지 않습니다.");
						 $("input[name='user_pwd_re']").val("");
						 $("input[name='user_pwd_re']").focus();
						return false;
					}
				
				if(!$("input[name='user_name']").val()){
					alert("이름을 입력하세요!");
					$("input[name='user_name']").focus();
					return false;
				}
				if(!$("input[name='user_gender']").is(":checked")){
					alert("성별을 체크하세요");
					$("input[name='user_gender']:eq(0)").focus();  // 남성에 focus
					return false;
				}
					if(!$("input[name='user_email']").val()){
						alert("이메일을 입력하세요!");
						$("input[name='user_email']").focus();
						return false;
					}else{
						var emailEx = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
						   if(!emailEx.test($("input[name='user_email']").val())){
						    alert("이메일형식이 유효하지 않습니다.");
						    $("input[name='user_email']").focus();
						    return false;
						   }
					}
					
					if(!$("input[name='agree']").is(":checked")){
						alert("약관을 동의하세요");
						$("input[name='agree']:eq(0)").focus();
						return false;
					}
					if($("input[name='hiddenId']").val() == "0"){
						alert("중복확인 해주세요!");
						$("input[name='hiddenId']").focus();
						return false;
					}
					if(document.login.hiddenId2.value=="0"){
						alert("이메일 인증을 완료해주세요.");
						document.login.hiddenId.focus();
						return false;
					}
					
		});
	});
</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<style type="text/css">
	#main{
		margin : 30px auto;
	}
	fieldset{
		width: 30%;
		margin-top: 10px;
	}
	#div tr td{
	font-weight: bold;
	}
	#div img{
		margin-top: 10px;
	}
	#div td img{
		float: left;
	}
	#div .btn{
		margin-top: 15px;
	}
</style>
</head>
<body>
<%@ include file="../include/mainheader.jsp" %>

<div id="main">
<center><img src="<%= request.getContextPath() %>/images/mainlo.png"></a></center>

    <form name="login" method="post"  action="guest_registerPro.cu" id="join"
    	onsubmit="return inputCheck();"> <!-- 로그인 체크 해야함. -->
    <br/>
    <input type="hidden" name="hiddenId" value="0">
        <input type="hidden" name="hiddenId2" value="0">
    
    <h1 align="center">회원가입</h1>
    <table align="center" style="border:dotted 4px #c2c2c2; -moz-border-radius: 34px; -webkit-border-radius: 34px; border-radius: 34px;">
        <tr>
          <th><span style="color:orange;">*</span>아이디</th>
          <td><input type="text" size="20" name="user_id" autofocus> &nbsp;<input type="button" onclick="confirmId();" name="confirm" value="중복확인"></td>
        </tr>
        <tr>
          <th><span style="color:orange;">*</span>비밀번호</th>
          <td><input type="password" size="20" name="user_pwd"></td>
        </tr>
        <tr>	
          <th><span style="color:orange;">*</span>비밀번호 확인</th>
          <td><input type="password" size="20" name="user_pwd_re" placeholder="한번 더 입력해주세요."></td>
        </tr>
        <tr>
        	<th><span style="color:orange;">*</span>이름</th>
        	<td><input type="text" size="7" name="user_name" id="userName"></td>
        </tr>
        <tr>
        	<th><span style="color:orange;">*</span>성별</th>
        	<td colspan="2">
        	<input type="radio" name="user_gender" value="M" checked>남자
        	 <input type="radio" name="user_gender" value="F">여자
        	 </td>
        </tr>
        <tr>
        	<th><span style="color:orange;">*</span>이메일</th>
        	<td><input type="text" name="user_email" size="30" id="userEmail" placeholder="exEmail@ex.com">
        	<input type="button" name="confirmEmail" onclick="CM();" value="메일인증">
        	</td>
        </tr>
        <tr>
        	<th>전화번호</th>
        	<td>
        	<input type="text" name="user_hp1" style="width:40px;" maxlength="3">
        	-
        	<input type="text" name="user_hp2" style="width:70px;" maxlength="4">
        	-
        	<input type="text" name="user_hp3" style="width:70px;" maxlength="4">
        	</td>
        </tr>
        <tr>
        <th>
        	<span style="color:orange;">*</span>주소
        </th>
        	<td>
        	<input name="postnum" type="text" readonly="readonly" placeholder="우편번호">
        	<input value="주소" type="button" onclick="openAddr();">
        	<br>
        	<input name="addr1" type="text" readonly="readonly" placeholder="주소" style="width:110px;">
        	<input name="addr2" type="text" placeholder="상세주소" >
        	</td>
        </tr>
        <tr>
        <th><span style="color:orange;">*</span>약관동의</th>
        	<td><input type="button" onclick="window.open('../guest/condition.jsp','개인정보 수집 및 이용에 대한 안내(필수)','width=430, height=500,location=nostatus=no,scrollbars=yes')" value="약관동의">
        	<input type="radio" name="agree" value="agree">동의
        	</td>
        </tr>
	<tr align="center">
    	<th colspan="2">
    
    <input type="submit" value="회원가입" class="myButton">
    &nbsp;&nbsp;&nbsp;&nbsp;
    <input type="reset" value="다시작성" class="myButton">
	</tr>
	</table>
    </form>
</fieldset>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>