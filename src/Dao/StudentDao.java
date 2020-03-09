package Dao;

import Entity.Student;

import java.sql.*;

public class StudentDao {
    public static int StudentLogin(Student stu){
        int flag = 0;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet res = null;

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC","root","1234");
            String sql = "select count(*) from Student where Stu_number =? and Stu_password =?";
            pstmt = connection.prepareStatement(sql);

            pstmt.setString(1,stu.getStu_number());
            pstmt.setString(2,stu.getStu_password());

            res = pstmt.executeQuery();
            if(res.next()){
                flag = res.getInt(1);

            }
            if(flag > 0){//success
                String sql1 = "select * from Student where Stu_number =? ";
                pstmt = connection.prepareStatement(sql1);
                pstmt.setString(1,stu.getStu_number());
                res = pstmt.executeQuery();
                while(res.next()){
                    stu.setStu_number(res.getString(1));
                    stu.setStu_name(res.getString(2));
                    stu.setStu_sex(res.getString(3));
                    stu.setStu_borndate(res.getString(4));
                    stu.setStu_begindate(res.getString(5));
                    stu.setStu_academy(res.getString(6));
                    stu.setStu_department(res.getString(7));
                    stu.setStu_class(res.getString(8));
                    stu.setStu_password(res.getString(9));
                }
           //     System.out.println(stu.getStu_name()+"  name ");
                return 1;
            }else{//fail
                return 0;
            }
        }catch (ClassNotFoundException e){
            e.printStackTrace();

            return -1;//登陆失败，系统异常
        }catch (SQLException e){
            e.printStackTrace();

            return -1;
        }catch (Exception e){
            e.printStackTrace();

            return -1;
        }
        finally {
            try{
                if(pstmt != null) pstmt.close();
                if(connection != null) connection.close();
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
    }

}
//    Connection connection = null;
//    PreparedStatement pstmt = null;
//    ResultSet res = null;
//    //数据库连接
//    public boolean getConnection(){
//        try{
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC","root","1234");
//        }catch (ClassNotFoundException e){
//            e.printStackTrace();
//            return false;
//        }catch (SQLException e){
//            e.printStackTrace();
//            return false;
//        }
//        return true;
//    }
//    //数据库增删改
//    public int executeSQL(String sql,Object...params){
//        int updateRows = 0;
//        if(this.getConnection()){
//            try{
//                pstmt = connection.prepareStatement(sql);
//                for(int i = 0 ; i < params.length ; i++){
//                    pstmt.setObject(i +1 ,params[i]);
//                }
//                updateRows = pstmt.executeUpdate();
//            }catch(SQLException e){
//                e.printStackTrace();
//            }
//        }
//        return updateRows;
//    }
//    //遍历数据库
//    public ResultSet selectSQL(String sql,Object[] params){
//        if(this.getConnection()){
//            try{
//                pstmt = connection.prepareStatement(sql);
//                for(int j = 0 ; j < params.length; j++){
//                    pstmt.setObject(j+1,params[j]);
//                }
//                res = pstmt.executeQuery();
//            }catch (SQLException e){
//                e.printStackTrace();
//            }
//        }
//        return res;
//    }
//    public boolean closeSoures(){
//        if(res != null){
//            try{
//                res.close();
//            }catch(SQLException e){
//                e.printStackTrace();
//                return false;
//            }
//        }
//        if (connection != null){
//            try {
//                connection.close();
//            }catch (SQLException e){
//                e.printStackTrace();
//                return  false;
//            }
//        }
//        return true;
//    }

