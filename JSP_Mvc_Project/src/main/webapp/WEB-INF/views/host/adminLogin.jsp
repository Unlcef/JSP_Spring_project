<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/adminsetting.jsp" %>
<html>
<head>
<script type="text/javascript">
	function adminValiCheck(){
		if(!document.adminLogin.id.value){
			alert("아이디를 입력하세요.");
			document.adminLogin.id.focus();
			return false;
		}else if(!document.adminLogin.pwd.value){
			alert("비밀번호를 입력하세요.");
			document.adminLogin.pwd.focus();
			return false;
		}
	}
</script>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>ADMIN</title>
  <!-- Bootstrap core CSS-->
  <link href="${context}/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="${context}/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="${context}/resources/css/sb-admin.css" rel="stylesheet">
</head>
<h1 style="color: white;">JJUN SPORTS</h1>
<form action="adminLogin.ad" name="adminLogin" onsubmit="return adminValiCheck();">
<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Admin Login</div>
      <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1">관리자 아이디</label>
            <input class="form-control" id="exampleInputEmail1" type="text" aria-describedby="emailHelp" placeholder="Admin ID" name="id">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">관리자 비밀번호</label>
            <input class="form-control" id="exampleInputPassword1" type="password" placeholder="admin Pwd" name="pwd">
          </div>

          <input type="submit" class="btn btn-primary btn-block" value="로그인">
          <input type="button" class="btn btn-primary btn-block" onclick="window.location='<%= request.getContextPath() %>/main.cu'" value="메인으로">


      </div>
    </div>
  </div>
  
        </form>
          
  <!-- Bootstrap core JavaScript-->
  <script src="${context}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${context}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="${context}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
  
</body>

</html>
