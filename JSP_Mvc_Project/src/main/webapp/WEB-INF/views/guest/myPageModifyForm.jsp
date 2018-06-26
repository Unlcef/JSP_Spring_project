<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<c:set var="context" value="<%= request.getContextPath() %>"/>
<script type="text/javascript">
	function pwdCheck(){
		if(!document.pwdForm.user_pwd.value){
			alert("비밀번호를 입력하세요!");
			document.pwdForm.user_pwd.focus();
			return false;
		}
	}
</script>
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
     
      .signUp {
   margin: 0 auto;
   width: 300px;
   padding: 33px 25px 29px;
   background: #FFFFFF;
   border-bottom: 1px solid #C4C4C4;
   border-radius: 5px;
   -webkit-box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
   box-shadow: 0 1px 5px rgba(0, 0, 0, 0.25);
}

.signUp:before,
.signUp:after {
   content: '';
   position: absolute;
   bottom: 1px;
   left: 0;
   right: 0;
   height: 10px;
   background: inherit;
   border-bottom: 1px solid #D2D2D2;
   border-radius: 4px;
}

.signUp:after {
   bottom: 3px;
   border-color: #DCDCDC;
}

.signUpTitle {
   line-height: 35px;
   font-size: 20px;
   font-weight: 100;
   color: #777;
   text-align: center;
   text-shadow: 0 1px rgba(255, 255, 255, 0.75);
   background: #F7F7F7;
}

.signUpTitle:before {
   content: '';
   position: absolute;

   height: 8px;
   background: #C4E17F;
   border-radius: 5px 5px 0 0;
   background-image: -webkit-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #db9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: -moz-linear-gradient(left, #c4e17f, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9CBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: -o-linear-gradient(left, #C4E17F, #C4E17F 12.5%, #F7FDCC 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9DBE 62.5%, #C49CDE 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62C2E4 87.5%, #62C2E4);
   background-image: linear-gradient(to right, #C4E17F, #C4E17F 12.5%, #F7FDCA 12.5%, #F7FDCA 25%, #FECF71 25%, #FECF71 37.5%, #F0776C 37.5%, #F0776C 50%, #DB9DBE 50%, #DB9CBE 62.5%, #c49cde 62.5%, #C49CDE 75%, #669AE1 75%, #669AE1 87.5%, #62c2e4 87.5%, #62C2E4);
}

input {
   font-family: inherit;
   color: inherit;
   -webkit-box-sizing: border-box;
   -moz-box-sizing: border-box;
   box-sizing: border-box;
}

.signUpInput {
   width: 100%;
   height: 50px;
   margin-bottom: 25px;
   padding: 0 15px 2px;
   font-size: 17px;
   background: white;
   border: 2px solid #EBEBEB;
   border-radius: 4px;
   -webkit-box-shadow: inset 0 -2px #EBEBEB;
   box-shadow: inset 0 -2px #EBEBEB;
}

.signUpInput:focus {
   border-color: #62C2E4;
   outline: none;
   -webkit-box-shadow: inset 0 -2px #62C2E4;
   box-shadow: inset 0 -2px #62C2E4;
}

.lt-ie9 .signUpInput {
   line-height: 48px;
}

.signUpButton {
   position: relative;
   vertical-align: top;
   width: 100%;
   height: 54px;
   padding: 0;
   font-size: 22px;
   color: white;
   text-align: center;
   text-shadow: 0 1px 2px rgba(0, 0, 0, 0.25);
   background: #F0776C;
   border: 0;
   border-bottom: 2px solid #D76B60;
   border-radius: 5px;
   cursor: pointer;
   -webkit-box-shadow: inset 0 -2px #D76B60;
   box-shadow: inset 0 -2px #D76B60;
}

.signUpButton:active {
   top: 1px;
   outline: none;
   -webkit-box-shadow: none;
   box-shadow: none;
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
		<div id="form">
<form action="myPageModifyView.cu" name="pwdForm" method="post" onsubmit="return pwdCheck();"
class="signUp" id="signupForm">
	<h1 class="signUpTitle">비밀번호를 입력하세요.</h1>
	<input type="hidden" value="${memId}" scope="session">
   <input type="password" name="user_pwd" class="signUpInput" placeholder="password">
   <input type="submit" value="확인" class="signUpButton">
	</table>
</form>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>