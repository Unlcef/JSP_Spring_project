<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<body>
<c:if test="${insertCnt == 1}">
	<script type="text/javascript">
		window.location="contentForm.bo?num="+<%= request.getParameter("num")%>+"&pageNum="+<%=request.getParameter("pageNum")%> +"&number="+<%=request.getParameter("number")%>;
	</script>
</c:if>
<c:if test="${insertCnt != 1}">
	<script type="text/javascript">
		alert("로그인후 댓글을 입력하실 수 있습니다.");
		window.history.back();
	</script>
</c:if>
</body>
</html>