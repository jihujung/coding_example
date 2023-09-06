<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	
// 	document.getElementById('txt3').value;
	
// 	$("input#txt3").val();
// 	$("input.cls3").val();
// 	$("table[name=txt3]").val();
// 	$("div[value=123454]").val();
// 	$("span[type=text]").val();
// 	$("[id=txt3]").val();
	
	$("input").eq(1).val();
	$("[name=txt]").eq().val();
	//#id, .class, 
	$("table tr td").eq(3).text();
	
	
	$("#txt2").length;
	
	$("#txt2").val().length;
	
	$("#txt2").val();
</script>

</head>
<body>
	<input type = "text" name = "txt" id = "txt1" value = "study01">
	<input type = "text" name = "txt" id = "txt2" value = "data111">
	<input type = "text" name = "txt" id = "txt3" class = "cls3" value = "123454">
	
	<select>
		<option value = "123">aaaa</option>
		<option value = "qqq">가나다라</option>
		<option></option>
		<option></option>
		<option></option>
	</select>
	
	<textarea rows="" cols="" >sdklnflkdsnfklsdnf</textarea>
	
	<table>
		<tr>	
			<td name = "1" value = "sss">1</td>
			<td>2</td>
			<td>3</td>
			<td>4</td>
			<td>5</td>
		</tr>
	</table>
	
	<span>sdfsf</span>
	<div>1123h12l3kn</div>
	
	
	
	
	
	
	
	
	
</body>
</html>