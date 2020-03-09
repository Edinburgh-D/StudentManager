<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/2
  Time: 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SearchTea</title>
</head>
<body>
请输入想要查询老师的姓名：
<form action="/DBCourseDesign" method="post">
    姓名：<input type="text" name="SearchTeaName">
    <input type="submit" value="查询">
</form>
</body>
</html>
