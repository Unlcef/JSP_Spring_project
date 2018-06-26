<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp"%>
<html>
<body onload="confirmEmail();">
<form name="confirmform">
	<input type="hidden" value="${ran}" name="ranCode">
		<table>
		<tr>
			<th colspan="2"><h1>JJun Sports 이메일 인증</h1></th>
		</tr>
			<tr>
				<th>인증번호 :</th>
				<td>
					<input type="text" name="confirmNum">
				</td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="button" value="확인" onclick="SE();">
					<input type="button" value="닫기" onclick="self.close();">
					<input type="button" value="재전송" onclick="window.location='confirmEmail.cu?user_email=${user_email}'">
				</th>
			</tr>	
		</table>
		</form>
</body>
</html>