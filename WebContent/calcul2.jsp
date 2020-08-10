<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String price=(String)request.getParameter("checkbox");
String text=(String)request.getParameter("text");
String price2=(String)request.getParameter("checkbox2");
String text2=(String)request.getParameter("text2");
 %>
 <%=price %>
 <%=text %>
 <%=price2 %>
 <%=text2 %>
</body>
</html>