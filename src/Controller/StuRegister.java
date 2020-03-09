package Controller;

import java.io.IOException;
import Entity.Student;
import Dao.StudentDao;
public class StuRegister extends javax.servlet.http.HttpServlet  {
    public void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String stu_number = request.getParameter("Stu_number");
        String stu_name = request.getParameter("Stu_name");
        String stu_sex = request.getParameter("Stu_sex");
        String stu_borndata = request.getParameter("Stu_borndata");
        String stu_begindata = request.getParameter("Stu_begindata");
        String stu_academy = request.getParameter("Stu_academy");
        String stu_department = request.getParameter("Stu_department");
        String stu_class= request.getParameter("Stu_class");
        Student stu = new Student(stu_number,stu_name,stu_sex,stu_borndata,stu_begindata,stu_academy,stu_department,stu_class);
        StudentDao test = new StudentDao();
        //
//        String sql = "Insert into student values(?,?,?,?,?,?,?,?)";
//        Object[] params = {stu.getStu_number(),stu.getStu_name(),stu.getStu_sex(),stu.getStu_borndate(),stu.getStu_begindate(),stu.getStu_academy(),stu.getStu_department(),stu.getStu_class(),stu.getStu_borndate()};
//        int i  =
//        test.getConnection();
//        test.executeSQL(sql);

    }
}
