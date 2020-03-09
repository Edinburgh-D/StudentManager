<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>

<%--int i=0;
		i=(int)session.getAttribute("row");
		System.out.print(i+"  session");
		session.setAttribute("row",i-1); --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<% 	String teanames=request.getParameter("teaname");	
 		String atti=request.getParameter("atti");
 		String method=request.getParameter("method");
 		String abi=request.getParameter("abi");
 		System.out.println(atti);
 		Connection 	connection=null;
		Statement statement=null;
		PreparedStatement pstmt=null;
		
		try {
			int row=0;
			Class.forName("com.mysql.jdbc.Driver");
			connection =(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/DBCourseDesign?useUnicode=true&characterEncoding=utf-8","root","1234");
			statement = connection.createStatement();
			String sql ="insert into Evaluation values(?,?,?,?)";
			pstmt=connection.prepareStatement(sql);
			pstmt.setString(1, teanames);
			pstmt.setString(2, atti);
			pstmt.setString(3,method);
			pstmt.setString(4,abi);
			row=pstmt.executeUpdate();
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
		if(connection!=null)
			connection.close();
		if(statement!=null)
			statement.close();
		if(pstmt!=null){
			pstmt.close();
		}
		}catch(SQLException e) {
			e.printStackTrace();
			}	
		}	
		
		%>
		<h1>恭喜您，评教成功！！</h1>
		<br>
		你评教的教师为：<%=teanames %>
		<br>你对教师的打分情况为：
		<br>教学态度：<%=atti %>分   
		教学方法：<%=method %>分  
		教学能力：<%=abi %>分 
		<br><a href="pingjiao.jsp" >点击此处返回评教页面！</a>
</body>
</html>

