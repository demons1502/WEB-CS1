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
import java.io.PrintWriter;
import java.util.List;


@WebServlet("/all-product")
public class AllProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDAO allPro = new ProductDAO();
        CategoryDAO cate = new CategoryDAO();
        List<Product> pro = allPro.getAllProduct();
        List<Category> catelist = cate.getAllCategory();
        List<Collection> collect = allPro.getCollection();
        request.setAttribute("listcollect",collect);
        request.setAttribute("listAll",pro);
        request.setAttribute("listcate",catelist);
        request.getRequestDispatcher("allproduct.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

}
