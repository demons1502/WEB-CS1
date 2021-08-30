package Controller;

import DAO.ProductDAO;
import Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoadImage", value = "/LoadImage")
public class LoadImageControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idpro = request.getParameter("idupdate");
        ProductDAO productDAO = new ProductDAO();
        Product product = productDAO.getProductByID(idpro);
        request.setAttribute("product",product);
        request.getRequestDispatcher("EditImg.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
