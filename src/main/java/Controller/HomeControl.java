package Controller;

import DAO.CategoryDAO;
import DAO.ProductDAO;
import Model.Category;
import Model.Collection;
import Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/home")
public class HomeControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryDAO cate = new CategoryDAO();
        ProductDAO proDao = new ProductDAO();
        List<Category> list = cate.getAllCategory();
        List<Product> hotpro = proDao.hotProductHome();
        List<Collection> collect = proDao.getCollection();
        request.setAttribute("listcollect",collect);
        request.setAttribute("listcate",list);
        request.setAttribute("listhot",hotpro);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
