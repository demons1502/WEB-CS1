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

@WebServlet(name = "UpdatePr", value = "/UpdatePr")
public class UpdatePrControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idpro = request.getParameter("idedit");
        ProductDAO productDAO = new ProductDAO();
        CategoryDAO cateDao = new CategoryDAO();
        List<Category> listcate = cateDao.getAllCategory();
        Product product = productDAO.getProductByID(idpro);
        request.setAttribute("listcate",listcate);
        request.setAttribute("product",product);
        request.getRequestDispatcher("EditProduct.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
