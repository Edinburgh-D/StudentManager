<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/2
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>UpdateCou</title>
</head>
<body>
请输入需要修改的课程名或课程号：
<form action="/DBCourseDesign" method="post">
    姓名<input type="text" name="UpdateCouName">
    <input type="submit" value="查询">
</form>
<form action="/DBCourseDesign" method="post">
    学号<input type="text" name="UpdateCouNumber">
    <input type="submit" value="查询">
</form>
</body>
</html>
