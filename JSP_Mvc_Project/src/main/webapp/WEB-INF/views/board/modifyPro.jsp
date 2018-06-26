<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="setting.jsp" %>
<html>
<body>
	<c:if test="${updateCnt == 0}">
		<script type="text/javascript">
			errorAlert(updateError);
		</script>
	</c:if>
	<c:if test="${updateCnt != 0}">
			<script type="text/javascript">
			alert("성공");
			window.location="boardList.bo?pageNum=${pageNum}";
			</script>
	</c:if>
</body>
</html>