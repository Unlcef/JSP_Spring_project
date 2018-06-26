<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp" %>
<html>
<script type="text/javascript">

</script>
<body onload="confirmIdFocus();">
	<h2> 중복확인 페이지</h2>

<form action="confirmId.cu" method="post" name="confirmform"
		onsubmit="return confirmIdCheck();">
<!-- 	//id 중복 -->
	<c:if test="${selectCnt==1}">
		<table>
			<tr>
				<th colspan="2">
					<span>${user_id}</span>는 사용할 수 없습니다.
				</th>
			</tr>
			<tr>
				<th>아이디 : </th>
				<td>
				<input class="input" type="text" name="user_id" maxlength="20"
				style="width:100px">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input class="inputButton" type="submit" value="확인">
					<input class="inputButton" type="reset" value="취소"
						onclick="self.close();">
				</td>
			</tr>
		</table>	
		</c:if>
<!-- // id 중복이 아닌경우 -->
	<c:if test="${selectCnt != 1}">
	<table>
		<tr>
			<td align="center">
				<span>${user_id}</span>는 사용할 수 있습니다.
			</td>
		</tr>
		<tr>
			<th>
				<!-- 부모쪽으로 넘길 id를 set -->
				<input class="inputButton" type="button" value="확인" onclick="setId('${user_id}');">
			</th>
		</tr>
	</table>
	</c:if>
</form>
</body>
</html>