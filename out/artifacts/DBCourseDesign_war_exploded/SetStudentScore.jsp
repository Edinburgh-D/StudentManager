<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/3
  Time: 1:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="Entity.Teacher" %>
<html>
<head>
    <title>SetStudentScore</title>
</head>
<body>
<%
    Teacher teacher = (Teacher)session.getAttribute("teacher");
%>
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
<%!
    String num_[]=new String[35];
    String time_[]=new String[35];
    String name_[]=new String[35];
    String Stu_num[]=new String[200];
    String Score_;
%>
<%
    Connection connection ;
    Statement sql;
    ResultSet rs;
    int i=0,day,time;

    try    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC", "root", "1234");
        sql=connection.createStatement();
        String sql_1 ;
        sql_1= " select Cou_number,Cou_name,Cou_time from Course where Tea_num = '";
        sql_1=sql_1+teacher.getTea_number()+"';";
        rs=sql.executeQuery(sql_1);
        while(rs.next()){
            num_[i]=rs.getString(1);
            name_[i]=rs.getString(2);
            day=Integer.parseInt(rs.getString(3))/10;
            time=Integer.parseInt(rs.getString(3))%10;
            time_[i]="周"+day+"第"+time+"节";
            i++;
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
<form actinon="" method="get">
<%
    try    {
    Class.forName("com.mysql.cj.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC", "root", "1234");
    sql=connection.createStatement();
    String sql_1 ;
    int q;
    for(int j=0;j<i;j++){
        q=0;
        out.print("<tr>"+"请为"+time_[j]+name_[j]+num_[j]+"课所有学生打分:"+"</tr>");
        sql_1= " select Stu_number,Stu_name from Student,Grade where Grade.Stu_num=Student.Stu_number and Grade.term='";
        sql_1=sql_1+term_+"' and Grade.Cou_num="+"'"+num_[j]+"';";
        rs=sql.executeQuery(sql_1);
        out.print("<table border=2>");
        out.print("<tr>");
        out.print("<th widdth=500>"+"学号：");
        out.print("<th widdth=800>"+"姓名：");
        out.print("<th widdth=300>"+"分数：");
        out.print("</tr>");

        out.print("<form actinon=\"\" method=post>");

        while(rs.next()) {
            out.print("<tr>");
            Stu_num[q]=rs.getString(1);
            out.print("<th widdth=500>"+rs.getString(1));
            out.print("<th widdth=800>"+rs.getString(2));
            out.print("<th widdth=300><input type=text name=score szze=20>");
            out.print("<input type=submit value=\"提交\">");
            Score_=request.getParameter("score");
            sql_1="update Grade set Cou_score=";
            sql_1=sql_1+"'"+Score_+"'"+" where Stu_num=" +"'"+Stu_num[q]+"' and Cou_num=";
            sql_1=sql_1+"'"+num_[j]+"';";
           // out.print(sql_1);
            sql.executeUpdate(sql_1);
            out.print("</tr>");
            q++;
        }
        out.print("</form>");
        out.print("</table>");

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
</body>
</html>
