<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function a(obj){
	var a= obj.src.value;
	alert(a);
	var b=obj.src;
	alert(b);
}
</script>
</head>
<body>
이미지태그
1<img   alt="1" src="D:/finalproject5/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/finalproject/resources/upload/images/e7dece1d-3a8a-4953-b28b-dd2d287eea23_dbcp_03-1.png">
<br>
2<img alt="2" src="/resources/upload/images/e7dece1d-3a8a-4953-b28b-dd2d287eea23_dbcp_03-1.png">
<br>
3<img alt="3" src="finalproject/resources/upload/images/e7dece1d-3a8a-4953-b28b-dd2d287eea23_dbcp_03-1.png">
<br>
4<img alt="4" onclick="a(this)" src="/finalproject/resources/upload/images/e7dece1d-3a8a-4953-b28b-dd2d287eea23_dbcp_03-1.png">

	
</body>
</html>