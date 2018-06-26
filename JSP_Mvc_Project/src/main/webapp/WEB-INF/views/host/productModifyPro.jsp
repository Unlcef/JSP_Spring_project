<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="../include/setting.jsp" %>
<html>
<body>
	<c:if test="${updateCnt != 1}">
		<script type="text/javascript">
			alert("업데이트 오류 발생");
			window.history.back();
		</script>
	</c:if>
	<c:if test="${updateCnt == 1}">
		<script type="text/javascript">
			alert("업데이트 성공");
			window.location="productList.ad";
		</script>
	</c:if>
</body>
</html>