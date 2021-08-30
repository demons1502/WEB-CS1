package Controller;

import DAO.CategoryDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddCate", value = "/AddCate")
public class AddCateControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String cate_name = request.getParameter("cate");
        CategoryDAO categoryDAO = new CategoryDAO();
        categoryDAO.InsertCate(cate_name);
        response.sendRedirect("cate-admin");
    }
}
