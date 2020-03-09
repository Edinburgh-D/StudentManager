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
    <title>添加学生信息</title>
</head>
<body>
    <form action="WelcomeStu.jsp" method="post">
        <br>学生信息</br>
        学号：<input type="text" name="Stu_number"><br/>
        姓名：<input type="text" name="Stu_name"><br/>
        性别：<input type="text" name="Stu_sex"><br/>
        出生年月：<input type="text" name="Stu_borndate"><br/>
        入校日期：<input type="text" name="Stu_begindate"><br/>
        院：<input type="text" name="Stu_academy"><br/>
        系：<input type="text" name="Stu_department"><br/>
        班级：<input type="text" name="Stu_class"><br/>

        <input type="submit" value="添加">
    </form>
</body>
</html>
