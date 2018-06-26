<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
<html>
<body>
	<c:if test="${updateCnt==1}">
		<script type="text/javascript">
			alert("정상 처리 되었습니다.");
			window.location="adminOrderList.ad";
		</script>
	</c:if>
	<c:if test="${updateCnt!=1}">
		<script type="text/javascript">
			alert("처리도중 에러가 발생했습니다.");
			window.location="adminOrderList.ad";
		</script>
	</c:if>
</body>
</html>