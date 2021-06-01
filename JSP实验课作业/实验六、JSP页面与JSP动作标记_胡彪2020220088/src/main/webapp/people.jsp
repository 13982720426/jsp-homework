<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>people</title>
</head>
<body>
<%!
int count = 0;
StringBuffer person;

public void judge()
{
	if(count==0){
		person = new StringBuffer();
	}
}
public void addPerson(String p){
	if(count==0){
		person.append(p);
	}
	else{
		person.append(","+p);
	}
	count++;
}
%>
<%
String a = request.getParameter("name");
byte bb[]=a.getBytes("utf-8");
a = new String(bb,"utf-8");

if(a.length()==0||a.length()>10){
	%>
	<jsp:forward page = "inputName.jsp"/>
	<%}
	judge();
	addPerson(a);
	%>
	目前有<%=count%>人浏览了该页面，他们的名字是:
	<br><%=person%>
</body>
</html>
