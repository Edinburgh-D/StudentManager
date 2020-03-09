<%@ page import="Controller.Stu_txt" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/3
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>批量导入</title>
</head>
<body>
<form action="" method="post"  >
    输入文件路径：<input type="text" name="pathname">
    <input type="submit" value="确认导入">

</form>
<%!
        String txt2String(File file){
            StringBuilder result = new StringBuilder();
            try{
                BufferedReader br = new BufferedReader(new FileReader(file));//构造一个BufferedReader类来读取文件
                String s = null;
                while((s = br.readLine())!=null){//使用readLine方法，一次读一行
                    String[] ss = s.split(" ");
                    Write(ss);
                }
                br.close();
            }catch(Exception e){
                e.printStackTrace();
            }
            return result.toString();
        }
    void Write(String s[]) {

        Connection con ;
        Statement sql;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC", "root", "1234");
            String sq = "insert into Student values (";
            for(int i=0;i<8;i++) {
                sq=sq+"'"+s[i]+"'"+",";
            }
            sq=sq+"'"+s[3]+"'"+");";
            System.out.println(sq);
            sql=con.createStatement();
            sql.executeUpdate(sq);
            con.close();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();


        } catch (SQLException e) {
            e.printStackTrace();


        } catch (Exception e) {
            e.printStackTrace();

        }
    }

%>
<%
    String add=request.getParameter("pathname");
    File file = new File("C:\\Users\\Administrator\\Desktop\\student.txt");
    txt2String(file);
    out.print("录入成功！");
    //  String pathname = request.getParameter("pathname");
//    File file = new File("C:\\Users\\Administrator\\Desktop\\txt.txt");
//    System.out.println(sx.txt2String(file));
    //  sx.txt2String(file);
//    response.sendRedirect("/WelcomeMan.jsp");
%>
</body>
</html>
