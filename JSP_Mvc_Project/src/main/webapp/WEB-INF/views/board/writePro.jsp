<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="setting.jsp" %>
<html>
<body>
<h2 align="center"> 글쓰기 - 처리페이지</h2>
	<c:if test="${selectCnt == 0}">
		<script type="text/javascript">
			errorAlert("글쓰기 실패");
		</script>
	</c:if>
	<c:if test="${selectCnt != 0 }">
		<script type="text/javascript">
			alert("성공");
			window.location="boardList.bo?pageNum=${pageNum}"
		</script>
	</c:if>
</body>
</html>