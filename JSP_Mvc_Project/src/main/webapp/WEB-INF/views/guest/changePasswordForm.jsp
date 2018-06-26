<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	function pwdCheck(){
		if(!document.PwdForm.now_pwd.value){
			alert("현재 비밀번호를 입력하세요.");
			document.PwdForm.now_pwd.focus();
			return false;
		}else if(!document.PwdForm.change_pwd.value){
			alert("바꿀 비밀번호를 입력하세요.");
			document.PwdForm.change_pwd.focus();
			return false;
		}else if(!document.PwdForm.change_pwd_re.value){
			alert("바꿀 비밀번호를 입력하세요.");
			document.PwdForm.change_pwd_re.focus();
			return false;
		}
	}
</script>
<style>
	table{
		text-align: center;
		margin: 0 auto;
	}
	fieldset{
		width: 30%;
		margin: 0 auto;
	}
	tr td{
	font-weight: bold;
	}
</style>
</head>
<body>
 <fieldset>
    <form name="PwdForm" method="post" action="changePro.cu" onsubmit="return pwdCheck();"> <!-- 로그인 체크 해야함. -->
    <br/>
    
    <legend><center><h1>비밀번호 변경</h1></center>
    <table>
        <tr>
          <td>현재 비밀번호</td>
          <td><input type="text" size="30" name="now_pwd" required></td>
        </tr>
        <tr>
          <td>변경 비밀번호</td>
          <td><input type="password" size="30" name="change_pwd" required></td>
			
        </tr>
        <td>변경 비밀번호 확인</td>
          <td><input type="password" size="30" name="change_pwd_re" required></td>
			
        <tr><td><br/></td></tr>
        <tr>
          <td colspan="2" ><center><input type="submit" value="변경">
          </center></td>
        </tr>
        </legend>
    </table>
    </fieldset>
</body>
</html>