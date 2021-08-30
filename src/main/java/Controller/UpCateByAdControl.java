package Controller;

import DAO.CategoryDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UpCateByAd", value = "/UpCateByAd")
public class UpCateByAdControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String cateid = request.getParameter("idcate");
        String name = request.getParameter("namecate");
        CategoryDAO categoryDAO = new CategoryDAO();
        categoryDAO.UpdateCate(cateid,name);
        response.sendRedirect("cate-admin");
    }
}
