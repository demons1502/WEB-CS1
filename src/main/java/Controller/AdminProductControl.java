package Controller;

import DAO.CategoryDAO;
import DAO.ProductDAO;
import Model.Category;
import Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "product-admin", value = "/product-admin")
public class AdminProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO proDao = new ProductDAO();
        CategoryDAO cateDao = new CategoryDAO();
        List<Product> list = proDao.getAllProduct();
        List<Category> listcate = cateDao.getAllCategory();
        request.setAttribute("list",list);
        request.setAttribute("listcate",listcate);
        request.getRequestDispatcher("product_management.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
