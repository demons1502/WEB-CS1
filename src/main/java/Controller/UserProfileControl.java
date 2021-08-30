package Controller;

import DAO.CategoryDAO;
import DAO.OrderDAO;
import Model.Account;
import Model.Category;
import Model.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "UserProfile", value = "/UserProfile")
public class UserProfileControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        CategoryDAO cate = new CategoryDAO();
        List<Category> list = cate.getAllCategory();
        request.setAttribute("listcate",list);
        Account acc = (Account) session.getAttribute("account");
        OrderDAO orderDAO = new OrderDAO();
        List<Order> order = orderDAO.getOrderbyID(acc.getId());
        PrintWriter out = response.getWriter();
        out.println("<h1>"+order+"</h1>");
        request.setAttribute("account",acc);
        request.setAttribute("order",order);
        request.getRequestDispatcher("user-profile.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
