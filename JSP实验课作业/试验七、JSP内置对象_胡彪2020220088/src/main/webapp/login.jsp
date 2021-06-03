<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>校验界面</title>
</head>
<body>
<jsp:useBean id = "student" class = "zuoye.StudentLogin" />
<jsp:setProperty property="*" name="student"/>
<%
	String studentNumber = student.getStudentNumber();
	String password = student.getPassword();
	if ((studentNumber != null)&&password != null){
		if(studentNumber.equals("qq")&&password.equals("123")){
			response.sendRedirect("http://jwzx.cqupt.edu.cn");
	}
		else{
			response.sendRedirect("login.html");
		
		}
}%>

</body>
</html>
