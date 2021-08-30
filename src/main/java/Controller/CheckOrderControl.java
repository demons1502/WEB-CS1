package Controller;

import DAO.AdminOrderDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CheckOrder", value = "/CheckOrder")
public class CheckOrderControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idcheck = request.getParameter("idcheck");
        AdminOrderDAO adminOrderDAO = new AdminOrderDAO();
        adminOrderDAO.updateStatus(idcheck);
        response.sendRedirect("order-admin");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
