<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "java.sql.*" %>
    <%
    Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
    String connectionUrl = "jdbc:sqlserver://localhost:1433;user=sa;password=tt807423;"+"databaseName=Northwind;";
    Connection con = DriverManager.getConnection(connectionUrl);
    String sno,sname;
    sno = request.getParameter("sno");
    sname = request.getParameter("sname");
    String SQL = "INSERT INTO student values('"+sno+"','"+sname+"')";
    Statement stmt = con.createStatement();
    int count = stmt.executeUpdate(SQL);
    stmt.close();    
    
    SQL = "SELECT sno,sname FROM student";
    stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery(SQL);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
数据插入成功！<br>
<table border = "1" bgcolor = "cyan">
<tr><th>序号</th><th align = "center">学号</th><th align = "center">姓名</th></tr>
<%
int i = 0;
while (rs.next())
{
	i++;
%>
<tr><td><%=i %></td><td><%=rs.getString("sno") %></td><td><%=rs.getString("sname") %></td></tr>
<%
}
stmt.close();
con.close();
%>
</table>
</body>
</html>