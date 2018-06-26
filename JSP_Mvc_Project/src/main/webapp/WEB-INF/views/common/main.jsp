<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp" %>
<html>
<head>

<meta charset="UTF-8">
<title>Main</title>
</head>
<body>
<%String memId; %>
<c:if test="${sessionScope.memId == null}">
<%@ include file="../include/mainheader.jsp" %>
	<c:if test="${listnum==1}">
	<%@ include file="../include/submain.jsp" %>
	</c:if>
	<c:if test="${listnum==2}">
	<%@ include file="../common/basketballList.jsp" %>
	</c:if>
	<c:if test="${listnum==3}">
	<%@ include file="../common/soccerList.jsp" %>
	</c:if>
	<c:if test="${listnum==4}">
	<%@ include file="../common/badmintonList.jsp" %>
	</c:if>
	<c:if test="${listnum==5}">
	<%@ include file="../common/baseballList.jsp" %>
	</c:if>
	<c:if test="${listnum==6}">
	<%@ include file="../common/productView.jsp" %>
	</c:if>
<%-- 	<c:if test="${listnum==6}">
	<%@ include file="../common/productView.jsp" %>
	</c:if> --%>
	<c:if test="${listnum!=6}">
	<%@ include file="../include/footer.jsp" %>
	</c:if>
</c:if>

<c:if test="${sessionScope.memId != null}">
<%@ include file="../include/mainheaderLog.jsp" %>
<c:if test="${listnum==1}">
	<%@ include file="../include/submain.jsp" %>
	</c:if>
	<c:if test="${listnum==2}">
	<%@ include file="../common/basketballList.jsp" %>
	</c:if>
	<c:if test="${listnum==3}">
	<%@ include file="../common/soccerList.jsp" %>
	</c:if>
	<c:if test="${listnum==4}">
	<%@ include file="../common/badmintonList.jsp" %>
	</c:if>
	<c:if test="${listnum==5}">
	<%@ include file="../common/baseballList.jsp" %>
	</c:if>
	<c:if test="${listnum==6}">
	<%@ include file="../common/productView.jsp" %>
	</c:if>
	<c:if test="${listnum==7}">
	<%@ include file="../common/guestCartList.jsp" %>
	</c:if>
	<c:if test="${listnum==8}">
	<%@ include file="../common/purchaseForm.jsp" %>
	</c:if>
	<c:if test="${listnum==9}">
	<%@ include file="../common/orderList.jsp" %>
	</c:if>
	<c:if test="${listnum==10}">
	<%@ include file="../common/ImmediateForm.jsp" %>
	</c:if>
<%-- 	<c:if test="${listnum==6}">
	<%@ include file="../common/productView.jsp" %>
	</c:if> --%>
	<c:if test="${listnum!=6}">
	<%@ include file="../include/footer.jsp" %>
	</c:if>
</c:if>
</body>
</html>