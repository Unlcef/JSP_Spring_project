<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp" %>
<html>
<body>
<c:if test="${updateCnt!= 0}">
	<script type="text/javascript">
		alert("수정완료");
		window.location="myPageModifyForm.cu";
	</script>
</c:if>
<c:if test="${updateCnt == 0}">
	<script type="text/javascript">
		alert("수정실패Error");
		window.history.back();
	</script>
</c:if>
</body>
</html>