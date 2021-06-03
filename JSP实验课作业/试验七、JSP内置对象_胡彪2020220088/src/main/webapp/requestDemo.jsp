<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestDemo</title>
</head>
<body bgcolor = "#fffff0">
<form action = "" method = "post">
<input type = "text" name = "qwe">
<input type = "submit" name = "提交">
</form>
请求方式：<%=request.getMethod() %><br>
请求的资源：<%=request.getRequestURI() %><br>
请求用的协议：<%=request.getProtocol() %><br>
请求的文件名：<%=request.getServletPath() %><br>
请求的服务器的IP：<%=request.getServerName() %><br>
请求服务器的端口：<%=request.getServerPort() %><br>
客户端IP地址：<%=request.getRemoteAddr() %><br>
客户端主机名：<%=request.getRemoteHost() %><br>
表单提交来的值：<%=request.getParameter("qwe") %><br>

<%
	String str = "";
	if(request.getParameter("qwe")!=null){
		Enumeration enumt = request.getParameterNames();
		while(enumt.hasMoreElements()){
			str = enumt.nextElement().toString();
			out.println(str+":"+request.getParameter(str)+"<br>");
		}
	}
%>
</body>
</html>
