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
import java.io.Writer;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;



@WebServlet(name = "AddProduct", value = "/AddProduct")
public class AddProductControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String filename="";
        String filename1="";
        String img="";
        String imgs="";
        String name="";
        String names ="";
        String price="";
        String prices="";
        String quantity="";
        String quantitys="";
        String selectpro="";
        String selectpros="";
        String feapro="";
        String feapros="";
        String descrip="";
        String descrips="";

        ProductDAO productDAO = new ProductDAO();
        try {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            ServletContext servletContext = this.getServletConfig().getServletContext();
            File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
            factory.setRepository(repository);
            ServletFileUpload upload = new ServletFileUpload(factory);

            List<FileItem> items = upload.parseRequest(request);
            Iterator<FileItem> iter = items.iterator();
            while (iter.hasNext()){
                FileItem item = iter.next();
                filename = item.getName();
                img = item.getFieldName();
                name = item.getFieldName();
                price = item.getFieldName();
                quantity = item.getFieldName();
                selectpro = item.getFieldName();
                feapro = item.getFieldName();
                descrip = item.getFieldName();
                if(img.equals("img")){
                    imgs = item.getName();
                }
                if(name.equals("namepro")){
                    names = item.getString("UTF-8");
                }
                if(price.equals("pricepro")){
                    prices = item.getString("UTF-8");
                }
                if(quantity.equals("quantity")){
                    quantitys = item.getString("UTF-8");
                }
                if(selectpro.equals("selectpro")){
                    selectpros = item.getString("UTF-8");
                }
                if(feapro.equals("feapro")){
                    feapros  = item.getString("UTF-8");
                }
                if(descrip.equals("descrip")){
                    descrips = item.getString("UTF-8");
                }
                if(filename != null){
                    filename1 = filename;
                    Path path = Paths.get(filename);
                    String stpath = servletContext.getRealPath("/assets/img");
                    File up = new File(stpath + "/" + path.getFileName());
                    item.write(up);
                    System.out.println(stpath+"/" + path.getFileName());
                }


            }
        }catch (FileUploadException e1){
            e1.printStackTrace();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        productDAO.InsertProduct(names,prices,quantitys,descrips,selectpros,imgs,feapros);
        response.sendRedirect("product-admin");
        PrintWriter out = response.getWriter();
        out.println("<h1>"+imgs+"</h1>");
        out.println("<h1>"+names+"</h1>");
        out.println("<h1>"+prices+"</h1>");
        out.println("<h1>"+quantitys+"</h1>");
        out.println("<h1>"+selectpros+"</h1>");
        out.println("<h1>"+feapros+"</h1>");
        out.println("<h1>"+descrips+"</h1>");
//        String name = request.getParameter("namepro");
//        String price = request.getParameter("pricepro");
//        float pr = Float.parseFloat(price);
//        String quantitypro = request.getParameter("quantity");
//        int quantity  = Integer.parseInt(quantitypro);
//        String select = request.getParameter("selectpro");
//        int catetid = Integer.parseInt(select);
//        String select1 = request.getParameter("feapro");
//        int feapro = Integer.parseInt(select1);
//        String description = request.getParameter("descrip");
//
//        System.out.println(imgs);


    }
}
