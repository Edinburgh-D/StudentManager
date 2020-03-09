package Controller;

import java.io.IOException;
import Entity.Teacher;
import Dao.TeacherDao;
public class TeaRegister extends javax.servlet.http.HttpServlet {
    public void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String tea_number = request.getParameter("Tea_number");
        String tea_name = request.getParameter("Tea_name");
        String tea_sex = request.getParameter("Tea_sex");
        String tea_borndata = request.getParameter("Tea_borndata");
        String tea_begindata = request.getParameter("Tea_begindata");
        String tea_academy = request.getParameter("Tea_academy");
        String tea_department = request.getParameter("Tea_department");
        String tea_tittle= request.getParameter("Tea_tittle");
        Teacher tea = new Teacher(tea_number,tea_name,tea_sex,tea_borndata,tea_begindata,tea_academy,tea_department,tea_tittle);
        TeacherDao test = new TeacherDao();
        test.Registertea(tea);
    }
}
