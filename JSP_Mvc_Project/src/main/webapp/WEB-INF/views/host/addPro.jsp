<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result == 1}">
	<script type="text/javascript">
		alert("추가완료");
		
		window.location="productList.ad";
	</script>
</c:if>
<c:if test="${result != 1}">
	<script type="text/javascript">
		alert("추가 실패");
		window.history.back();
	</script>
</c:if>
</body>
</html>