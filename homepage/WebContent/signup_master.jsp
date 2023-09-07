<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src ="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

//팀장님이 알려주신 것 + 내가 만든 jQuery 완성본!!
//하지만 빈칸이 있을 경우 안 넘어가게 하는건 못함ㅜㅜ

//대기상태를 만들어줘야 body부터 실행되고 script 실행됨
//header에 쓰는게 일반적/ body안에 사용가능함
//jquery 이벤트함수가 실행이 안됨

//이렇게 사용하면 많은 기능들을 할때 eventParam의 값만 바꿔주면 다른 event함수 사용이 편리해짐
//var eventParam = "keyup";
//$("[name=name]").on(eventParam, function(){})


$(document).ready(function(){
	
	$(function(){
		
		//ID 중복체크 버튼을 눌렀을 때
		$("#idChk").click(function(){
			
			var engNum = /^[a-zA-Z0-9]+$/;
			var id = $("#id").val();
			
			//빈칸일 경우
			if(id==''){
				alert("아이디를 입력하세요.");
				$("#id").focus();
		    //유효성검사
			}else if(!engNum.test(id)){
				alert("아이디는 영어와 숫자만 가능합니다.");
				$("#id").val("").focus();
		    //중복체크
			}else if(id == 'test'){
				
			}else
				alert("사용 가능한 아이디입니다.");
			     //속성의 기능 추가
			     // 이 기능을 사용할 거면 true
			    $("#id").prop("disabled",true); //id 입력칸 비활성화
			    //$("#idChk").prop("disabled", true); //중복체크 버튼 비활성화
		})//ID function
		
		
		//비밀번호 확인
		$("#regi_btn").click(function(){
			
			var pass = $("#pass").val();
			var pass2 = $("#pass2").val();
				
			//비밀번호 빈칸일 경우
			if(pass == '' || pass2 == ''){
				alert("비밀번호와 비밀번호 확인을 입력해주세요.");
				$("#pass").focus();
			//비밀번호와 비밀번호 확인이 다를 때
			}else if(pass != pass2){
				alert("비밀번호가 일치하지 않습니다.");
				$("#pass2").val("").focus();
			}	
			
		})//비밀번호 확인 function
		
		
		//이름 5글자
		$("[name=name]").keyup(function(){
			
			//이름이 다섯글자가 넘으면
			if($("#name").val().length > 5){
				alert("이름은 최대 5글자까지 가능합니다.");
				//인덱스 0부터 5전까지의 값을 이름값에 넣어라
				$("#name").val( $("#name").val().slice(0,5) );
			}
			
		})//이름 function
			
		
		//이메일
		$("#regi_btn").click(function(){
			
			var mailFRegExp = /^[a-zA-Z0-9]+$/;
			var mailBRegExp = /^[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+$/;
			
			var email1 =  $("#email1").val();
			var email2 =  $("#email2").val()
			
			if( email1 == '' || email2 == ''){
				alert("이메일 주소를 입력해주세요.");
				$("#email1").focus();
			}else if(!mailFRegExp.test(email1) || !mailBRegExp.test(email2)){
				alert("올바른 이메일 형식으로 입력해주세요.");
				$("#email2").val("");
				$("#email1").val("").focus();
			}
			
		})//이메일 function

		
		//휴대폰
		$("#ph2").keyup(function(){
			if($("#ph2").val().length >=4) {
				$("#ph3").focus();
			}
		}) //휴대폰 function
		
		
		
		//주민번호
		$("#jumin2").keyup(function(){
			                             //slice, substr 가능
			                             //charAt으로 마지막글자 잘라내기
			var jumin2 = $("#jumin2").val().charAt($("#jumin2").val().length-1);
			//기존 jumin3에다가 jumin2에서 자른 마지막글자를 추가해주기  
			$("#jumin3").val( $("#jumin3").val() + jumin2 );                           
			                             
	        //jumin2의 값이 1보다 클 때 == 2번째 자리부터
	 		if($("#jumin2").val().length > 1){
	 			//jumin2의 값중에 0번째 인덱스부터 마지막전의 글자까지 + * 해주기
				$("#jumin2").val( $("#jumin2").val().slice(0,-1) + '*');
			}
		
		})//주민번호 function
		
		//주소
		$("#regi_btn").click(function(){
			
			var addRegExp = /^[가-힣]+$/;
			
			if($("#address").val() =''){
				alert("주소를 입력해주세요.");
				$("#address").focus();
			}
			
			if(!addRegExp.test(address)){
				alert("주소는 한글로만 입력해주세요.");
				$("#address").val("").focus();
			}
			
		})
		
		
		
		
		
	})//function 전체
	
})//ready function

</script>
</head>
<body>
<form>
 <table width="1400" height="650">
  <tr>
   <td width="100%" height="10%">회원가입
   </td>
  </tr>
  <tr>
   <td height="60%" align="center" valign="top">
   <hr><br>
   <p align="left" style="padding-left:160px">
   <br><br>
   ID : <input type="text" size="10" maxlength="15" name="id" id = "id">
   		<input type = "button" name = "idChk" id="idChk"  value = "중복체크">
   <br><br>
  비밀번호 : <input type="password" size="15" maxlength="20" name="pass" id = "pass"><br><br>
  비밀번호 확인 : <input type="password" size="15" maxlength="20" name="pass2" id = "pass2"><br><br>
   이름 : <input type="text" size="13" name="name" id = "name" onkeyup="fncNameKeyUp(this)"><br><br>
   이메일 : <input type="text" size="15" name="email1" id = "email1">@<input type="text" size="15" name="email2" id = "email2"><br><br>
   휴대폰 : <select name="ph1">
       <option value="010">010</option>
       <option value="011">011</option>
       <option value="016">016</option>
       <option value="017">017</option>
       <option value="019">019</option>
     </select>
     - <input type="text" name="ph2" size="5" maxlength="4" id = "ph2"> - <input type="text" name="ph3" size="5" maxlength="4" id = "ph3"><br><br>
  성별 : <input type="radio" name="gender" id="male" value="male"> <label for="male">남자</label>&nbsp;&nbsp;
   <input type="radio" name="gender" id="female" value="female"> <label for="female">여자</label><br><br>
   
  주민번호 : <input type = "text" name = "jumin1" id = "jumin1"> -  <input type = "text" name = "jumin2" id = "jumin2"><br><br>
         <input type = "hidden" name = "jumin3" id = "jumin3">
 
 주소 : <input type="text" name="address" id="address" size="15" maxlength="15"><br>
   *주소는 (시/도)만 입력해주세요 (예: 경기도, 서울특별시, 경상남도 등)
   </p>
  </td>
  </tr>
  <tr>
   <td align="center">
   <hr><br>
    <input type="button"  id ="regi_btn" value="가입신청">&nbsp;
    <input type="reset" value="다시입력">&nbsp;
    <input type="button" value="취소">
   </td>
  </tr>
 </table>
</form>
</body>
</html>