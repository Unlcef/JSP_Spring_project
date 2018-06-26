<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp" %>
<html>
<body>
<c:if test="${insertCnt==0}">
	<script type="text/javascript">
		alert("구매처리중에 오류가 발생했습니다.");
		window.location="*.cu";
	</script>
</c:if>
<c:if test="${insertCnt!=0}">
	<script type="text/javascript">
		alert(${insertCnt} +"건을 구매하였습니다.");
		window.location="*.cu";
	</script>
</c:if>
</body>
</html>