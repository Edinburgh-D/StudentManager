<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/3
  Time: 0:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Entity.Student" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="Entity.Teacher" %>
<html>
<head>
    <title>TeaCourseTable</title>
</head>
<body>
<%
    Teacher teacher = (Teacher)session.getAttribute("teacher");
%>
<%!
    Calendar calendar=Calendar.getInstance();
    int month=calendar.get(Calendar.MONTH)+1;
    String term_;
    String name_[][]=new String[5][7];
    String room_[][]=new String[5][7];
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
    Connection connection ;
    Statement sql;
    ResultSet rs;
    int flag=1,times,day;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC", "root", "1234");
        sql=connection.createStatement();
        String sql_1 ;
        sql_1= " select Cou_name,Cou_room,Cou_time from Course where Tea_num = '";
        sql_1=sql_1+teacher.getTea_number()+"';";
        rs=sql.executeQuery(sql_1);
        while(rs.next()){
            flag = Integer.parseInt(rs.getString(3));
            times=flag%10;
            day=flag/10;
            name_[times-1][day-1]=rs.getString(1);
            room_[times-1][day-1]=rs.getString(2);
        }
        for(int i=0;i<5;i++){
            for(int j=0;j<7;j++){
                if(name_[i][j]==null)
                    name_[i][j]="";
                if(room_[i][j]==null)
                    room_[i][j]="";
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
<table border=2>
    我的课表：
    <tr >
        <th width=100>
        <th width=100>星期一
        <th width=100>星期二
        <th width=100>星期三
        <th width=100>星期四
        <th width=100>星期五
        <th width=100>星期六
        <th width=100>星期天
    </tr>
    <tr >
        <th width="100">第一节
        <th width="100"><%=name_[0][0]%><br><%=room_[0][0]%><%=s%>
        <th width="100"><%=name_[0][1]%><br><%=room_[0][1]%><%=s%>
        <th width="100"><%=name_[0][2]%><br><%=room_[0][2]%><%=s%>
        <th width="100"><%=name_[0][3]%><br><%=room_[0][3]%><%=s%>
        <th width="100"><%=name_[0][4]%><br><%=room_[0][4]%><%=s%>
        <th width="100"><%=name_[0][5]%><br><%=room_[0][5]%><%=s%>
        <th width="100"><%=name_[0][6]%><br><%=room_[0][6]%><%=s%>
    </tr>
    <tr>
        <th width="100">第二节
        <th width="100"><%=name_[1][0]%><br><%=room_[1][0]%><%=s%>
        <th width="100"><%=name_[1][1]%><br><%=room_[1][1]%><%=s%>
        <th width="100"><%=name_[1][2]%><br><%=room_[1][2]%><%=s%>
        <th width="100"><%=name_[1][3]%><br><%=room_[1][3]%><%=s%>
        <th width="100"><%=name_[1][4]%><br><%=room_[1][4]%><%=s%>
        <th width="100"><%=name_[1][5]%><br><%=room_[1][5]%><%=s%>
        <th width="100"><%=name_[1][6]%><br><%=room_[1][6]%><%=s%>
    </tr>
    <tr >
        <th width="100">第三节
        <th width="100"><%=name_[2][0]%><br><%=room_[2][0]%><%=s%>
        <th width="100"><%=name_[2][1]%><br><%=room_[2][1]%><%=s%>
        <th width="100"><%=name_[2][2]%><br><%=room_[2][2]%><%=s%>
        <th width="100"><%=name_[2][3]%><br><%=room_[2][3]%><%=s%>
        <th width="100"><%=name_[2][4]%><br><%=room_[2][4]%><%=s%>
        <th width="100"><%=name_[2][5]%><br><%=room_[2][5]%><%=s%>
        <th width="100"><%=name_[2][6]%><br><%=room_[2][6]%><%=s%>
    </tr>
    <tr >
        <th width="100">第四节
        <th width="100"><%=name_[3][0]%><br><%=room_[3][0]%><%=s%>
        <th width="100"><%=name_[3][1]%><br><%=room_[3][1]%><%=s%>
        <th width="100"><%=name_[3][2]%><br><%=room_[3][2]%><%=s%>
        <th width="100"><%=name_[3][3]%><br><%=room_[3][3]%><%=s%>
        <th width="100"><%=name_[3][4]%><br><%=room_[3][4]%><%=s%>
        <th width="100"><%=name_[3][5]%><br><%=room_[3][5]%><%=s%>
        <th width="100"><%=name_[3][6]%><br><%=room_[3][6]%><%=s%>
    </tr>
    <tr >
        <th width="100">第五节
        <th width="100"><%=name_[4][0]%><br><%=room_[4][0]%><%=s%>
        <th width="100"><%=name_[4][1]%><br><%=room_[4][1]%><%=s%>
        <th width="100"><%=name_[4][2]%><br><%=room_[4][2]%><%=s%>
        <th width="100"><%=name_[4][3]%><br><%=room_[4][3]%><%=s%>
        <th width="100"><%=name_[4][4]%><br><%=room_[4][4]%><%=s%>
        <th width="100"><%=name_[4][5]%><br><%=room_[4][5]%><%=s%>
        <th width="100"><%=name_[4][6]%><br><%=room_[4][6]%><%=s%>
    </tr>

</table>
</body>
</html>
