package Dao;

import Entity.Teacher;

import java.sql.*;

public class TeacherDao {
    public static int  Registertea(Teacher tea){
        int flag = 0;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet res = null;

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC","root","1234");
//            String sql = "insert into Teacher values (?,?,?,?,?,?,?,?,?,?)";
//            pstmt = connection.prepareStatement(sql);
//
//            pstmt.setString(1,tea.getTea_number());
//            pstmt.setString(2,tea.getTea_name());
//            pstmt.setString(4,tea.getTea_sex());
//            pstmt.setString(5,tea.getTea_borndate());
//            pstmt.setString(6,tea.getTea_begindate());
//            pstmt.setString(7,tea.getTea_academy());
//            pstmt.setString(8,tea.getTea_department());
//            pstmt.setString(9,tea.getTea_tittle());
//            pstmt.setString(10,tea.getTea_borndate());
//
//            res = pstmt.executeUpdate();
            String sql = "select count(*) from Teacher where Tea_number =? and Tea_password =?";
            pstmt = connection.prepareStatement(sql);

            pstmt.setString(1,tea.getTea_number());
            pstmt.setString(2,tea.getTea_password());

            res = pstmt.executeQuery();
            if(res.next()){
                flag = res.getInt(1);
                System.out.println("res"+flag);
            }
            if(flag > 0){//success
                return 1;
            }else{//fail
                return 0;
            }

        }catch (ClassNotFoundException e){
            e.printStackTrace();
            System.out.println("clnf");
            return -1;

        }catch (SQLException e){
            e.printStackTrace();

            System.out.println("sql");
            return -1;
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("E");
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
