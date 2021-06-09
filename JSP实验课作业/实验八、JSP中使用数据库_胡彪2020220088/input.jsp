<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "insert.jsp" method = "post">
信息提交：<br>
<table border = "1" bgcolor = "cyan">
<tr><th>学号</th><th align = "center">姓名</th></tr>
<tr>
<td><input type = "text" name = "sno" value = "2009211211"></td>
<td><input type = "text" name = "sname" value = "zhangsan"></td>
</tr>
<tr><td colspan = "2" align = "center"><input type = "submit" name = "submit" value = "提交"></td></tr>
</form>
</body>
</html>