<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <c:set var="context" value="<%= request.getContextPath() %>"/>
<html>
<style type="text/css">
/*글쓰기*/

.board_type1_write_wrap{width:90%;margin:auto;background:white;}
.board_type1_write_button_wrap{width:90%;margin:auto;background:white;font-size:16px;padding-left: 10px;padding-right: 10px;}
.board_write_type1{width:100%;table-layout:fixed;font-size:16px;color:black;}
.board_write_type1 tbody tr td{height:100px;}
.board_write_type1 tbody tr td .split_three{padding:0;margin:0;width:100%;list-style:none;}
.board_write_type1 tbody tr td .split_three li{width:33.333%;padding:0;margin:0;float:left;padding-right:5%;}
.board_write_type1 tbody tr td div{padding-top:5px;padding-bottom:5px;}
.board_write_type1 tbody tr .column_name{font-weight:800;}
.board_write_type1 tbody tr .column_desc{}
.board_write_type1 tbody tr .left{text-align:left;padding-left:10px;padding-right:10px;}
.text_type1{width:100%;height:35px;border-radius:5px;padding-left:10px;padding-right:10px;}
.text_type2{width:90%;height:35px;border-radius:5px;padding-left:10px;padding-right:10px;}
.checkwrap_type1{margin-right:20px;float:left;}
.check_type1{border-radius:5px;margin-right:10px;}
.textarea_type1{width:100%;height:350px;border-radius:5px;}
.write_button_right{float:right;}
.write_button_left{float:left;}
.button_type1{background:blue;color:white;border:none;padding:10px;border-radius:5px;}
.button_type2{background:red;color:white;border:none;padding:10px;border-radius:5px;}
@media only screen and (max-width:760px){
	.board_write_type1 tbody tr td .split_three li{width:100%;float:none;padding-right:0%;}
	
}
</style>
<body onload="writeFocus();">
<c:if test="${sessionScope.memId == null}">
<script>
alert("로그인후 이용하실 수 있는 서비스입니다.");
window.history.back();
</script>

</c:if>
<c:if test="${sessionScope.memId != null}">
<%@ include file="../include/mainheaderLog.jsp" %>
</c:if>
<div id="wrap" style="width:70%; margin: 0 auto;">
	<form action="writePro.bo" method="post" name="writeForm"
				onsubmit="return writeCheck();"">
		<c:set var="memId" value="${memId}" scope="session"/>
		<input type="hidden" name="num" value="${num}">
		<input type="hidden" name="ref" value="${ref}">
		<input type="hidden" name="ref_step" value="${ref_step}">
		<input type="hidden" name="ref_level" value="${ref_level}">
		<input type="hidden" name="pageNum" value="${pageNum}">
		<table align="center">
			<div class="board_type1_wrap">
		<div class="board_type1_write_wrap">
			<h2 style="text-align: center;">글쓰기</h2>
			<table class="board_write_type1">
				<tr>
					<td class="left" >
						<div class="column_name">글제목</div>
						<div class="column_desc"><input type="text" name="" class="text_type1"/></div>
					</td>
				</tr>
				<tr>
					<td class="left">
						<ul class="split_three">
							<li>
								<div class="column_name">작성자</div>
								<div class="column_desc"><input type="text" name="writer" class="text_type1" value="${memId}" readonly="readonly"/></div>
							</li>
							<li>
								<div class="column_name">비밀번호</div>
								<div class="column_desc"><input type="text" name="pwd" class="text_type1"/></div>
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td class="left" >
						<div class="column_name">내용</div>
						<div class="column_desc">
							<textarea rows="" cols="" class="textarea_type1" name="subject"></textarea>
						</div>
					</td>
				</tr>	
				<tr>
				<td>
				<div class="button_margin"></div>
		
		<div class="board_type1_write_button_wrap">
			<div class="write_button_left">
				<input type="submit" class="button button_type1" value="등록" style="width:500px">
			</div>
			<div class="write_button_right">
				<input class="button button_type1" type="button" value="목록보기" class="button button_type1"
							onclick="window.location='boardList.bo?pageNum=${pageNum}'" style="width:500px; background-color: red;">		
		</div>
			</div>
			</td>
				</tr>
			</table>
		</div>
		
			
		</div>
		
	</div>
	
		</table>
		</form>
</div>
			<%@ include file="../include/footer.jsp" %>

</body>
</html>