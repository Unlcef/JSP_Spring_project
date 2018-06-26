<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/setting.jsp" %>
<html>
<style type="text/css">
	
</style>
<body>
<table align="center" style="width:60%">
  <caption style="background-color: rgba(0,0,0,0.2)"><h1>BaseBall</h1></caption>

  <tfoot>
    <tr align="center">
			<th align="center" colspan="4">
					<c:if test="${listcnt > 0}">
						<!-- [◀◀] : 처음 / 이전블록 [◀]-->
						<c:if test="${startPage > pageBlock}">
							<a href="productList.ad">[처음으로]</a>
							<a href="productList.ad?pageNum=${startPage - pageBlock}">[이전]</a>
						</c:if>
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
							<c:if test="${i == currentPage}">
								<span><b>[${i}]</b></span>
							</c:if>
							<c:if test="${i != currentPage}">
								<a href="productList.ad?pageNum=${i}">[${i}]</a>
							</c:if>
						</c:forEach>
						
						<!-- 다음블록[▶] / 끝[▶▶] -->
						<c:if test="${pageCount > endPage }">
							<a href="productList.ad?pageNum=${startPage + pageBlock}">[다음]</a>
							<a href="productList.ad?pageNum=${pageCount}">[끝]</a>
						</c:if>
					</c:if>
				</th>	
			</tr>
  </tfoot>
  <tbody>
      <c:forEach var="dto" items="${dtos}">
  <tr width="1200" height="190">

    <th scope="row"><a href="productView.cu?product_id=${dto.product_id}&pageNum=${pageNum}"><img src="images/image/${dto.product_imgpath}" width="160" height="160" style="margin-right:10px;"></a></th>
    <td width="575" height="160"><a href="productView.cu?product_id=${dto.product_id}&pageNum=${pageNum}" style="text-decoration: none; color:black;"><h3>${dto.product_name}</h3></a></td>
    <td width="15%" height="160"><strong>${dto.product_price}</strong>원</td>
    <td>${dto.kind}</td>

  </tr>
      </c:forEach>
</table>
</body>
</html>