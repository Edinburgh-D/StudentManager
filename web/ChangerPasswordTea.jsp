<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/2
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="textml;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%@ page import="Entity.Teacher" %>
<html>

    <head>
        <title>更改密码</title>
    </head>
            <%
    Teacher tea = (Teacher)session.getAttribute("teacher");
%>
    <body>
        <form action="" method="post" >
        <tr>
            <td width=80>新密码:
            <input type="password" name="first">
        </tr>

        <tr>
            <input type="submit" value="提交" name="submit">
        </tr>
        <%
            String first_=request.getParameter("first");

            out.print(first_);

//            if(first_.equals(second_)){
//                out.print("两次密码不一致！");
//            }
//            if(first_.length() > 16){
//                out.print("密码过长（最长16位）");
//            }
//            if(first_.length()<6){
//                out.print("密码过短（最短6位）");
//            }

                Connection con;

                ResultSet rs;
                PreparedStatement pstmt;


                try{
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC","root","1234");
                    String sql = " update  teacher set Tea_password=? where Tea_number=?";
                    pstmt = con.prepareStatement(sql);

                    pstmt.setString(1,first_);
                    pstmt.setString(2,tea.getTea_number());

                    pstmt.executeUpdate(sql);

                        out.print("更改成功");



                }catch(ClassNotFoundException e){
                    e.printStackTrace();
                }catch (SQLException e){
                    e.printStackTrace();
                }









        %>
        </form>
    </body>
    <html>