package Controller;



import DAO.CategoryDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DelCate", value = "/DelCate")
public class DelCate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("delid");
        CategoryDAO categoryDAO = new CategoryDAO();
        categoryDAO.deleteCate(id);
        response.sendRedirect("cate-admin");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
