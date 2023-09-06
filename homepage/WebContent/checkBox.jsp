<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>체크박스</title>
</head>
<script src ="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">


	$(document).ready(function() {

		$(function() {
			
			//전체선택 체크시
			$("#all").click(function(){
				
				if($("#all").prop("checked")){
					$("[name=chk]").prop("checked", true);
				}else {
					$("[name=chk]").prop("checked", false);
				}
			})//전체선택 click function
			
			
			//체크박스 하나 선택을 풀었을 때 "전체" 체크해제
			$("[name=chk]").click(function(){
				if($("[name=chk]:checked").length == 0){
					alert("항목을 체크해주세요")
				}else if($("[name=chk]:checked").length == 9){
					$("#all").prop("checked", true);
				}else {
					$("#all").prop("checked", false);
				}
			})//체크 하나 뺄 때 function
			
			
			//버튼 눌렀을 때
			$("#btn").click(function(){
				if($("[name=chk]:checked").length == 9 || $("[name=chk]:checked").length <=4 ){
					alert("성공!");
				}else {
					alert("실패!");
				}
			})//버튼 function
			
		
			//check된 텍스트 가져오기
			//each를 쓰면 안됨 배열로 가져와서 순서대로만 가져오게됨
			
		
	
	
 



			
		})//function 전체

	})//ready function
</script>
<body>
<input type="checkbox" name="all" id="all" value="전체"><label for="all">전체</label>
<input type="button" name="btn" id="btn" value="버튼">

<br/>
<input type="checkbox" name="chk" id="item1" value="서울"><label for="item1">서울</label>
<input type="checkbox" name="chk" id="item2" value="인천"><label for="item2">인천</label>
<input type="checkbox" name="chk" id="item3" value="경기"><label for="item3">경기</label>
<input type="checkbox" name="chk" id="item4" value="강원"><label for="item4">강원</label>
<input type="checkbox" name="chk" id="item5" value="부산"><label for="item5">부산</label>
<input type="checkbox" name="chk" id="item6" value="대전"><label for="item6">대전</label>
<input type="checkbox" name="chk" id="item7" value="울산"><label for="item7">울산</label>
<input type="checkbox" name="chk" id="item8" value="목포"><label for="item8">목포</label>
<input type="checkbox" name="chk" id="item9" value="제주"><label for="item9">제주</label>

<br/><br/><br/><div id = "dvTxt"></div>
</body>
</html>