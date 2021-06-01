<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="head.txt"></jsp:include>
<title>Error</title>
</head>
<body>
<br>
<%
String s = request.getParameter("mess");
out.println("传递过来的错误信息"+s);
%>
<br>
<img src = "1.jpg" width = "<%=s%>" height = "<%=s%>">
</body>
</html>
