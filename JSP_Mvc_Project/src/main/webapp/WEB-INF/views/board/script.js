var msg_writer="작성자를 입력하세요.";
var msg_pwd = "비밀번호를 입력하세요.";
var msg_subject = "글 제목을 입력하세요.";
var msg_content = "글 내용을 입력하세요.";

var pwdError ="비밀번호가 일치하지 않습니다.\n 확인후 다시 시도하세요.";
var updateError = "글수정에 실패했습니다. \n 확인후 다시 시도하세요.";
var deleteError ="글삭제에 실패했습니다. \n 확인후 다시 시도하세요.";
var insertError ="글작성에 실패했습니다. \n 확인후 다시 시도하세요.";

//에러메시지
function errorAlert(msg){
	alert(msg);
	window.history.back();
}
//게시글 수정, 삭제
function pwdFocus(){
	document.pwdForm.pwd.focus();
}

function pwdCheck(){
	if(!document.pwdForm.pwd.value){
		alert(msg_pwd);
		document.pwdForm.pwd.focus();
		return false;
	}
}

function modifyFocus(){
	document.modifyForm.subject.focus();
}
function modifyCheck(){
	if(!document.modifyForm.subject.value){
		alert(msg_subject);
		document.modifyForm.subject.focus();
		return false;
	}else if(!document.modifyForm.content.value){
		alert(msg_content);
		document.modifyForm.content.focus();
		return false;
	}else if(!document.modifyForm.pwd.value){
		alert(msg_pwd);
		document.modifyForm.pwd.focus();
		return false;
	}
}

function writeFocus(){
	document.writeForm.writer.focus();
}

function writeCheck(){
	if(!document.writeForm.writer.value){
		alert(msg_writer);
		document.writeForm.writer.focus();
		return false;
	}else if(!document.writeForm.pwd.value){
		alert(msg_pwd);
		document.writeForm.pwd.focus();
		return false;
	}else if(!document.writeForm.subject.value){
		alert(msg_subject);
		document.writeForm.subject.focus();
		return false;
	}else if(!document.writeForm.content.value){
		alert(msg_content);
		document.writeForm.content.focus();
		return false;
	}
}