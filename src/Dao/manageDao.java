package Dao;

import Entity.Manage;
import com.mysql.cj.xdevapi.SqlDataResult;

import java.sql.*;

public class manageDao {
    public static int manageLogin(Manage man){
        int flag = 0;
        Connection connection = null;
        PreparedStatement pstmt = null;
        ResultSet res = null;

        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/CourseDesign?serverTimezone=UTC","root","1234");
            String sql = "select count(*) from manage where uname =? and upwd =?";
            pstmt = connection.prepareStatement(sql);

            pstmt.setString(1,man.getUname());
            pstmt.setString(2,man.getUpwd());

            res = pstmt.executeQuery();
            if(res.next()){
                flag = res.getInt(1);
            }
            if(flag > 0){//success
                return 1;
            }else{//fail
                return 0;
            }
        }catch (ClassNotFoundException e){
            e.printStackTrace();

            return -1;//µÇÂ½Ê§°Ü£¬ÏµÍ³Òì³£
        }catch (SQLException e){
            e.printStackTrace();
            System.out.println("sql");
            return -1;
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("big");
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
