<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "../include/adminsetting.jsp" %>
<html>
<body>
<c:if test="${selectCnt ==1}">
	<script type="text/javascript">
		alert("관리자 로그인 성공");
		window.location="adminMain.ad";
	</script>
</c:if>
<c:if test="${selectCnt !=1 }">
	<script type="text/javascript">
		alert("로그인 실패");
		window.history.back();
	</script>
</c:if>
</body>
</html>