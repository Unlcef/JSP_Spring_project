<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



<div class="testbox">
  <h1>Registration</h1>

  <form action="/">
      <hr>
    <div class="accounttype">
      <input type="radio" value="customer" id="radioOne" name="account" checked/>
      <label for="radioOne" class="radio" chec>Customer</label>
      <input type="radio" value="admin" id="radioTwo" name="account" />
      <label for="radioTwo" class="radio">Admin</label>
    </div>
  <hr>

  <label id="icon" for="name"><i class="icon-envelope "></i></label>
  <input type="text" name="name" id="name" placeholder="Email" required/>
  <label id="icon" for="name"><i class="icon-user"></i></label>
  <input type="text" name="name" id="name" placeholder="Name" required/>
  <label id="icon" for="name"><i class="icon-shield"></i></label>
  <input type="password" name="name" id="name" placeholder="Password" required/>
  <div class="gender">
    <input type="radio" value="None" id="male" name="gender" checked/>
    <label for="male" class="radio" chec>Male</label>
    <input type="radio" value="None" id="female" name="gender" />
    <label for="female" class="radio">Female</label>
   </div> 
   <p>By clicking Register, you agree on our <a href="#">terms and condition</a>.</p>
   <a href="#" class="button">Register</a>
  </form>
</div>

</body>
</html>