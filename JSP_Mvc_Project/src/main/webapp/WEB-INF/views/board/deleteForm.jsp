<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="setting.jsp" %>
<html>
<body onload="pwdFocus();">
	<h2><center>글 삭 제</center></h2>
	
	<form action="deletePro.bo" method="post" name="pwdForm"
				onsubmit="return pwdCheck();">
			<!-- hidden : submit일 경우 input 태그에 보이지 않는 값을 넘길 때. -->
		<input type="hidden" name="num" value="${num}">
		<input type="hidden" name="pageNum" value="${pageNum}">
		<table align="center">
			<tr>
				<th colspan="2">
					비밀번호를 입력하세요
				</th>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input class="input" type="password" name="pwd" maxlength="10">
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<input class="inputButton" type="submit" value="글삭제">
					<input class="inputButton" type="reset" value="취소"
								onclick="window.history.back();">
				</th>
			</tr>
		</table>
	</form>
</body>
</html>