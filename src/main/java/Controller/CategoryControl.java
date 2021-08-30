package Controller;

import DAO.CategoryDAO;
import DAO.ProductDAO;
import Model.Category;
import Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/Category")
public class CategoryControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cateID = request.getParameter("cid");
        ProductDAO pro = new ProductDAO();
        CategoryDAO cate = new CategoryDAO();
        List<Category> listcate = cate.getAllCategory();
        List<Product> list = pro.getProductByCategory(cateID);
        request.setAttribute("listAll",list);
        request.setAttribute("listcate",listcate);
        request.getRequestDispatcher("allproduct.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
