<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
<html>
<script type="text/javascript">
	function valicheck(){
		if(!document.myForm.user_id.value){
			alert("아이디를 입력하세요!");
			document.myForm.user_id.focus();
			return false;
		}else if(!document.myForm.user_pwd.value){
			alert("비밀번호를 입력하세요!");
			document.myForm.user_pwd.focus();
			return false;
		}
	}
	
/* 	function loginAccount(){
		alert("환영합니다.");
	} */
</script>
<style type="text/css">

	fieldset{
		width: 30%;
		margin-top: 10px;
	}
	tr td{
	font-weight: bold;
	}
	td img{
		float: left;
	}
	#log img{
		margin-top: 10px;
	}
</style>
</head>
<body>
<header>
<%@include file="../include/mainheader.jsp" %>
</header>

<div id="log" align="center">
<img src="${context}images/mainlo.png"><br>
 <fieldset>
    <form name="myForm" action="guest_loginPro.cu" onsubmit="return valicheck();" method="post"> <!-- 로그인 체크 해야함. -->
    <br>
    <legend><h1 align="center">로그인</h1></legend>
    <table align="center">
        <tr>
          <td>ID</td>
          <td><input type="text" name="user_id" size="30"> <br></td>
        </tr>
        <tr>
          <td>PW</td>
          <td><input type="password" name="user_pwd" size="30" ></td>
        </tr>
        <tr align="center">
          <td colspan="2" ><input type="submit" value="로그인"></td>
        </tr>
        </table>
        </form>
        </fieldset>
</div>

<%@include file="../include/footer.jsp" %>
</body>
</html>