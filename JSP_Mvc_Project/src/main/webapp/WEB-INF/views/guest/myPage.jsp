<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<c:set var="context" value="<%= request.getContextPath() %>"/>
<style>

	.logo{
		float:left;
		margin-left: 30px;
		margin-top: 20px;
	}
                #topMenu {           
                        height: 60px; 
                        width: 100%; 
                         background-color: #a3daff;  
                         float:right;
                         margin-bottom : 30px;
                }	
                #topMenu ul{
                margin: 0 auto;
                	text-align: center;
                	width:80%;
					height:100%;
                }
                #topMenu ul li {      
                margin-top: 15px;               
                        list-style: none;       
                        color: white;
                        float: right;            
                        line-height: 30px;        
                        vertical-align: middle;     
                        text-align: center;        
                }
                #topMenu .menuLink {                          
                        text-decoration:none;                   
                        color: #2d2d2d;                       
                        display: block;                          
                        width: 150px;               
                        font-size: 12px;                           
                        font-weight: bold;                  
                        font-family: "Trebuchet MS", Dotum, Arial;
                }
                #topMenu .menuLink:hover {          
                		transition: 1s; 
                        color: white;                  
                        background-color: #41D3BD;    
                }
                 footer{
      margin-top: 20px;
      	position: absolute;
      	bottom: 0;
      	background-color:#f2f2f2;
      	width:100%;
      	height:120px;
      	color: gray;
      	font-size:.8em;
      }
      footer #footer p{
      padding-top : 20px;
      margin: 0 auto;
      	width: 40%;
      	height: 100%;
      	float: right;
      }
      footer #footer img{
      	float: left;
      }
        </style>
<html>
<body>
<header>

		<div id="topMenu">
		<div class="logo">
<a href="main.cu" alt=""><img src="${context}/images/mainlo.png"></a>
</div>
			<ul>
				<li><a class="menuLink" href="myPage.cu?pageNum=0">마이페이지 홈</a></li>
				<li><a class="menuLink"  href="myPageModifyForm.cu">회원정보 수정</a></li>
				<li><a class="menuLink"  href="myPage.cu?pageNum=2"> 비밀번호 변경 </a></li>
				<li><a class="menuLink"  href="myPage.cu?pageNum=3"> 결제내역</a></li>
				<li><a class="menuLink"  href="myPage.cu?pageNum=4"> 장바구니 목록</a></li>
				<li><a class="menuLink"  href="myPage.cu?pageNum=5"> 회원탈퇴</a></li>
			</ul>
		</div>

</header>
<c:choose>
	<c:when test="${pageNum ==2}">
	<%@ include file="myPageHome.jsp" %>
	</c:when>
	<c:when test="${pageNum ==3}">
	<%@ include file="myPageHome.jsp" %>
	</c:when>
	<c:when test="${pageNum ==4}">
	<%@ include file="myPageHome.jsp" %>
	</c:when>
	<c:when test="${pageNum ==5}">
	<%@ include file="myPageGuestDeleteForm.jsp" %>
	</c:when>
	<c:otherwise>
		<%@ include file="myPageHome.jsp" %>
	</c:otherwise>
</c:choose>

<%@ include file="../include/footer.jsp" %>
</body>
</html>