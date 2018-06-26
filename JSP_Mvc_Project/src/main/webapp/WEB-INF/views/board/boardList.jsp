<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/setting.jsp" %>
<html>
<body class="body">
<c:if test="${sessionScope.memId == null}">
<%@ include file="../include/mainheader.jsp" %>
</c:if>
<c:if test="${sessionScope.memId != null}">
<%@ include file="../include/mainheaderLog.jsp" %>
</c:if>
	<h2><center>Q&A</center></h2>
	<table style="width:1000px" align="center">
		<tr>
			<th colspan="6" align="center" style="height:25px">
				글목록(글 갯수 : ${cnt}) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="writeForm.bo?pageNum=${pageNum}">글쓰기</a> 
			</th>
		</tr>
		<tr>
			<th style="width:15%">글번호</th>
			<th style="width:25%">글제목</th>
			<th style="width:10%">작성자</th>
			<th style="width:15%">작성일</th>
			<th style="width:5%">조회수</th>
		</tr>
		<!-- 게시글이 있으면 -->
		<c:if test="${cnt > 0}">
			<c:forEach var="dto" items="${dtos}"> <!-- 큰 바구니에서 작은 바구니를 꺼내서 아래서 출력, 건수만큼 반복-->
				<tr>
					<td align="center">
						${number}
						<c:set var="number" value="${number-1}"/>
					</td>
					<td>
						<!-- 추가 시작 -->
						<!-- 답글인경우 : 들여쓰기 > 1 -->
<%-- 						<c:if test="${dto.ref_level > 1}"> <!-- 답글인경우 : 들여쓰기 > 1  -->
							<c:set var="wid" value="${(dto.ref_level-1) * 10}"/>
							<img src="${project}images/level.gif" border="0" width="${wid}" height="15">
						</c:if>
						<!-- 답글인 경우 : 들여쓰기 > 0 -->
						<c:if test="${dto.ref_level > 0 }">
							<img src="${project}images/re.gif" border="0" width="20" height="15">
						</c:if> --%>
						
						<!-- 조회수가 가장 큰 경우(hot 이미지) -->
						<c:if test="${dto.readCnt > 10}">
							<img src="${context}/images/hot.gif" border="0" width="20" height="15">
						</c:if>
						<!-- 추가 끝 -->
						<a href="contentForm.bo?num=${dto.num}&pageNum=${pageNum}&number=${number+1}">${dto.subject}<c:if test="${dto.replyCnt!=0}" >[${dto.replyCnt}]</c:if></a>
					</td>
					<td align="center">
						${dto.writer}
					</td>
					<td>
						<fmt:formatDate type="both" pattern="yyyy-MM-dd HH:mm"  value="${dto.reg_date}"/>
					</td>
					<td>
						${dto.readCnt}
					</td>
				</tr>
			</c:forEach>
		</c:if>
		<!-- 게시글이 없으면 -->
		<c:if test="${cnt==0}">
			<tr>
				<td colspan="6" align="center">
					게시글이 없습니다. 글을 작성해 주세요.
				</td>
			</tr>
		</c:if>
	</table>
		<!-- 페이지 컨트롤 -->
	<table style="width:1000px" align="center">
			<tr>
				<th align="center">
					<c:if test="${cnt > 0}">
						<!-- [◀◀] : 처음 / 이전블록 [◀]-->
						<c:if test="${startPage > pageBlock}">
							<a href="boardList.bo">[처음으로]</a>
							<a href="boardList.bo?pageNum=${startPage - pageBlock}">[이전]</a>
						</c:if>
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
							<c:if test="${i == currentPage}">
								<span><b>[${i}]</b></span>
							</c:if>
							<c:if test="${i != currentPage}">
								<a href="boardList.bo?pageNum=${i}">[${i}]</a>
							</c:if>
						</c:forEach>
						
						<!-- 다음블록[▶] / 끝[▶▶] -->
						<c:if test="${pageCount > endPage }">
							<a href="boardList.bo?pageNum=${startPage + pageBlock}">[다음]</a>
							<a href="boardList.bo?pageNum=${pageCount}">[끝]</a>
						</c:if>
					</c:if>
				</th>	
			</tr>
		</table>
		<%@ include file="../include/footer.jsp" %>
</body>
</html>