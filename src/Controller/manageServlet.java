package Controller;

import Dao.TeacherDao;
import Dao.manageDao;
import Dao.StudentDao;
import Entity.Manage;
import Entity.Student;
import Entity.Teacher;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Enumeration;

public class manageServlet extends javax.servlet.http.HttpServlet {
    public void doPost(javax.servlet.http.HttpServletRequest request,javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException , IOException{
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        int id = Integer.parseInt(request.getParameter("character"));
//        servlet的初始化参数
//        String testParaname = getServletConfig().getInitParameter("user");
//        System.out.println("user :"+ testParaname);
//        Enumeration<String> names = getServletConfig().getInitParameterNames();
//        while(names.hasMoreElements()){
//            String testname = names.nextElement();
//            String testvalue = getServletConfig().getInitParameter(testname);
//            System.out.println("name :"+ testname+" : "+testvalue  );
//        }
// web应用的初始化参数
        String testParaname2 = getServletContext().getInitParameter("Driver");
        System.out.println("Driver :"+testParaname2);

//        Enumeration<String> testname2 = getServletContext().getInitParameterNames();
//        while (testname2.hasMoreElements()){
//            String testname3 = names.nextElement();
//            System.out.println("name :"+ testname3 );
//        }
        //保存cookie
//        Cookie cookie  = new Cookie("manage",name);
//        cookie.setMaxAge(60*60*24*7);
//        response.addCookie(cookie);//添加cookie
//        Cookie[] cookies = request.getCookies();
//        if(cookies != null){
//            for()
//        }

        String contextPath = getServletContext().getContextPath();
        System.out.println(contextPath);
        String path = request.getContextPath();
        HttpSession session=request.getSession();
        if(id == 1){
           // response.sendRedirect("WelcomeStu.jsp");
            Student stu = new Student(name,password);
        //    System.out.println(stu+"this is a test");
            int result = StudentDao.StudentLogin(stu);
       //     System.out.println(stu.getStu_name()+"  name");
           // System.out.println("jieguo "+result);
            if(result > 0 ){
                session.setAttribute("student",stu);
                response.sendRedirect(path + "/WelcomeStu.jsp");
//                request.getRequestDispatcher("WelcomeStu.jsp").forward(request,response);
               // System.out.println("number"+stu.getStu_number());
            }else{
                response.sendRedirect("login.jsp?error=yes");
            }

        }else if(id == 2){
          //  response.sendRedirect("WelcomeTea");
            Teacher teacher = new Teacher(name,password);
            int result = TeacherDao.Registertea(teacher);
            if(result > 0 ){
                //  response.sendRedirect("/manPage/WelcomeMan.jsp");
                session.setAttribute("teacher",teacher);
                response.sendRedirect(path + "/WelcomeTea.jsp");
             //   request.getRequestDispatcher("WelcomeTea.jsp").forward(request,response);
            }else{
                response.sendRedirect("login.jsp?error=yes");

            }

        }else {
          //  response.sendRedirect("WelcomeMan.jsp");
            Manage man = new Manage(name,password);
            int result = manageDao.manageLogin(man);
            if(result > 0 ){
              //  response.sendRedirect("/manPage/WelcomeMan.jsp");
                session.setAttribute("manage",man);
                response.sendRedirect(path + "/WelcomeMan.jsp");
               // request.getRequestDispatcher("WelcomeMan.jsp").forward(request,response);
            }else{
                response.sendRedirect("login.jsp?error=yes");

            }
        }


    }
}
