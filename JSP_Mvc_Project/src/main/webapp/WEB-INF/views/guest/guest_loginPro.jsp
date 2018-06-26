<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
<html>
<body>
	<c:if test="${selectCnt == 1}">
		<script type="text/javascript">
			alert("반갑습니다.");
			window.location="/JSP_Project/main.cu";
		</script>
	</c:if>
	<c:if test="${selectCnt == 0}">
		<script type="text/javascript">
			alert("비밀번호가 틀립니다. 다시 확인하세요.");
			window.location="guest_login.cu";
		</script>
	</c:if>
	<c:if test="${selectCnt == -1}">
		<script type="text/javascript">
			alert("아이디가 존재하지 않습니다.");	
			window.location="guest_login.cu";
		</script>
	</c:if>
</body>
</html>