<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="setting.jsp" %>
<html>
<body onload="modifyFocus();">
	<h2><center>글 수정</center></h2>
	<c:if test="${selectCnt == 0}">
		<script type="text/javascript">
			errorAlert(pwdError);
		</script>
	</c:if>
	
	<c:if test="${selectCnt != 0}">
		<form action="modifyPro.bo" method="post" name="modifyForm"
				onsubmit="return modifyCheck();">
			<input type="hidden" name="num" value="${num}">
			<input type="hidden" name="pageNum" value="${pageNum}">
			<table align="center">
				<tr>
					<th colspan="2">수정할 정보를 입력하세요.</th>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${dto.writer}</td>
				</tr>
				<tr>
					<th>글 제목</th>
					<td>
					<input class="input" type="text" value="${dto.subject}" name="subject" maxlength="50" style="width:270px">
					</td>
				</tr>
				<tr>
					<th>글 내용</th>
					<td>
						<textarea class="input" rows="10" cols="40" name="content" maxlength="500">${dto.content}</textarea>
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td>
						<input class="input" type="password" name="pwd" maxlength="10" value="${dto.pwd}">
					</td>
				</tr>
				<tr>
					<th colspan="2">
						<input type="submit" class="inputButton" value="수정">
						<input type="reset" class="inputButton" value="수정취소">
						<input class="inputButton" type="button" value="목록보기"
								onclick="window.location='boardList.bo?pageNum=${pageNum}'">
					</th>
				</tr>
			</table>
			
		</form>
	</c:if>
</body>
</html>