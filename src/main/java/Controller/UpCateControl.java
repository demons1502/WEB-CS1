package Controller;

import DAO.CategoryDAO;
import Model.Category;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpCate", value = "/UpCate")
public class UpCateControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idcate = request.getParameter("idedit");
        CategoryDAO categoryDAO = new CategoryDAO();
        Category category = categoryDAO.getCateByID(idcate);
        request.setAttribute("cate",category);
        request.getRequestDispatcher("EditCate.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
