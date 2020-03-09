package Controller;


import java.io.*;
import java.sql.*;
public class Stu_txt {

    public static String txt2String(File file){
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

    public static void main(String[] args){
        File file = new File("C:\\Users\\Administrator\\Desktop\\txt.txt");
        txt2String(file);
    }
    public static void Write(String s[]) {

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


}
