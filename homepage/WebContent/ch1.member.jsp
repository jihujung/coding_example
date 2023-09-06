<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>homepage</title>
</head>
<script src ="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

//중복체크 버튼을 눌렀는지
var clickidChecked = false;

//주민번호 마스킹 처리
function maskNumberBack(){
	var numberBack = document.getElementById('numberBack').value;
	var numberFront = document.getElementById('numberFront').value;
	
	if(numberFront == ""){
		alert('주민번호 앞자리부터 입력해주세요.');
		document.getElementById('numberBack').value = '';
		document.getElementById('numberFront').focus();
		return false;
	}
	
	if(numberBack.length >=1) { //입력값이 비어있지 않을 경우
		 var maskedNumber = numberBack.slice(0, -1) + '*';
		 document.getElementById('numberBack').value = maskedNumber;
	}
	return true;
}


//아이디 유효성 검사
function checkId() {
    var id = document.getElementById('id').value;
    var idRegExp = /^[a-zA-Z0-9]+$/;

    if (!idRegExp.test(id)) {
        alert('아이디는 영어와 숫자만 입력할 수 있습니다.');
        document.getElementById('id').value = '';
        document.getElementById('id').focus();
        return false;
    }
    return true;
}

//중복체크 검사
function idCheck(){
	//ID
	var id = document.getElementById('id').value;
	
	if (id == "") {
		alert('아이디를 입력해주세요.');
		document.getElementById('id').focus();
	  }else if (id == "test"){
		alert('중복되는 아이디입니다. 다른 아이디를 입력해주세요.');
		document.getElementById('id').value = '';
        document.getElementById('id').focus();
        return false;
	}else{
		alert('사용할 수 있는 아이디입니다.');
	}
	return true;
}

//가입신청 클릭시 비밀번호와 이메일, 주민번호 검사
function checkPwdNb(){
	 //ID
	 var id = document.getElementById('id').value;
	 
	 var pwd = document.getElementById('password').value;
	 var pwdChk = document.getElementById('passwordCheck').value;
	 
	//이름
	 var userName = document.getElementById('userName').value;
	
	 var emailF = document.getElementById('emailFront').value;
	 var mailFRegExp = /^[a-zA-Z0-9]+$/;
	 var emailB = document.getElementById('emailBack').value;
	 var mailBRegExp = /^[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+$/;
	 var numberFront = document.getElementById('numberFront').value;
	 
	
	 var numberRegExp = /^[0-9]*$/; 
	
	 if(id == ""){ //id를 입력하지 않았을 때
		 alert('ID를 입력해주세요.');
	     document.getElementById('id').focus();
	     return false;
	 }
	 
	 if(!clickidChecked){
		 alert('ID 중복체크를 해주세요.');
		 return false;
	 }
	 
	 if (pwd == "" ){
		 alert('비밀번호를 입력해주세요.');
		 document.getElementById('password').value = '';
		 document.getElementById('password').focus();
		 return false;
	 }else if(pwdChk == ""){
		 alert('비밀번호를 한번 더 입력 해주세요.');
		 document.getElementById('passwordCheck').value = '';
		 document.getElementById('passwordCheck').focus();
		 return false;
	 }else if (pwd != pwdChk) {
		 alert('비밀번호와 비밀번호 확인이 일치하지 않습니다.');
		 document.getElementById('passwordCheck').value = '';
		 document.getElementById('passwordCheck').focus();
		 return false;
	 }
	 
	 if(userName == ""){ //이름을 입력하지 않았을 때
		 alert('이름을 입력해주세요.');
		 document.getElementById('userName').focus();
		 return false;
	 }
	 
	 
	 if(emailF == "" || emailB == ""){
		 alert('이메일을 입력해주세요.');
		 document.getElementById('emailFront').value = '';
		 document.getElementById('emailFront').focus();
		 return false;
	 }
	 
	 if(!mailFRegExp.test(emailF) || !mailBRegExp.test(emailB)) {
		 alert('이메일 형식이 올바르지 않습니다.');
		 document.getElementById('emailFront').value = '';
		 document.getElementById('emailBack').value = '';
		 document.getElementById('emailFront').focus();
		 return false;
	 }
	 
	 if(numberFront.length != 6 || !numberRegExp.test(numberFront)){
		 alert('올바른 주민번호를 넣어주세요.');
		 document.getElementById('numberFront').value = '';
		 document.getElementById('numberFront').focus();
		 return false;
	 }
	 
	 return true;
}



function checkName(){
	var userName = document.getElementById('userName').value;
	var nameRegExp = /^[a-zA-Z가-힣]{0,4}$/;
	
	
	if (!nameRegExp.test(userName)) {
		alert('이름은 올바른 형식의 한글과 영어 다섯글자만 입력할 수 있습니다.');
		document.getElementById('userName').value = '';
		document.getElementById('userName').focus();
		return false;
	}
	return true;
}

//휴대폰 두번째로 커서 옮기기
function checkPhone(){
	var phone = document.getElementById('phoneFront').value;
	
	if(phone.length >= 4) {
		document.getElementById('phoneBack').focus();
	}
}




 
 
</script>
<body>
<form action='' method='post' >
<table width='1400px' height='650px'>
<tbody>
<tr>
<td>회원가입</td>
</tr>



<tr style='margin-left:auto; margin-right:auto'>
<td>
<br/>
<hr/>
<br/>
<p>ID : <input type='text' style='width:100px' name='id' id='id' onkeyup='checkId()'/> <input type='button' value='중복체크' class='idcheck' onClick='idCheck()'/>
<input type='hidden' name='checked_id' id='checked_id' value=''/>
<br/><p>

<p>비밀번호 : <input type='password' style='width:120px' name='password' id='password'/> </p>

<p>비밀번호 확인 : <input type='password' style='width:120px' name='passwordCheck' id='passwordCheck'/></p>

<p>이름 : <input type='text' style='width:120px' name='userName' id='userName' onkeyup='checkName()'/> <br/></p>

<p>이메일 : <input type='text' style='width:150px' name='emailFront' id='emailFront'/>@<input type='text' style='width:150px' name='emailBack' id='emailBack'/></p>

<label> 휴대폰 : </label><select name='phone'>
<option value='1'>010</option>
<option value='1'>011</option>
<option value='1'>016</option>
<option value='1'>017</option>
<option value='1'>019</option>
</select>-<input type='text' style='width:60px' id='phoneFront' onkeyup='checkPhone()'/>-<input type='text' style='width:60px' id='phoneBack'/>

<p>성별 : <input type='radio' name='gender' value='male'/> 남자
        <input type='radio' name='gender' value='female' /> 여자 </p> 

<p>주민번호 : <input type='text' style='width:170px' name='numberFront' id='numberFront' /> - <input type='text' style='width:170px' name='numberBack' id='numberBack' onkeyup='maskNumberBack()' /></p>

<p>주소 : <input type='text' style='width:150px' name='address' id='address'/>
<br/>
*주소는 (시/도)만 입력해주세요 (예: 경기도, 서울특별시, 경상남도 등)</p>
<br/>
<hr/>
<br/>

</tr>
<td>
 <input type='button' value='가입신청' onClick='checkPwdNb()'/>  <input type='reset' value='다시입력'/>  <input type='button' value='취소'/>
</td>
</tr>

</tbody>
</table>
</form>
</body>
</html>
