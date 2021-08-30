package Controller;

import DAO.CategoryDAO;
import DAO.ProductDAO;
import Model.Category;
import Model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/Detail")
public class  DetailControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        ProductDAO proDao = new ProductDAO();
        Product product = proDao.getProductByID(pid);
        CategoryDAO cate = new CategoryDAO();
        List<Category> listcate = cate.getAllCategory();
//        PrintWriter out =response.getWriter();
//        out.println("<h1>"+listcate+"</h1>");
        request.setAttribute("listcate",listcate);
        request.setAttribute("detail",product);
        request.getRequestDispatcher("detail.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
