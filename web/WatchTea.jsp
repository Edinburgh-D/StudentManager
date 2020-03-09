<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/2
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="Entity.Teacher" %>
<html>
<head>
    <title>WatchTea</title>
</head>
<body>
<%!
      String Tea_number;
      String Tea_name;
      String Tea_sex;
      String Tea_borndate;
      String Tea_begindate;
      String Tea_academy;
      String Tea_department;
      String Tea_tittle;
      String Tea_password;
%>
<%
    Teacher teacher = (Teacher)session.getAttribute("teacher");

    Connection connection ;
    PreparedStatement pstmt;
    ResultSet rs;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC", "root", "1234");
        String sql = "select * from teacher where Tea_number=?";
        pstmt = connection.prepareStatement(sql);

        pstmt.setString(1,teacher.getTea_number());


        rs= pstmt.executeQuery();

        while ((rs.next())){
            Tea_number=rs.getString(1);
            Tea_name=rs.getString(2);
            Tea_sex=rs.getString(3);
            Tea_borndate=rs.getString(4);
            Tea_begindate=rs.getString(5);
            Tea_academy=rs.getString(6);
            Tea_department=rs.getString(7);
            Tea_tittle=rs.getString(8);
            Tea_password=rs.getString(9);
        }
        connection.close();

    } catch (ClassNotFoundException e) {
        e.printStackTrace();


    } catch (SQLException e) {
        e.printStackTrace();


    } catch (Exception e) {
        e.printStackTrace();

    }

%>
<%=Tea_number%>
<br/>
<%=Tea_name%>
<br/>
<%=Tea_sex%>
<br/>
<%=Tea_borndate%>
<br/>
<%=Tea_begindate%>
<br/>
<%=Tea_academy%>
<br/>
<%=Tea_department%>
<br/>
<%=Tea_tittle%>
<br/>
<%=Tea_password%>
</body>
</html>
