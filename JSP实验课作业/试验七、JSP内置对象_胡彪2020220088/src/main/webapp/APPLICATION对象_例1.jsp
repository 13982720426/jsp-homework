<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>APPLICATION对象_例1</title>
</head>
<body><br>
JSP(SERVLET)引擎名及版本号：<%=application.getServerInfo() %><br><br>
返回/application1.jsp虚拟路径的真实路径：<%=application.getRealPath("/applicationDemo.jsp") %><br><br>
服务器支持的Servlet API的大版本号：<%=application.getMajorVersion() %><br><br>
服务器支持的Servlet API的小版本号：<%=application.getMinorVersion() %><br><br>
指定资源（文件及目录）的URL路径：<%=application.getResource("/applicationDemo.jsp") %>
<br><br><!-- 可以将application1.jsp换成一个目录 -->
<!-- 由于application一直存在于服务器端，可以利用此特性对网页记数 -->
<%
if (application.getAttribute("count")==null)
	application.setAttribute("count", "1");
else if(session.isNew())
	application.setAttribute("count", Integer.toString(Integer.valueOf(application.getAttribute("count").toString()).intValue()+1));
%>
你是第<%=application.getAttribute("count") %>位访问者
</body>
</html>
