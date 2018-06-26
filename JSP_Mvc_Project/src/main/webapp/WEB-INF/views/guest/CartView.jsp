<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/CartStyle.css">
</head>
<body>

<div id="cart">
<form method="post" action=""> <!-- 카트 테이블  -->
<table class="carttable" border="0" cellpadding="0" cellspacing="1">
<thead>
<tr>
    <th>선택</th>
    <th style="text-align:center" width="20%">상품명</th>
    <th style="text-align:center" width="20%">상품</th>
    <th style="text-align:center" width="20%">단가</th>
    <th style="text-align:center" width="20%">수량</th>
    <th style="text-align:center" width="20%">합계</th>
</tr>
</thead>
<tbody>
<tr>
  <td><input type="checkbox" name="select" value=""></td>
  <td><a href="#">언더아머] 커리4 NBA 농구화 시그니처 운동화 -4 화이트 로얄</td>
  <td><img src="../images/basketballs_no1.jpg"></a></td>
  <td>169,000</td>
  <td>1개</td>
  <td>169,000</td>
  </tr>
  <tr>
  <td><input type="checkbox" name="select" value=""></td>
  <td><a href="#">[나이키] 르브론 15 로우 NBA 농구화 시그니처 신벌 -2 화이트</td>
  <td><img src="../images/basketballs_no2.jpg"></a></td>
  <td>196,600</td>
  <td>1개</td>
  <td>196,600</td>
  </tr>
  </div>
</body>
<center><h1>Cart</h1></center>
</html>