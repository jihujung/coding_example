<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>

$(document).ready(function() {

	$(function(){
		
		//전체선택 체크시
		$("#all").click(function(){
		
			if($("#all").is(":checked")){ //체크되면 true
				$("[name=chk]").attr("checked","checked");
 				//$("[name=chk]").prop("checked",true);
			}else{ //체크안되면  false
				$("[name=chk]").removeAttr("checked");
 				//$("[name=chk]").prop("checked",false);
			}
			
		})//전체선택 click function
		
		
		//버튼 눌렀을 때
		$("#btn").click(function(){
			var checked = $(".cls:checked").length;
			
			//null값 체크 먼저!
			if(checked == 0){
				alert("항목을 체크해주세요.");
			}else if(checked < 5 || $("#all").is(":checked")){
				alert("성공");
			}else{
				alert("실패");
			}
			
		})//버튼 눌렀을 때 function
		
		$(".cls").click(function(){
			var checkbox = $(".cls").length;
			var checked = $(".cls:checked").length;
			
			if(checkbox == checked){
				$("#all").prop("checked",true);
			}else{
				$("#all").prop("checked",false);
			}
			
			//check된 텍스트 가져오기
			if($(this).is(":checked")){
				$("#dvTxt").append($(this).val() + "  ");
			}else{
				$("#dvTxt").text( $("#dvTxt").text().replace($(this).val(),'') );
			}
		})
	
	})//function 전체

})//ready function
		
	//jQuery, javaScript 모두 가능
	function aa(){
 		$("#aa").attr("class","clss");
 		$("#aa").attr("type","button");
	}
	


</script>
<style>
	.clss{
		font-size: 50px;
	}
</style>
</head>
<body>
<div>
	<input type = "button" name = "bb" id = "bb" value = "버튼" onclick = "aa()">
	<input type = "text" name = "aa" id = "aa"  value = "테스트">
</div>


<div>
	<input type = "checkbox" name = "all" id = "all"><label for = "all">전체</label>
	<input type = "button" name = "btn" id = "btn" value = "버튼">
</div>
<div>
	<input type = "checkbox" name = "chk" id = "chk1" class = "cls" value= "체크1"><label for="chk1">체크1</label>
	<input type = "checkbox" name = "chk" id = "chk2" class = "cls" value= "체크2"><label for="chk2">체크2</label>
	<input type = "checkbox" name = "chk" id = "chk3" class = "cls" value= "체크3"><label for="chk3">체크3</label>
	<input type = "checkbox" name = "chk" id = "chk4" class = "cls" value= "체크4"><label for="chk4">체크4</label>
	<input type = "checkbox" name = "chk" id = "chk5" class = "cls" value= "체크5"><label for="chk5">체크5</label>
	<input type = "checkbox" name = "chk" id = "chk6" class = "cls" value= "체크6"><label for="chk6">체크6</label>
	<input type = "checkbox" name = "chk" id = "chk7" class = "cls" value= "체크7"><label for="chk7">체크7</label>
	<input type = "checkbox" name = "chk" id = "chk8" class = "cls" value= "체크8"><label for="chk8">체크8</label>
	<input type = "checkbox" name = "chk" id = "chk9" class = "cls" value= "체크9"><label for="chk9">체크9</label>
</div>
<div id = "dvTxt"></div>
</body>
</html>