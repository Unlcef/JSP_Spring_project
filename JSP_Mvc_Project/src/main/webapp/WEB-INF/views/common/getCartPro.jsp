<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
<html>
<body>
<c:if test="${insertCnt==0}">
	<script type="text/javascript">
		alert("장바구니 추가 실패");
		window.history.back();
	</script>
</c:if>
<c:if test="${insertCnt!=0}">
	<script type="text/javascript">
		var con = confirm("장바구니에 추가되었습니다. 장바구니로 가시겠습니까?");
		if(con){
			window.location="guestCartList.cu";
		}else{
			window.history.back();
		}
	</script>
</c:if>
</body>
</html>