<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/31
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加教师信息</title>
</head>
<body>
<form action="/DBCourseDesign" method="post">
    <br>教师信息</br>
    学号：<input type="text" name="Tea_number"><br/>
    姓名：<input type="text" name="Tea_name"><br/>
    性别：<input type="text" name="Tea_sex"><br/>
    出生年月：<input type="text" name="Tea_borndate"><br/>
    入校日期：<input type="text" name="Tea_begindate"><br/>
    院：<input type="text" name="Tea_academy"><br/>
    系：<input type="text" name="Tea_department"><br/>
    职称：<input type="text" name="Tea_tittle"><br/>

    <input type="submit" value="添加">
</form>
</body>
</html>
