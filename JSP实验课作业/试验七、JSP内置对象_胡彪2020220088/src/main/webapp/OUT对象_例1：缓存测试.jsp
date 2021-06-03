<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer = "1kb"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OUT对象_例1:缓存测试</title>
</head>
<body>
<%
for(int i = 0;i<10;i++)
	out.println(i+"{"+out.getRemaining()+"}");
%><br>
缓存大小:<%=out.getBufferSize() %>
剩余缓存大小:<%=out.getRemaining() %>
自动刷新:<%=out.isAutoFlush() %>
<%--out.clearBuffer(); --%>
<%--out.clear(); --%>
1.该JSP网页已完成信息的输出
2.输出缓冲区已满
3.JSP中调用out.flush()或response.flushbuffer()
</body>
</html>
