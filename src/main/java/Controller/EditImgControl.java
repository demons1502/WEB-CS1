package Controller;

import DAO.ProductDAO;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "Updateimg", value = "/Updateimg")
public class EditImgControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        ProductDAO productDAO = new ProductDAO();
        String filename ="";
        String filename1 ="";
        String id = "";
        String id1="";
        try {
            DiskFileItemFactory factory = new DiskFileItemFactory();

            ServletContext servletContext = this.getServletConfig().getServletContext();
            File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
            factory.setRepository(repository);

            ServletFileUpload upload = new ServletFileUpload(factory);

            List<FileItem> items = upload.parseRequest(request);
            Iterator<FileItem> iter = items.iterator();
            while (iter.hasNext()) {
                FileItem item = iter.next();
                filename = item.getName();
                id= item.getFieldName();
                if(id.equals("idpro")){
                    id1 = item.getString("UTF-8");
                }
                if (filename != null) {
                    filename1 = filename;
                    Path path = Paths.get(filename);
                    String stpath = servletContext.getRealPath("/assets/img");
                    File up = new File(stpath + "/" + path.getFileName());
                    item.write(up);
                    System.out.println(stpath+"/" + path.getFileName());
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        productDAO.UpdateImgProduct(id1,filename1);
        response.sendRedirect("product-admin");
    }
}
