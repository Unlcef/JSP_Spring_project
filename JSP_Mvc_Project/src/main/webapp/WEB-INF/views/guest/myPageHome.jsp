<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 
    <c:set var="context" value="<%= request.getContextPath() %>"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="${context}/css/board_type1.css">
<link type="text/css" rel="stylesheet" href="${context}/css/myPageHome.css">

</head>
<body>
<table class="table">
	<span><h1><b>마이페이지 홈</b></h1></span>
	<hr>
	<tr>
		<th scope="row">주문내역</th>
		<td><a href="#" alt="">0건</a></td>
		<th scope="row">할인쿠폰</th>
		<td><a href="#" alt="">0개</a></td>
	</tr>
	<tr>
		<th scope="row">관심상품</td>
		<td><a href="#" alt="">0개</a></td>
		<th scope="row">상품후기</td>
		<td>0건</td>
	</tr>
</table>
<th>
<hr>
<div class="board_type1_wrap">
<table class="board_list_type1">
<span><h1>상품후기내역</h1></span>
<hr>
	<thead>
	<tr>
		<th>번호</th>
		<th>작성자</th>
		<th>제목</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<th>101</th>
		<th>테스트</th>
		<th><a href="#">예제 게시글 1</a></th>
		<th>18.05.04</th>
		<th>1</th>
	</tr>
	<tr>
		<th>102</th>
		<th>테스트</th>
		<th><a href="#">예제 게시글 2</a></th>
		<th>18.05.04</th>
		<th>2</th>
	</tr>
	</tbody>

</table>
<hr>
</div>

<br><br><br>
</body>
</html>