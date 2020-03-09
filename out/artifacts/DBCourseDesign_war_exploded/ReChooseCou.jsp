<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/2
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<html>
<head>
    <title>choose</title>
</head>
<body>
<%!
    Calendar calendar=Calendar.getInstance();
    int month=calendar.get(Calendar.MONTH)+1;
    String term_;
%>

<%  if(month<=6){
    term_=String.valueOf(calendar.get(Calendar.YEAR))+"年"+"秋季";
}

    if(month>=10){
        term_=String.valueOf(calendar.get(Calendar.YEAR)+1)+"年"+"春季";
    }
%>
<form action="ChosedCou.jsp"  name="">
    <%

        Connection con ;
        PreparedStatement pstmt;
        ResultSet res  = null;
        String sq;
        int flag = -1;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC", "root", "1234");
            //
//            sq="insert into Grade values(?,?,null,?)";
//            pstmt = con.prepareStatement(sq);
//            pstmt.setString(1,stu);
//            pstmt.setString(2,number);
//            pstmt.setString(3,term_);
                sq = "select * from course" ;
                pstmt=con.prepareStatement(sq);
            res = pstmt.executeQuery();
            out.print("<table border=2>");
            out.print("<tr>");
                out.print("<th width =100>"+"课程号");
                out.print("<th width= 100>"+"课程名称");
                out.print("<th width= 100 >"+"职工号");
            out.print("<th width= 100 >"+"上课教室");
            out.print("<th width= 100 >"+"上课时间");
            out.print("<th width= 100 >"+"上课人数");
            out.print("<th width= 100 >"+"人数");
            out.print("<th width= 100 >"+"标记");
            out.print("</tr>");



            while (res.next()){

                out.print("<tr>");
                out.print("<td>"+res.getString(1)+"</td>");
                out.print("<td>"+res.getString(2)+"</td>");
                out.print("<td>"+res.getString(3)+"</td>");
                out.print("<td>"+res.getString(4)+"</td>");
                out.print("<td>"+res.getString(5)+"</td>");
                out.print("<td>"+res.getString(6)+"</td>");
                out.print("<td>"+res.getString(7)+"</td>");
                out.print("<td>"+"<input type=checkbox name=item value="+res.getString(1)+">");
                out.print("</tr>");
            }
            out.print("</table>");
            con.close();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>

    <br><input type="submit" value="提交" name="submit">
        <input type="reset" value="重置">

    <%

    %>
</form>

</body>
</html>
