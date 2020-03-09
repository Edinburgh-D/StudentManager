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
    <title>RegisterCou</title>
</head>
<body>
<form action="/DBCourseDesign" method="post">
    <br>课程信息</br>
    课程号：<input type="text" name="Cou_number"><br/>
    课程名：<input type="text" name="Cou_name"><br/>
    教师职工号：<input type="text" name="Tea_num"><br/>
    上课教室：<input type="text" name="Cou_room"><br/>
    上课时间：<input type="text" name="Cou_time">（输入类型如周2第3节：11 周五第五节：55）<br/>
    人数：<input type="text" name="Cou_person"><br/>
    学分：<input type="text" name="Cou_scoure"><br/>

    <input type="submit" value="添加">
</form>
</body>
</html>
