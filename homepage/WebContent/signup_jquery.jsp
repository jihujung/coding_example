<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<%--
id : 문자(영어), 숫자만, 중복체크, "test" 

pw : 비밀번호확인(가입신청버튼 클릭시)  

이름 : 5글자(maxlength x)-script 
        문자(한글,영어)
    5글자 넘어갈 시 바로 체크

이메일 : 유효성(가입신청버튼 클릭시)

휴대폰 : 숫자만 4자리 -> 3번째로
          4개 입력하면 3번째 창으로 커서이동

주민번호 : 숫자만 주민번호 유효성
    뒷자리 맨첫자리만 숫자 1******
    (가입 신청클릭시)
--%>
<script>
   var actualValue = ''; 
   
   function checkValiadtion() 
      {
      
      var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
      var getName = RegExp(/^[가-힣a-zA-Z]{1,5}$/);
      var getPhone = RegExp(/^[0-9]{3,4}$/);
      var getEmail1 = RegExp(/^[a-zA-Z0-9]+$/);
      var getEmail2 = RegExp(/^[a-zA-Z0-9.-]+\.[a-zA-Z]{3,}$/);
      var getJumin = RegExp(/^[0-9]{6,7}$/);
      
      //아이디 공백 확인
         if($("#id").val() == ""){
           alert("아이디를 입력해주세요");
           $("#id").focus();
           return false;
         }      
         //아이디 유효성검사
         if(!getCheck.test($("#id").val())){
           alert("형식에 맞게 입력해주세요");
           console.log($("#id").val());
           $("#id").val("");
           $("#id").focus();
           return false;
         }

         //비밀번호 공백 확인
         if($("#pass").val() == "" || $("#pass2").val() == ""){
           alert("패스워드 입력바람");
           $("#pass").focus();
           return false;
         }
        
         //비밀번호 확인
         if($("#pass").val() != $("#pass2").val()){
            alert("패스워드 불일치");
            $("#pass").focus();
            
            console.log($("#pass").val(), $("#pass2").val());
            return false;
         }

         //이름 공백 확인
         if($("#name").val() ==""){
            alert("이름을 입력해주세요");
            $("#name").focus();
            return false;
         }
        
         //이름 유효성 검사
         if(!getName.test($("#name").val())){
              alert("이름은 한글 1~5글자만 가능합니다.");
              console.log($("#name").val());
              $("#name").val("");
              $("#name").focus();
              return false;
         }
         
         //이메일 공백 검사
         if($("#email1").val() == "" || $("#email2").val() == ""){
            alert("이메일을 입력해주세요");
            $("#email1").focus();
            return false;
         }
         //이메일 유효성 검사
         if(!getEmail1.test($("#email1").val())){
            alert("이메일은 영어와 숫자 조합으로 입력해주세요");
            $("#email1").val("");
            $("#email1").focus();
            return false;
         }
         if (!getEmail2.test($("#email2").val())) {
              alert("뒷 부분은 영어와 숫자 조합, 그리고 '.영문' 형식으로 입력해주세요");
              $("#email2").val("");
              $("#email2").focus();
              return false;
          }
         //휴대폰 공백 체크
         if($("#ph2").val() == "" || $("#ph3").val() == ""){
            alert("휴대폰 번호를 입력하세요");
            $("#ph2").focus();
            return false;
         }
         
         //휴대폰 유효성검사
         if(!getPhone.test($("#ph2").val() || !getPhone.test($("#ph3").val()))){
              alert("핸드폰번호는 숫자로만 입력해주세요");
              console.log($("#ph2").val(), $("#ph3").val());
              $("#ph2").val("");
              $("#ph3").val("");
              $("#ph2").focus();
              return false;
        }
       
         //주민번호 공백체크
         if($("#jumin1").val() == "" || $("#jumin2").val() == ""){
            alert("주민번호를 입력해주세요");
            $("#jumin1").focus();
             return false;
         }
         //주민번호 유효성검사
         if(!getJumin.test($("#jumin1").val()) || !getJumin.test(actualValue)){
              alert("주민번호는 숫자로만 입력해주세요");
              console.log($("#jumin1").val(), actualValue);
              $("#jumin1").val("");
              $("#jumin2").val("");
              actualValue = '';
              $("#jumin1").focus();
              return false;
          }
         
         alert("회원가입 성공!");
         console.log("id :"+$("#id").val());
         console.log("pass :"+$("#pass").val(), "pass2 :"+$("#pass2").val());
         console.log("name :"+$("#name").val());
         console.log("email :"+$("#email1").val()+"@"+$("#email2").val());
         console.log("phone :"+$("select[name=ph1] option:selected").text()+"-"+$("#ph2").val()+"-"+$("#ph3").val());
         console.log("jumin :"+$("#jumin1").val()+"-"+actualValue);
         //$(location).attr('href', 'http://localhost:8080/test/join');
         return true;
      }
   
   $(document).ready(function() {
      //입력시 포커스 전환
       $('#name').on('keyup', function() {
           if(this.value.length == 5) {
              $('#email1').focus();
           }
       });
   
       $('#ph2').on('keyup', function() {
           if(this.value.length == 4) {
              $('#ph3').focus();
           }
       });
       
       $('#jumin1').on('keyup', function() {
           if(this.value.length == 6) {
              $('#jumin2').focus();
           }
       });
        //주민번호 뒷자리 첫번째 숫자만 보이기
       $('#jumin2').on('input', function() {
           actualValue += $(this).val().substr(-1); 
           
           let maskedValue = actualValue.charAt(0) + '*'.repeat(actualValue.length - 1);
           $(this).val(maskedValue);
       });
       
   });
   
   function checkId() {
       const user = ["test"]; 

       if (user.includes($("#id").val())) {
           alert("사용 불가능한 아이디입니다.");
           $("#id").focus();
       } else {
           alert("사용 가능한 아이디입니다.");
       }
   }
   
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
         <input type = "button" name = "idChk" value = "중복체크" onclick="checkId()">
   <br><br>
   비밀번호 : <input type="password" size="15" maxlength="20" name="pass" id = "pass"><br><br>
   비밀번호 확인 : <input type="password" size="15" maxlength="20" name="pass2" id = "pass2"><br><br>
   이름 : <input type="text" size="13" name="name" id = "name"><br><br>
   이메일 : <input type="text" size="15" name="email1" id = "email1">@<input type="text" size="15" name="email2" id = "email2"><br><br>
   휴대폰 : <select name="ph1">
       <option value="010">010</option>
       <option value="011">011</option>
       <option value="016">016</option>
       <option value="017">017</option>
       <option value="019">019</option>
     </select>
     - <input type="text" name="ph2" size="5" maxlength="4" id = "ph2"> - <input type="text" name="ph3" size="5" maxlength="4" id = "ph3"><br><br>
   성별 : <input type="radio" name="gender" value="남자"> 남자&nbsp;&nbsp;
   <input type="radio" name="gender" value="여자"> 여자<br><br>
   주민번호 : <input type = "text" name = "jumin1" id = "jumin1"> -  <input type = "text" name = "jumin2" id = "jumin2" maxlength="7"><br><br>
   주소 : <input type="text" name="address" size="15" maxlength="15"><br>
   *주소는 (시/도)만 입력해주세요 (예: 경기도, 서울특별시, 경상남도 등)
   </p>
  </td>
  </tr>
  <tr>
   <td align="center">
   <hr><br>
    <input type="button"  id = "regi_btn" value="가입신청" onclick="checkValiadtion()">&nbsp;
    <input type="reset" value="다시입력">&nbsp;
    <input type="button" value="취소">
   </td>
  </tr>
 </table>
</form>
</body>
</html>