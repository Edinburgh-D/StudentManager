<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/2
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update</title>
</head>
<body>
 请输入需要修改的学生姓名或学号：
    <form action="/DBCourseDesign" method="post">
        姓名<input type="text" name="UpdateStuName">
        <input type="submit" value="查询">
    </form>
    <form action="/DBCourseDesign" method="post">
        学号<input type="text" name="UpdateStuNumber">
        <input type="submit" value="查询">
    </form>
</body>
</html>
