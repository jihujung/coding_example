<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>homepage</title>
</head>
<!-- <script src ="http://code.jquery.com/jquery-latest.min.js"></script>  -->
<script type="text/javascript">

var actualNumber = 0;

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
//모든 사항들 빈칸 있으면 넘어갈 수 없도록 검사 
function checkPwdNb(){
	 //ID
	 var id = document.getElementById('id').value;
	
	  //비밀번호
	 var pwd = document.getElementById('password').value;
	  
	 //비밀번호 확인 
	 var pwdChk = document.getElementById('passwordCheck').value;
	 
	 //이름
	 var userName = document.getElementById('userName').value;
	 
	 //이메일주소 앞부분
	 var emailF = document.getElementById('emailFront').value;
	 
	 //이메일주소 앞부분 유효성검사(영어나 숫자만 가능)
	 var mailFRegExp = /^[a-zA-Z0-9]+$/;
	 
	 //이메일주소 뒷부분
	 var emailB = document.getElementById('emailBack').value;
	 
	 //이메일주소 뒷부분 유효성검사(영어나 숫자 . 영어나 숫자 형식만 가능)
	 var mailBRegExp = /^[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+$/;
	 
	 //주민번호 앞부분
	 var numberFront = document.getElementById('numberFront').value;
	 
	 //주민번호 뒷부분
	 var numberBack = document.getElementById('numberBack').value;
	
	 //주민번호 앞부분 유효성검사(숫자만, 1~6개까지만 가능)
	 var numberFRegExp = /^[0-9]{1,6}*$/; 
	 
	 //주민번호 뒷부분 유효성검사(숫자만, 1~7개까지만 가능)
	 var numberBRegExp = /^[0-9]{1,7}*$/; 
	 
	 //주소
	 var address = document.getElementById('address').value;
	 
	 //주소 유효성검사
	 var addRegExp = /^[가-힣]+$/;
	
	 if(id == ""){ //id를 입력하지 않았을 때
		 alert('ID를 입력해주세요.');
	     document.getElementById('id').focus();
	     return false;
	 }
	 
	 if (pwd == ""){ //비밀번호를 입력하지 않았을 때
		 alert('비밀번호를 입력해주세요.');
		 document.getElementById('password').focus();
		 return false;
	 }else if(pwdChk == ""){ //비밀번호 확인을 입력하지 않았을 때
		 alert('비밀번호를 한번 더 입력 해주세요.');
		 document.getElementById('passwordCheck').focus();
		 return false;
	 }else if (pwd != pwdChk) { //비밀번호와 비밀번호 확인이 일치하지 않을 때
		 alert('비밀번호와 비밀번호가 일치하지 않습니다.');
		 document.getElementById('passwordCheck').value = '';
		 document.getElementById('passwordCheck').focus();
		 return false;
	 }
	 
	 if(emailF == "" || emailB == ""){ //이메일 항목을 입력하지 않았을 때
		 alert('이메일을 입력해주세요.');
		 document.getElementById('emailFront').focus();
		 return false;
	 }
	 
	 //이메일 유효성검사
	 if(!mailFRegExp.test(emailF) || !mailBRegExp.test(emailB)) {
		 alert('이메일 형식이 올바르지 않습니다.');
		 document.getElementById('emailFront').value = '';
		 document.getElementById('emailFront').focus();
		 return false;
	 }
	 
	 if(userName == ""){ //이름을 입력하지 않았을 때
		 alert('이름을 입력해주세요.');
		 document.getElementById('userName').focus();
		 return false;
	 }
	 
	 //주민번호 유효성 검사
	 if(!numberFRegExp.test(numberFront) || !numberBRegExp.test(numberBack)){
		 alert('올바른 주민번호를 넣어주세요.');
		 document.getElementById('numberFront').value = '';
		 document.getElementById('numberFront').focus();
		 return false;
	 }
	 
	 if(address == ""){ //주소를 입력하지 않았을 때
		 alert('주소를 입력해주세요.');
		 document.getElementById('address').focus();
		 return false;
	 }else if(!addRegExp.test(address)){
		 alert('주소는 한글로만 입력가능합니다.');
		 document.getElementById('address').value = '';
		 document.getElementById('address').focus();
		 return false;
	 }
	 
	 return true;
}


//이름 유효성 검사
function checkName(){
	var userName = document.getElementById('userName').value;
	var nameRegExp = /^[a-zA-Z가-힣]+$/;
	
	
	if (!nameRegExp.test(userName)) {
		alert('이름은 한글과 영어 다섯글자만 입력할 수 있습니다.');
		document.getElementById('userName').value = '';
		document.getElementById('userName').focus();
		return false;
	}
	return true;
}

//휴대폰 커서 이동
function movePhone(){
	var phone = document.getElementById('phoneFront').value;
	
	if(phone.length == 4) {
		document.getElementById('phoneBack').focus();
	}
	
}





 
</script>
<body>
<form action='' method='post' >
<table>
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
</select>-<input type='text' style='width:60px' id='phoneFront' onchange='checkPhone()'/>-<input type='text' style='width:60px' id='phoneBack'/>

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
<tr>
<td>
 <input type='button' value='가입신청' onClick='checkPwdNb()'/>  <input type='reset' value='다시입력'/>  <input type='button' value='취소'/>
</td>
</tr>

</tbody>
</table>
</form>
</body>
</html>
