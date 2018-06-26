<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
<html>
<body>
	<c:if test="${insertCnt == 0}">
	<script type="text/javascript">
		alert("회원가입에 실패했습니다. 다시 확인하세요.");
		window.history.back();
		</script>
	</c:if>
	<c:if test="${insertCnt != 0}">
		<script type="text/javascript">
			alert("회원가입에 성공했습니다. 로그인하세요!");
			window.location="guest_login.cu";
		</script>
	</c:if>


</body>
</html>