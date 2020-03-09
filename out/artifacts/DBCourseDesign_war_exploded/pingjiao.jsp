<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>评 教</title>
</head>
<body>
<!--
JDBC 驱动名及数据库 URL 
数据库的用户名与密码，需要根据自己的设置
useUnicode=true&characterEncoding=utf-8 防止中文乱码



<a href="teacher<%--=n--%>.jsp">

<%-- --%>
 -->

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/DBCourseDesign?useUnicode=true&characterEncoding=utf-8"
     user="root"  password="1234"/>
 
<sql:query dataSource="${snapshot}" var="result">
select course.Tea_name,course.Cou_name from teacher,course,grade where course.Tea_number=teacher.Tea_number and grade.Stu_number=course.Stu_number;
</sql:query>
<h1>欢迎评教！！</h1>
<table border="1" width="100%">
<tr>
   <th>教师姓名</th>
   <th>课程名称</th>
</tr>
<%int n=0;
String[]name=new String[4];
name[0]="";
%>
<c:forEach var="row" items="${result.rows}">
<%n=n+1;
%>
<tr>
   <td><form action="pingjiaoteacher.jsp" method="post">
<input type="hidden" name=teaname value="${row.Tea_name}">
<input type="submit" value= "${row.Tea_name}"/>

</form></td>
   <td><c:out value="${row.Cou_name}"/></td>
</tr>

</c:forEach>
<br>请查看以下信息并选择你想要评教的老师：       <br>
<% 
		Connection 	connection=null;
		Statement statement=null;
		ResultSet rs=null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		connection =(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/DBCourseDesign?useUnicode=true&characterEncoding=utf-8","root","1234");
		statement = connection.createStatement();
		String sql ="select Tea_name,Cou_name from teacher,course,grade where course.Tea_name=teacher.Tea_name and grade.Stu_number=course.Stu_number ";
		rs=statement.executeQuery(sql);
		
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
		if(rs!=null)
			rs.close();
		if(connection!=null)
			connection.close();
		if(statement!=null)
			statement.close();
		}catch(SQLException e) {
			e.printStackTrace();
			}	}
%>
<%

%>
</form>
</table>
 
</body>
</html>