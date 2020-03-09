<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/2
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<html>
<head>
    <title>查看所有学生信息</title>
</head>
<body>
<%!
    String number;
    String name;
    String sex;
    String borndata;
    String begindata;
    String academy;
    String department;
    String clas;
    String password;
%>

<%


%>



<%
    List<Map> list = new ArrayList<>();
    Connection connection ;
    PreparedStatement pstmt;
    ResultSet rs;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC", "root", "1234");
        String sql = "select * from student ";
        pstmt = connection.prepareStatement(sql);




        rs= pstmt.executeQuery();

        while ((rs.next())){
            number=rs.getString(1);
            name=rs.getString(2);
            sex=rs.getString(3);
            borndata=rs.getString(4);
            begindata=rs.getString(5);
            academy=rs.getString(6);
            department=rs.getString(7);
            clas=rs.getString(8);
            password=rs.getString(9);
            Map map = new HashMap();
            map.put("number",number);
            map.put("name",name);
            map.put("sex",sex);
            map.put("borndate",borndata);
            map.put("begindate",begindata);
            map.put("academy",academy);
            map.put("department",department);
            map.put("class",clas);
            map.put("password",password);
            list.add(map);
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
<table>
        <tr>
            <th>number</th>
            <th>name</th>
            <th>sex</th>
            <th>borndate</th>
            <th>begindate</th>
            <th>academy</th>
            <th>department</th>
            <th>class</th>
            <th>password</th>
            <c:forEach items="${list}" var="use" vatStatus="idx">
                <tr>
                        <td>${use.number}</td>
                        <td>${use.name}</td>
                        <td>${use.sex}</td>
                        <td>${use.borndate}</td>
                        <td>${use.begindate}</td>
                        <td>${use.academy}</td>
                        <td>${use.department}</td>
                        <td>${use.clas}</td>
                        <td>${use.password}</td>

</tr>
            </c:forEach>
        </tr>
</table>

</body>
</html>
