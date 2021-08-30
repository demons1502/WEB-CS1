package Controller;

import DAO.AdminOrderDAO;
import Model.ListOrder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "turnover-admin", value = "/turnover-admin")
public class AdminTurnoverControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminOrderDAO adminOrderDAO = new AdminOrderDAO();
        List<ListOrder> list = adminOrderDAO.ListOrder();
        request.setAttribute("order",list);
        request.getRequestDispatcher("TurnoverManagement.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
