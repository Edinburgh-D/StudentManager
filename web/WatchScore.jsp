<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/2
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="Entity.Student" %>
<html>
<head>
    <title>课程信息</title>
</head>
<body>
<%!
    Calendar calendar=Calendar.getInstance();
    int month=calendar.get(Calendar.MONTH)+1;
    String term_;
    String s=" ";
%>

<%  if(month<=6){
    term_=String.valueOf(calendar.get(Calendar.YEAR))+"年"+"春季";
}

    if(month>=10){
        term_=String.valueOf(calendar.get(Calendar.YEAR))+"年"+"秋季";
    }
%>
<%
    Student stu = (Student)session.getAttribute("student");
    // System.out.println(stu.getStu_number());
    // out.println(stu.getStu_name(),stu.getStu_number());
%>
<%
    Connection con ;
    Statement sql;
    PreparedStatement pstmt;
    ResultSet rs;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC", "root", "1234");
        String sq = "select course.Cou_name ,Grade.Cou_score from grade ,course  where grade.Stu_num=? and grade.Cou_num= Course.Cou_number and grade.term =?;";
        pstmt = con.prepareStatement(sq);
       // sql=con.createStatement();
        //rs=sql.executeQuery("select Cou_name Cou_num from grade ,course where Stu_number='3170932011' and grade.Cou_num= Course.Cou_num");
        pstmt.setString(1,stu.getStu_number());
        pstmt.setString(2,term_);
        rs = pstmt.executeQuery();
        while ((rs.next())){
                    out.print(rs.getString(1));
                out.print(rs.getString(2));


            out.print("<br>");
        }
        con.close();

    } catch (ClassNotFoundException e) {
        e.printStackTrace();


    } catch (SQLException e) {
        e.printStackTrace();


    } catch (Exception e) {
        e.printStackTrace();

    }

%>

</body>
</html>

