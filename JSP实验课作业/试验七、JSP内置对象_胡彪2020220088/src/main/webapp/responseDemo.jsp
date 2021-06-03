<%@ page language="java" import = "java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>responseDemo</title>
</head>
<body>
<%
	String address = request.getParameter("where");
	if(address !=null){
		if(address.equals("cqupt"))
			response.sendRedirect("http://www.cqupt.edu.cn");
		else if(address.equals("syzx"))
			response.sendRedirect("http://172.22.104.2");
		else if(address.equals("jwzx"))
			response.sendRedirect("http://jwzx.cqupt.edu.cn");
	}
%>
<b>Please select:</b>
<br>
<form action="" method = "CET">
<select name = "where">
<option value = "cqupt" selected>
go to 重邮
<option value = "syzx">
go to 实验在线
<option value = "jwzx">
go to 教务在线
</select>
<input type = "submit" value = "go">
</form>
</body>
</html>
