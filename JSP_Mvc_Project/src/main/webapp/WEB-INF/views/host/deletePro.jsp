<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp" %>
<html>
<body>
<c:if test="${deleteCnt!=0}">
<script type="text/javascript">
	alert(${deleteCnt}+"건을 삭제하였습니다.");
	window.location="productList.ad";
</script>
</c:if>
<c:if test="${deleteCnt==0}">
	<script type="text/javascript">
		alert("삭제 실패");
		window.history.back();
	</script>
</c:if>
</body>
</html>