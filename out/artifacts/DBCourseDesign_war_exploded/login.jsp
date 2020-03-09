<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/30
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page import ="Entity.*" %>--%>
<%--<%@ page import="java.sql.*" %>--%>

<html>
<head>
    <title>
        user
    </title>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="login.css">
    <meta charset="utf-8">
    <script>
        function checkUser(){
            var username = document.getElementById("username").value;//文本框中的值，var是各种变量类型的集合
            if(username == ""){
                document.getElementById("tishiUsername").innerHTML ="用户名不能为空";
                return;//必须要写return跳出
            }else{
                document.getElementById("tishiUsername").innerHTML ="";
            }

            var pwd = document.getElementById("pwd").value;
            if(pwd == ""){
                document.getElementById("tishiPwd").innerHTML ="密码不能为空";
                return;
            }else{
                document.getElementById("tishiPwd").innerHTML ="";
                var reg = /^[0-9]{8}$/;
                if(!reg.test(pwd)){
                    document.getElementById("tishiPwd").innerHTML ="密码只能为8位数字";
                    return;
                }
            }





        }
    </script>
    <%--<script>var errori ='<%=request.getParameter("error")%>'--%>
    <%--if(errori=='yes'){--%>
        <%--alert("密码错误！");--%>
    <%--}--%>
    <%--</script>--%>
    <style>
        <!--span常用来修饰单独字符-->
        span{
            color:red;
        }
    </style>
</head>
<body>

<!--
    用户名，密码，重复密码不可为空
    密码重复密码相同
    密码为六位
    邮箱有@
    条件全满足则跳转
-->

<div class="box">
<form action="DBCourseDesign" method="post" form-align="center" >
    <div class="box1">
    <p>
        账号:
        <input name="username" id="username">
        <span>*</span>
        <span id="tishiUsername"></span>
    </p>
    </div>
        <div class="box1">
    <p>
        密码：<input type="password" name="password" id="pwd">
        <span>*</span>
        <span id="tishiPwd"></span>
    </p>
        </div>

    <div class="box1">
        <input type="radio" name="character" value="1" checked>学生

    <div class="box1">
    <input type="radio" name="character" value="2">教师
    </div>
        <div class="box1">
    <input type="radio" name="character" value="3">管理员
        </div>
    <p><input type="submit" value="登录" onclick="checkUser()"></p>

