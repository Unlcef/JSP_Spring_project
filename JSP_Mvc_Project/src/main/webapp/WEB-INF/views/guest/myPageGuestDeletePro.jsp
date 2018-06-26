<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp" %>
<html>
<body>
<c:if test="${deleteCnt==1}">
	<script type="text/javascript">
	alert("삭제가 완료되었습니다.");
	window.location="main.cu";
	</script>
</c:if>
<c:if test="${deleteCnt==0}">
	<script type="text/javascript">
	alert("삭제 실패했습니다..");
	window.location="main.cu";
	</script>
</c:if>
<c:if test="${selectCnt != 1}">
	<script type="text/javascript">
		alert("비밀번호를 다시 확인하세요.");
		window.history.back();
	</script>
</c:if>
<%-- <c:if test="${selectCnt==1}">
	<script>
		var confirm = confirm("정말 삭제하시겠습니까?");
		if(confirm == "true"){
			if(deleteCnt == 1){
			alert("삭제가 완료되었습니다.");
			window.location="deletePro.cu";
			window.location="main.cu";
			}else{
				alert("삭제도중 에러가 발생했습니다.");
			}
		}else{
			alert("삭제가 취소되었습니다.");
			return false;
			window.history.back();
		}
	</script>
</c:if>
<c:if test="${selectCnt != 0}">
	<script>
		alert("비밀번호가 일치하지 않습니다.");
		window.history.back();
	</script>
</c:if> --%>
</body>
</html>