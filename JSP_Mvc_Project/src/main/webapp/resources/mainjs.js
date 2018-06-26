function CM(){
	if(!document.login.user_email.value){
		alert("이메일을 입력해주세요.");
		document.login.user_email.focus();
		return false;
	}
	/*
	 * window.open("파일명", "윈도우명", "창속성");
	 * url ="주소?속성" + 속성값; --> get방식
	 * */
	var url="confirmEmail.cu?user_email=" + document.login.user_email.value;
	window.open(url, "login", "menubar=no, width=500, height=180");

}

function confirmEmailFocus(){
	document.confirmform.user_email.focus();
}
function confirmEmailCheck(){
	if(!document.confirmform.user_email.value){
		alert("이메일을 입력해주세요.");
		document.confirmform.user_email.focus();
		return false;
	}
}
function SE(){
	if(document.confirmform.ranCode.value != document.confirmform.confirmNum.value){
		alert("인증코드가 다릅니다. 인증코드를 확인하세요.");
	}else{
		alert("인증코드 확인완료.");
	opener.document.login.hiddenId2.value="1";
	opener.document.login.user_email.readOnly = true;
		self.close();
	}
}


//아이디값 체크
function confirmId(){
	if(!document.login.user_id.value){
		alert("아이디를 입력해주세요.");
		document.login.user_id.focus();
		return false;
	}
	/*
	 * window.open("파일명", "윈도우명", "창속성");
	 * url ="주소?속성" + 속성값; --> get방식
	 * */
	var url="confirmId.cu?user_id=" + document.login.user_id.value;
	window.open(url, "login", "menubar=no, width=300, height=200");

}
function confirmIdFocus(){
	document.confirmform.user_id.focus();
}
function confirmIdCheck(){
	if(!document.confirmform.user_id.value){
		alert("아이디를 입력해주세요.");
		document.confirmform.user_id.focus();
		return false;
	}
}
function setId(user_id){
	opener.document.login.hiddenId.value="1";
	opener.document.login.user_id.value=user_id;
	self.close();
}


//중복확인 버튼 클릭시 id로 포커스

//opener : window 객체의 open() 메소드로 열린 새 창(=중복확인)창에서, 열어준 부모창(=회원가입창)에 접근할 때 사용

//self.close(); 메시지없이 현재창을 닫을때 사용
//hiddenId : 중복확인 버튼 클릭 여부 체크(0: 클릭 안함 1: 클릭 함)