</form>
</div>
<%--<jsp:useBean id='stu' class='Entity.Student',scope='session'>--%>
<%--<jsp:useBean id='stu' class='Entity.Manage',scope='session'/>--%>
<%--<%--%>
    <%--int id = Integer.parseInt(request.getParameter("character"));--%>
    <%--int flag = 0;--%>
    <%--Connection connection = null;--%>
    <%--PreparedStatement pstmt = null;--%>
    <%--ResultSet res = null;--%>
    <%--try{--%>
        <%--Class.forName("com.mysql.cj.jdbc.Driver");--%>
        <%--connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC","root","1234");--%>
        <%--if(id == 1){--%>
            <%--String sql = "select count(*) from Student where Stu_number =? and Stu_password =?";--%>
            <%--pstmt = connection.prepareStatement(sql);--%>

            <%--pstmt.setString(1,request.getParameter("username"));--%>
            <%--pstmt.setString(2,request.getParameter("password"));--%>
            <%--res = pstmt.executeQuery();--%>
            <%--if(res.next()){--%>
                <%--flag = res.getInt(1);--%>
                <%--System.out.println("res"+flag);--%>
            <%--}--%>
            <%--if(flag > 0){//success--%>

                <%--String sql1 = "select * from Student where Stu_number =? and Stu_password =?";--%>
                <%--pstmt = connection.prepareStatement(sql1);--%>
                <%--while(res.next()){--%>
                    <%--stu.setStu_number(res.getString(1));--%>
                    <%--stu.setStu_name(res.getString(2));--%>
                    <%--stu.setStu_sex(res.getString(3));--%>
                    <%--stu.setStu_borndate(res.getString(4));--%>
                    <%--stu.setStu_begindate(res.getString(5));--%>
                    <%--stu.setStu_academy(res.getString(6));--%>
                    <%--stu.setStu_department(res.getString(7));--%>
                    <%--stu.setStu_class(res.getString(8));--%>
                    <%--stu.setStu_password(res.getString(9));--%>
                <%--}--%>
                <%--</jsp:useBean>--%>
                <%--System.out.println("shujukucaozuo"+stu.getStu_name());--%>
                <%--System.out.println("shujukucaozuo"+stu.getStu_borndate());--%>
                <%--return 1;--%>
            <%--}else{//fail--%>
                <%--return 0;--%>
            <%--}--%>
            <%--if(result > 0 ){--%>
                <%--request.getRequestDispatcher("WelcomeStu.jsp").forward(request,response);--%>
                <%--System.out.println("nnumber"+stu.getStu_number()+"name"+stu.getStu_name());--%>
            <%--}else{--%>
                <%--response.sendRedirect("login.jsp?error=yes");--%>
            <%--}--%>

        <%--}else if(id == 2){--%>
            <%--String sql = "select count(*) from Teacher where Tea_number =? and Tea_password =?";--%>
            <%--pstmt = connection.prepareStatement(sql);--%>
            <%--pstmt.setString(1,stu.request.getParameter("username"));--%>
            <%--pstmt.setString(2,request.getParameter("password"));--%>
            <%--res = pstmt.executeQuery();--%>
            <%--if(res.next()){--%>
                <%--flag = res.getInt(1);--%>
                <%--System.out.println("res"+flag);--%>
            <%--}--%>
            <%--if(flag > 0){//success--%>
                <%--<jsp:useBean id='tea' class='Entity.Teacher',scope='session'/>--%>
                <%--String sql1 = "select * from Teacher where Tea_number =? and Tea_password =?";--%>
                <%--pstmt = connection.prepareStatement(sql1);--%>
                <%--while(res.next()){--%>
                    <%--stu.setTea_number(res.getString(1));--%>
                    <%--stu.setTea_name(res.getString(2));--%>
                    <%--stu.setTea_sex(res.getString(3));--%>
                    <%--stu.setTea_borndate(res.getString(4));--%>
                    <%--stu.setTea_begindate(res.getString(5));--%>
                    <%--stu.setTea_academy(res.getString(6));--%>
                    <%--stu.setTea_department(res.getString(7));--%>
                    <%--stu.setTea_class(res.getString(8));--%>
                    <%--stu.setTea_password(res.getString(9));--%>
                <%--}--%>
                <%--System.out.println("shujukucaozuo"+stu.getStu_name());--%>
                <%--System.out.println("shujukucaozuo"+stu.getStu_borndate());--%>
                <%--return 1;--%>
            <%--}else{//fail--%>
                <%--return 0;--%>
            <%--}--%>
            <%--if(result > 0 ){--%>
                <%--request.getRequestDispatcher("WelcomeStu.jsp").forward(request,response);--%>
                <%--System.out.println("nnumber"+stu.getStu_number()+"name"+stu.getStu_name());--%>
            <%--}else{--%>
                <%--response.sendRedirect("login.jsp?error=yes");--%>
            <%--}--%>

        <%--}--%>
            <%--Teacher teacher = new Teacher(name,password);--%>
            <%--int result = TeacherDao.Registertea(teacher);--%>
            <%--if(result > 0 ){--%>
                <%--//  response.sendRedirect("/manPage/WelcomeMan.jsp");--%>

                <%--request.getRequestDispatcher("WelcomeTea.jsp").forward(request,response);--%>
            <%--}else{--%>
                <%--response.sendRedirect("login.jsp?error=yes");--%>

            <%--}--%>

        <%--}else {--%>
            <%--//  response.sendRedirect("WelcomeMan.jsp");--%>
            <%--Manage man = new Manage(name,password);--%>
            <%--int result = manageDao.manageLogin(man);--%>
            <%--if(result > 0 ){--%>
                <%--//  response.sendRedirect("/manPage/WelcomeMan.jsp");--%>
                <%--request.getRequestDispatcher("WelcomeMan.jsp").forward(request,response);--%>
            <%--}else{--%>
                <%--response.sendRedirect("login.jsp?error=yes");--%>

            <%--}--%>
        <%--}--%>
<%--%>--%>

    <%--Teacher teacher = new Teacher(name,password);--%>
    <%--int result = TeacherDao.Registertea(teacher);--%>
    <%--if(result > 0 ){--%>
    <%--//  response.sendRedirect("/manPage/WelcomeMan.jsp");--%>
    <%----%>
    <%--request.getRequestDispatcher("WelcomeTea.jsp").forward(request,response);--%>
    <%--}else{--%>
    <%--response.sendRedirect("login.jsp?error=yes");--%>
    <%----%>
    <%--}--%>
    <%----%>
    <%--}else {--%>
    <%--//  response.sendRedirect("WelcomeMan.jsp");--%>
    <%--Manage man = new Manage(name,password);--%>
    <%--int result = manageDao.manageLogin(man);--%>
    <%--if(result > 0 ){--%>
    <%--//  response.sendRedirect("/manPage/WelcomeMan.jsp");--%>
    <%--request.getRequestDispatcher("WelcomeMan.jsp").forward(request,response);--%>
    <%--}else{--%>
    <%--response.sendRedirect("login.jsp?error=yes");--%>
    <%----%>
    <%--}--%>
    <%--}--%>
</body>

</html>

