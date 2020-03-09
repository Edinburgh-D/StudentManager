<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Entity.Student"%>
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
               background-image: url(567.jpg);
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
<%
    Student stu = (Student)session.getAttribute("student");
   // System.out.println(stu.getStu_number());
   // out.println(stu.getStu_name(),stu.getStu_number());
%>
 您好:
<%=stu.getStu_name()%><br/>
<body>
    <div class="navbar">
        <a href="#" class="logo">教务系统</a>
        <ul class="nav">
            <li><a href = "WelcomeStu.jsp">返回首页</a>
              
            </li>
            <li><a href = "#about">学生选课</a>
                <ul>
                    <li><a href="ReChooseCou.jsp">增加课程</a>
                  
                </ul>
			</li>
            <li><a href = "#portfolio">评教</a>
                <ul>
                    <li><a href="pingjiao.jsp">教师评教</a>
                </ul>         
            </li>
            <li><a href = "#services">查看</a>
				<ul>
                    <li><a href="WatchScore.jsp">我的成绩</a>
                    <li><a href="CourseTable.jsp">我的课表</a>

                </ul>
			</li>
            <li><a href = "#contact">个人中心</a>
                <ul>
		        <li><a href="WatchStudent.jsp">我的信息</a>
                </ul>
			</li>
        </ul>
    </div>
    <div class="banner-area" id="home">
        
    </div>
    <div class="about-area" id="about">
        <div class="text-part">
            <h1>选课通知</h1>
           <a href = "xuanke.htm" target="_blank">关于本科生2019-2020第二学期选课安排的通知</a>
        </div>    
    </div>
    <div class="port-area" id="portfolio">
               <div class="text-part">
            <h1>评教通知</h1>
            <a href = "pingjiao.htm" target="_blank" style="color:#fff">关于开展2019年秋季学期学生网上评教工作的通知</a>
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
