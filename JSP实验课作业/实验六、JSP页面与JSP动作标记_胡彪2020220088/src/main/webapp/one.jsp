<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>One</title>
</head>
<body bgcolor = "8fbc8f">
<jsp:include page="head.txt"></jsp:include>
<form action="" method = get name = form>
请输入1-100的整数：<input type = "text" name = "number">
<input type = "submit" name = "submit" value = "提交">
</form>
<%
String number = request.getParameter("number");
if(number==null){
	number = "0";
}
try{
	int n = Integer.parseInt(number);
	if(n>=1&&n<=50){
		%>
		<jsp:forward page = "two.jsp">
		 <jsp:param name = "number" value = "<%=n %>"/>
		 </jsp:forward>
	<%}
	else if(n>50&&n<=100){
		%>
		<jsp:forward page = "three.jsp">
		 <jsp:param name = "number" value = "<%=n %>"/>
		 </jsp:forward>
	<%}
}
catch(Exception e){
	%>
	<jsp:forward page = "error.jsp">
		<jsp:param name = "mess" value = "<%=e.toString()%>"/>
		</jsp:forward>
		<%
}
%>
</body>
</html>
