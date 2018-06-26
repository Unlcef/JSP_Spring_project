<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="setting.jsp" %>
<html>
<body>
<c:if test="${selectCnt == 0}">
	<script type="text/javascript">
		alert("비밀번호 틀림");
		window.location="boardList.bo?pageNum=${pageNum}";
	</script>
</c:if>

<c:if test="${selectCnt != 0}">
	<c:if test="${deleteCnt == 0}">
		<script type="text/javascript">
		alert("삭제 실패");
		window.location="boardList.bo?pageNum=${pageNum}";

	</script>
	</c:if>
	<c:if test="${deleteCnt != 0}">
		<script type="text/javascript">
		alert("삭제성공");
		window.location="boardList.bo?pageNum=${pageNum}";
	</script>
	</c:if>
</c:if>
</body>
</html>