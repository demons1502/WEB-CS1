package Controller;

import DAO.ProductDAO;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "UpdatePrByAd", value = "/UpdatePrByAd")
public class UpdateProByADControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String id= request.getParameter("idpro");
        String name= request.getParameter("namepro");
        String price= request.getParameter("pricepro");
        String quantity= request.getParameter("quantity");
        String selectpro= request.getParameter("selectpro");
        String feapro= request.getParameter("feapro");
        String descrip=request.getParameter("descrip");

        ProductDAO productDAO = new ProductDAO();
        productDAO.UpdateProduct(id,name,price,quantity,descrip,selectpro,feapro);
        response.sendRedirect("product-admin");
        PrintWriter out = response.getWriter();
        out.println("<h1>"+id+"</h1>");
        out.println("<h1>"+name+"</h1>");
        out.println("<h1>"+price+"</h1>");
        out.println("<h1>"+quantity+"</h1>");
        out.println("<h1>"+selectpro+"</h1>");
        out.println("<h1>"+feapro+"</h1>");
        out.println("<h1>"+descrip+"</h1>");
    }
}
