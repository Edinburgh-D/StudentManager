<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/style.css" >
    <style>
        *
        {
            margin: 0;
            padding: 0;
        }
        body
        {
               background-image: url(123.jpg);
               background-size: cover;
              font-family: 'Montserrat',sans-serif;
        }
        .navbar
        {
            width: 100%;
            height: 50px;
            background: #333;
            box-shadow: 0 -2px 2px #000;
            margin-top: 0px;
        }
        .navbar ul
        {
            list-style: none;
        }
        .navbar ul li
        {
            float: left;
            width: 150px;
            height: 50px;
            background: #222;
            margin-right: 1px;
            font-size: 14px;
        }	
        .navbar ul li:hover{
           color: #fff;
           background: rgba(238,82,83,1);
           animation: changeClolr 2s infinite;
           animation-delay: 3s;
           }
       @keyframes changeColor{
           0%{background: #1d84b5;}
           50%{background: #00cecb;}
           100%{background: #1d84b5;}
           }
       .navbar ul li a{
           text-decoration: none;
           color: #fff;
           display: block;
           text-align: center;
           line-height: 50px;
           font-weight: bold;
           text-transform: uppercase;
           }
       .navbar ul li ul li{
           display: none;
           width: 220px;
           height:50px;
           float: initial;
           background: rgba(1,163,164,1);
           font-size: 10px;
           transition: 0.3s;
           }
       .navbar ul li:hover ul li{
           display: block;
           border-top: 1px solid rgba(72,219,251,0.5)
           }
       </style>
</head>
<body>
    <div class="navbar">
        <a href="#" class="logo">教务系统</a>
        <ul class="nav">
            <li><a href = "#home">返回首页</a>
              
            </li>
            <li><a href = "#about">学生信息操作</a>
                <ul>
                    <li><a href = "RegisterStu.jsp">录入学生信息</a>
                    <li><a href = "UpdateStudent.jsp">修改学生信息</a>
	<li><a href = "DeleteStudent.jsp">删除学生信息</a>
                    <li><a href = "BigInputStudent.jsp">批量导入学生信息</a>
                    
                </ul>
			</li>
            <li><a href = "#portfolio">教师信息操作</a>
                <ul>
                 <li><a href = "RegisterTea.jsp">录入教师信息</a>
	<li><a href = "UpdateTea.jsp">修改教师信息</a>
	<li><a href = "DeleteTea.jsp">删除教师信息</a>
	<li><a href = "SearchTea.jsp">批量导入教师信息</a>
                </ul>         
            </li>
            <li><a href = "#services">课程信息操作</a>
				<ul>
                    <li><a href = "RegisterCou.jsp">添加课程信息</a>
	<li><a href = "UpdateCou.jsp">修改课程信息</a>
	<li><a href = "DeleteCou.jsp">删除课程信息</a>
	<li><a href = "SearchCou.jsp">查询课程信息</a>
                    <li><a href = "WatchCou.jsp">查看课程信息</a>

                </ul>
			</li>
            <li><a href = "#contact">教室信息操作</a>
                <ul>
		<li><a href="RegisterCou.jsp">查看教室上课信息</a>
</ul>
			</li>
        </ul>
    </div>
    <div class="banner-area" id="home">
    </div>
    <div class="about-area" id="about">
        <div class="text-part">
            <h1>选课通知</h1>
            <p>aaaaaaaaaaaaaaaaaaaaa</p>
        </div>    
    </div>
    <div class="port-area" id="portfolio">
               <div class="text-part">
            <h1>评教通知 Area</h1>
            <p>aaaaaaaaaaaaaaaaaaaaa</p>
        </div>
    </div>
    <div class="service-area" id="services">
          <div class="text-part">
            <h1>查看列表</h1>
            <p>aaaaaaaaaaaaaaaaaaaaa</p>
        </div>   
    </div>
    <div class="contact-area" id="contact">
                 <div class="text-part">
            <h1>个人信息</h1>
            <p>aaaaaaaaaaaaaaaaaaaaa</p>
        </div> 
    </div>
</body>
</html>
