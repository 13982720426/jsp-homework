<%@ page language="java" import = "java.util.* " contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head><title>session对象_例1</title></head>
</head>
<body><br>
session的创建时间：<%=session.getCreationTime()%>&nbsp;&nbsp;<%=new Date(session.getCreationTime()) %><br><br>
session的ID号：<%=session.getId()%><br><br>
客户端最近一次请求时间：<%=session.getLastAccessedTime() %>&nbsp;&nbsp;<%=new java.sql.Time(session.getLastAccessedTime())%><br><br>
两次请求时间间隔多长时间此SESSION被取消（s）：<%=session.getMaxInactiveInterval() %><br><br>
是否创建一个新的SESSION：<%=session.isNew()?"是":"否" %><br><br>
<%
session.putValue("name","实验中心");
session.putValue("number","62461369");
%>
<%
for(int i = 0;i<session.getValueNames().length;i++){
	out.println(session.getValueNames()[i]+"="+session.getValue(session.getValueNames()[i]));
}
%>
<!-- 返回的是从格林威治时间(GMT)1970年1月1日0:00:00起到计算当时的毫秒数 -->
</body>
</html>
