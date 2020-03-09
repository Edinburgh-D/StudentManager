
<%@ page contentType="textml;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
<%@ page import="Entity.Student"%>
<%@page import="java.sql.*" %>
<html>
    <head>
        <title>所有课程</title>
    </head>
    <body>
        <%!
            Calendar calendar=Calendar.getInstance();
            int month=calendar.get(Calendar.MONTH)+1;
            String term_;
        %>

        <%  if(month<=6){
                term_=String.valueOf(calendar.get(Calendar.YEAR))+"年"+"秋季";
            }

            if(month>=10){
                term_=String.valueOf(calendar.get(Calendar.YEAR)+1)+"年"+"春季";
            }
        %>
            <%!
                    Student student;%>
       <%student =(Student)session.getAttribute("student");%>
        <%!
            String stu = student.getStu_number();
            String[] number=new String[500];
            String name[]=new String[500];
            String time[]=new String[500];
            String room[]=new String[500];
            String type[]=new String[500];
            String teacher[]=new String[500];
            int now[]=new int[500];
            int score[]=new int[500];
            int all[]=new int[500];
        %>
        <tr/>课程号  课程名称  课程类型  上课时间  上课教室  授课教师   学分  已选人数  容纳人数
        <%
            Connection con ;
            Statement sql;
            ResultSet rs1,rs2,rs3;
            int i=0;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC", "root", "1234");
                String sq = "";

                sql=con.createStatement();
                rs1=sql.executeQuery("select Cou_number,Cou_name,Cou_time,Cou_room,Tea_name,Cou_score,Cou_person from Course,Teacher where Teacher.Tea_number=Cou.Tea_num order by Cou_number asc") ;
                rs2=sql.executeQuery("select count(*) from Grade where term=term_  group by Cou_num order by Cou_num asc");
                rs3=sql.executeQuery("select Cou_type,Cou_adacemy from Course_type order by Cou_num asc");
                while ((rs1.next())){
                    number[i]=rs1.getString(1);
                    if(rs3.getString(1)=="公共课")
                        type[i]=rs3.getString(1);
                    else
                        type[i]=rs3.getString(2);
                    name[i]=rs1.getString(2);
                    time[i]=rs1.getString(3);
                    room[i]=rs1.getString(4);
                    teacher[i]=rs1.getString(5);
                    now[i]=rs2.getInt(1);
                    score[i]=rs1.getInt(6);
                    all[i]=rs1.getInt(7);
                    i++;
                }
                con.close();

            } catch (ClassNotFoundException e) {
                e.printStackTrace();


            } catch (SQLException e) {
                e.printStackTrace();


            } catch (Exception e) {
                e.printStackTrace();

            }
        %>
        <form action=""  name="">


        <%
//            out.print("<form action="+"""+"""+" method=post name=form>");
            out.print("<table border=2>");
            out.print("<tr>");
            out.print("<th width=150>"+"课程号");
            out.print("<th width=250>"+"课程名称");
            out.print("<th width=250>"+"课程类型");
            out.print("<th width=250>"+"上课时间");
            out.print("<th width=150>"+"上课教室");
            out.print("<th width=150>"+"授课教师");
            out.print("<th width=100>"+"学分");
            out.print("<th width=100>"+"已选人数");
            out.print("<th width=100>"+"容纳人数");
            out.print("</tr>");
            int l=0;
            while(name[l]!=""){
                out.print("<tr>");
                out.print("<td>"+"number[l]"+"</td>");
                out.print("<td>"+"name[l]"+"</td>");
                out.print("<td>"+"type[l]"+"</td>");
                out.print("<td>"+"time[l]"+"</td>");
                out.print("<td>"+"room[l]"+"</td>");
                out.print("<td>"+"teacher[l]"+"</td>");
                out.print("<td>"+"score[l]"+"</td>");
                out.print("<td>"+"now[l]"+"</td>");
                out.print("<td>"+"all[l]"+"</td>");
                out.print("<input type=checkbox name=item value=number[l]>");
                out.print("</tr>");
            }
            out.print("</table>");


        %>
            <br><input type="submit" value="提交"+ name="submit">
            <input type="reset" value="重置">
        </form>
        <%!
            int checkif(String number){
                Connection con ;
                PreparedStatement pstmt;
                ResultSet rs;
                int flag = -1;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC", "root", "1234");
//                    sql=con.createStatement();
                    String sql ="select count(*) from Grade where Stu_num=stu and Cou_num=number" ;
//                    rs.next();
                    pstmt = con.prepareStatement(sql);

//                    pstmt.setString(1,stu);
//                    pstmt.setString(2,);

                    rs = pstmt.executeQuery();
                    if(Integer.parseInt(rs.getString(1))==1)
                        flag=0;
                    else
                        flag=1;
                    con.close();

                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                } catch (SQLException e) {
                    e.printStackTrace();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return flag;
            }
            void add_cou(String number){
                Connection con ;
                PreparedStatement pstmt;
                String sq;
                int flag = -1;
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC", "root", "1234");
                    //
                    sq="insert into Grade values(?,?,null,?)";
                    pstmt = con.prepareStatement(sq);
                    pstmt.setString(1,stu);
                    pstmt.setString(2,number);
                    pstmt.setString(3,term_);

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
            int j=0,flag;
            String itemNames[]=request.getParameterValues("item");
            if(itemNames==null){
                ///////未勾选课程
                flag=0;
            }
            else{
                for(int m=0;i<itemNames.length;m++){
                    for( ;j<500;j++){
                        if(number[j]==itemNames[m])
                            break;
                    }
                    if(now[j]==all[j]){
        %>

                        <script>
                                alert("存在课程人数已满");
                        </script>
        <%
                        flag=0;
                        break;
                    }
                    if(checkif(itemNames[m])==0){%>
                        <script>
                            alert("存在重复选课");
                        </script>
        <%
                        flag=0;
                        break;
                    }

                }
                for(int k=0;k<itemNames.length;k++){
                    add_cou(itemNames[k]);
                }

            }

        %>
    </body>
    </html>