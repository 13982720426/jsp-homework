<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="head.txt"></jsp:include>
<title>Three</title>
</head>
<body bgcolor = "8fbc8f">
<font color = white>
This is three.jsp
</font>
<br>
<%
String s = request.getParameter("number");
out.println("传递过来的值是"+s);
%>
<br><img src = "2.jpg" width = "<%=s%>" height = "<%=s%>">
</body>
</html>
