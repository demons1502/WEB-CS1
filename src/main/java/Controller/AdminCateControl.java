package Controller;

import DAO.CategoryDAO;
import Model.Category;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "cate-admin", value = "/cate-admin")
public class AdminCateControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryDAO cateDao = new CategoryDAO();
        List<Category> listcate = cateDao.getAllCategory();
        request.setAttribute("listcate",listcate);
        request.getRequestDispatcher("cate_management.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
