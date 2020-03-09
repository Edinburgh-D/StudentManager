<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/2
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="Entity.Student" %>
<html>
<head>
    <title>ChosedCou</title>
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
    <%
        String[] items = request.getParameterValues("item");
    %>
    <%
        Student stu = (Student)session.getAttribute("student");
        Connection connection ;
        Statement sql;
        ResultSet rs;
        int flag = 1;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC", "root", "1234");
            sql=connection.createStatement();
            String sql_1 ,sql_2;
            for(int j = 0 ; j < items.length ; j++){
                sql_2= "select count(*) from Grade where Stu_num ='";
                sql_2=sql_2+stu.getStu_number() +"'";
                sql_2=sql_2+" and "+"Cou_num"+"="+"'"+items[j]+"';";
                rs=sql.executeQuery(sql_2);
//                rs.next();
//                if((rs.getString(1))=="1"){
//                    out.print("存在重复选课,请重新选课");
//                    flag = 0;
//                    break;
//                }
//            }
            if(flag != 0 ){
                for(int i = 0 ; i < items.length ; i++){
                    sql_1= "insert into Grade values(";
                    sql_1=sql_1+"'"+stu.getStu_number()+"',";
                    sql_1=sql_1+"'"+items[i]+"',";
                    sql_1=sql_1+"'"+"-"+"',";
                    sql_1=sql_1+"'"+term_+"');";
                    sql.executeUpdate(sql_1);

                }
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
