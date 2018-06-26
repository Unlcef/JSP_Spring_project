<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
a .rainbow, a:focus { animation-duration: 3s; animation-name: rainbowLink; animation-iteration-count: infinite;} 
@keyframes rainbowLink {     
 0% { color: #ff2a2a; }
 15% { color: #ff7a2a; }
 30% { color: #ffc52a; }
 45% { color: #43ff2a; }
 60% { color: #2a89ff; }
 75% { color: #202082; }
 90% { color: #6b2aff; } 
 100% { color: #e82aff; }

}
.blinking{
    animation:blink 2s ease-in-out infinite alternate;
}
@keyframes blink{
    0% {opacity:0;}
    
    100% {opacity:1;}
}
</style>
<footer>
	<hr>
	
	<div id="footer" style="width:100%">
	<h1 class="image blinking" style="float:left; margin-left: 20%;"><a href="waytoCome.cu" class="rainbow" style="text-decoration: none; color:black;"> 찾아오시는 길</a> </h1>
		<!-- <a href="../common/main.html" alt=""><img src="../images/mainlo.png"></a> -->
		<p><a href="adminLoginForm.ad" style="text-decoration: none; color:black;">만든이 : 윤희성 | 이메일 : khb113322@naver.com | 전화번호 : 010-1234-5678 <br>
		Copyright ⓒ heesungYoon all right reserved</a>
		참고사이트 : <a href="http://www.01058995418.com/" style="text-decoration: none; color:black;">http://www.01058995418.com/</a></p>
	</div>
</footer>