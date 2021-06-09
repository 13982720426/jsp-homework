<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
String connectionUrl = "jdbc:sqlserver://localhost:1433;user=sa;password=tt807423;"+"DatabaseName=Northwind;";
Connection con = DriverManager.getConnection(connectionUrl);
String SQL = "SELECT ProductName,UnitPrice FROM Products ORDER BY ProductName";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(SQL);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border = "1" bgcolor = "cyan">
<tr>
<th>序号</th>
<th align = "center">产品名称</th>
<th align = "center">单价</th>
</tr>
<%
int i = 0;
while(rs.next())
{
	i++;
%>
<tr>
<td><%=i %></td>
<td><%=rs.getString("ProductName") %></td>
<td><%=rs.getString("UnitPrice") %></td>
</tr>
<%
}
rs.close();
stmt.close();
con.close();
%>
</table>
</body>
</html>