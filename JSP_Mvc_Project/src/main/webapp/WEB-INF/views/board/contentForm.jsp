<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <c:set var="context" value="<%= request.getContextPath() %>"/>
    <script type="text/javascript">
	function replyWrite(){
		if(!document.contentForm.reply.value){
			alert("내용을 입력해주세요.");
			document.reply.focus();
			return false;
		}else{
			var content = document.contentForm.reply.value;
			var pageNum = document.contentForm.pageNum.value;
			var number =	document.contentForm.number.value;
			var num = document.contentForm.num.value;
			
			window.location="replyPro.bo?num="+num+"&pageNum="+pageNum+"&number="+number+"&content="+content+"";
			}
	}
</script>
<html>


<body>
<c:if test="${sessionScope.memId == null}">
<%@ include file="../include/mainheader.jsp" %>
</c:if>
<c:if test="${sessionScope.memId != null}">
<%@ include file="../include/mainheaderLog.jsp" %>
</c:if>
	<h2> <center>상세페이지</center></h2>
	<form name="contentForm">
	<input type="hidden" name="num" value="${dto.num}">
	<input type="hidden" name="pageNum" value="${pageNum}">
	<input type="hidden" name="number" value="${number}">
	<table align="center" >
		<tr >
			<th style="width:150px">글번호</th>
			<td style="width:150px">${number}</td>
			
			<th style="width:150px">조회수</th>
			<td style="width:150px">${dto.readCnt}</td>
		</tr>
		<tr>
			<th style="width:150px">작성자</th>
			<td style="width:150px">${dto.getWriter()}</td>
			
			<th style="width:150px">작성일</th>
			<td style="width:150px">
				<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm"  value="${dto.getReg_date()}"/>
			</td>
		</tr>
		<tr>
			<th>글제목</th>
			<td colspan="3">${dto.getSubject()}</td>
		</tr>
		<tr>
			<th>글내용</th>
			<td colspan="3" height="300px"> ${dto.content}</td>
		</tr>
		<tr>
			<th>댓글</th>
			<td colspan="3">
			<c:forEach var="reply" items="${reply}">
					${reply.writer}<br>
					${reply.content}<br>
					<br>
					<fmt:formatDate type="both" pattern="yy-MM-dd HH:mm"  value="${reply.reg_date}"/><br><br>
				</c:forEach>
			</td>
		</tr>
		<tr>
			<th>댓글등록</th>
			<td colspan="2" style="text-align: right;">
				<textarea rows="7" cols="45" name="reply"></textarea>
				</td>
				<td>
				<input type="button" class="inputButton" value="등록" style="height:100px;" onclick="return replyWrite();">
			</td>
		</tr>
		<tr>
			<th colspan="4">
				<input class="inputButton" type="button" value="글수정"
							onclick="window.location='modifyForm.bo?num=${dto.num}&pageNum=${pageNum}'">
				<input class="inputButton" type="button" value="글삭제"
							onclick="window.location='deleteForm.bo?num=${dto.num}&pageNum=${pageNum}'"><%-- 
				<input class="inputButton" type="button" value="답글쓰기"
							onclick="window.location='writeForm.bo?num=${dto.num}&ref=${dto.ref}&ref_step=${dto.ref_step}&ref_level=${dto.ref_level}&pageNum=${pageNum}'"> --%>
				<input class="inputButton" type="button" value="목록보기"
							onclick="window.location='boardList.bo?pageNum=${pageNum}'">
			</th>
		</tr>
		
	</table>
	</form>
	<%@include file="../include/footer.jsp" %>
</body>
</html>