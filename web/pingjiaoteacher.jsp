<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--int i=0;
i=(Integer)session.getAttribute("row");
System.out.print(i);
session.setAttribute("row",i-1); --%>
<%! 
String teanames=null;
%>
<%
teanames=request.getParameter("teaname");
%>
<h1>教师信息</h1>
接下来请对“ <%= teanames%> ”老师做评教：
<form action="pingjiaoinsert.jsp" method="post">
<table border="1" width="100%">
<tr><td>
教学态度：</td>
<td>
<select name="atti" >
			<option selected value="20">20</option>
			<option  value="40">40</option>
			<option value="60">60</option>
			<option value="80">80</option>
			<option value="100">100</option>
		</select></td>
		<tr><td>
教学方式：</td>
<td>
<select name="method" >
			<option selected value="20">20</option>
			<option  value="40">40</option>
			<option value="60">60</option>
			<option value="80">80</option>
			<option value="100">100</option>
		</select></td></tr>
		<tr><td>
教学能力：</td><td>
<select name="abi" >
			<option selected value="20">20</option>
			<option  value="40">40</option>
			<option value="60">60</option>
			<option value="80">80</option>
			<option value="100">100</option>
		</select></td></tr>
		<tr><td>
		<input  name="teaname" value="<%=teanames%>" type="hidden"/>
		<input type="submit" name="submit">
		<input type="reset" name=reset></td></tr>
		</table>
</form>
</body>
</html>