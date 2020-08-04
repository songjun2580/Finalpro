<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function show(){
	var msg='';
	for(var i=0; i<document.fm.checkbox.length; i++){
		if(document.fm.checkbox[i].checked==true){

			msg+=document.fm.checkbox[i].value+' ';
			
		    }
		}
		window.alert(msg);
	}
</script>
</head>
<body>
<form name="fm" action="calcul2.jsp">
<table>
<tr>
	<td>
		<input type="checkbox" name="checkbox" value="20000"><br>
		<input type="text" name="text" value="15평~24평">
	</td>
	<td>
	<input type="checkbox" name="checkbox" value="30000">
	<input type="text" name="text2" value="35평~204평">
	</td>
</tr>
</table>
	<input type="submit" value="ok">
</form>
</body>
</html>