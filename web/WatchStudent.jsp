<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Entity.Student"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Draco is free PSD &amp; HTML template by @afnizarnur">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="css/kube.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/custom.min.css" />
<link rel="shortcut icon" href="img/favicon.png" />
<link href='https://fonts.googleapis.com/css?family=Playfair+Display+SC:700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
<style>
	.intro h1:before {
		/* Edit this with your name or anything else */
		content: 'DRACO';
	}
</style>
</head>
<body>
<!-- Navigation -->
<style>
		*
		{
			margin: 0;
			padding: 0;
		}
		body
		{
			   background-image: url();
			   background-size: cover;
			  font-family: 'Montserrat',sans-serif;
		}
		.navbar
		{
			width: 100%;
			height: 50px;
			background: #222;
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
			margin-right: 100px;
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

	   <div class = "navbar">
		   <ul>
				   <li><a href = "stu.htm">返回首页</a>
				 
				   </li>
				   <li><a href = "#about">学生选课</a>
					   <ul>
						   <li><a href = "RegisterCou.jsp">选课列表</a>
						   <li><a href = "WatchScore.jsp">课程退选</a>
					   </ul>
				   </li>
				   <li><a href = "#portfolio">评教</a>
					   <ul>
						   <li><a href = "WatchScore.jsp">评教入口</a>
					   </ul>         
				   </li>
				   <li><a href = "#services">查看</a>
					   <ul>
						   <li><a href = "WatchScore.jsp">成绩查询</a>
						   <li><a href = "WatchScore.jsp">课表查询</a>
	   
					   </ul>
				   </li>
				   <li><a href = "#contact">我的信息</a>
					   <ul>
					   <li><a href = "WatchScore.jsp">个人中心</a>
					   </ul>
				   </li>
		   </ul>
	   </div>
<!-- Introduction -->
<div class="intro section" id="about">
	<div class="container">
		<p></p>
		<div class="units-row units-split wrap">
			<div class="unit-20">
				
			</div>
			<div class="unit-80">
				<h1><br><span id="typed"></span></h1>
			</div>
			
		</div>
	</div>
</div>
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
Student stu = (Student)session.getAttribute("student");
Connection connection ;
PreparedStatement pstmt;
ResultSet rs;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC", "root", "1234");
	String sql = "select * from student where Stu_number=?";
	pstmt = connection.prepareStatement(sql);

	pstmt.setString(1,stu.getStu_number());


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
<!-- Work Experience -->
	<div class="container">
		<h1>个人信息</h1>
		<ul class="work-list">
				<li>姓名：<%=name%></li>
				<li>性别：<%=sex%></li>
				<li>出生年月：<%=borndata%></li>
		</ul>
	</div>
</div>

<!-- Award & Achievements -->
	<div class="container">
		<h1>学籍信息</h1>
		<ul class="work-list">
				<li>学号：<%=number%></li>
				<li>入学日期：<%=begindata%></li>
				<li>所在学院： <%=academy%></li>
				<li>所在系：<%=department%></li>
				<li>所在班级：<%=clas%></li>
				<li>学生密码：<%=password%></li>
		</ul>
	</div>
</div>
<!-- Technical Skills -->

<!-- Quote -->


<!-- Javascript -->
<script src="js/jquery.min.js"></script>
<script src="js/typed.min.js"></script>
<script src="js/kube.min.js"></script>
<script src="js/site.js"></script>
<script>
	function newTyped(){}$(function(){$("#typed").typed({
	// Change to edit type effect
	strings: ["学生个人信息"],

	typeSpeed:90,backDelay:700,contentType:"html",loop:!0,resetCallback:function(){newTyped()}}),$(".reset").click(function(){$("#typed").typed("reset")})});
</script>
</body>
</html>
