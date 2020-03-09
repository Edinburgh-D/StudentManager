package Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.File;
import Controller.Stu_txt;
@WebServlet(name = "BigInputServlet")
public class BigInputServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Stu_txt sx = new Stu_txt();
          //  String pathname = request.getParameter("pathname");
            File file = new File("C:\\Users\\Administrator\\Desktop\\txt.txt");
            System.out.println(sx.txt2String(file));
          //  sx.txt2String(file);
            response.sendRedirect("/WelcomeMan.jsp");
            //System.out.println("重定向未成功");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
