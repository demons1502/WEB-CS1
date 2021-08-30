package Controller;

import DAO.OrderDAO;
import Model.Account;
import Model.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "checkout", value = "/checkout")
public class CheckOutControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("cart");
        Account acc = (Account) session.getAttribute("account");
        String address = request.getParameter("address");
        order.setAddress(address);
        session.setAttribute("cart",order);
        if(order != null & acc != null){
            OrderDAO orderDAO = new OrderDAO();
            orderDAO.Order(order, acc);
            int order_id = orderDAO.getOrderID();
            for(int i=0; i < order.getItem().size(); i++){
                orderDAO.OrderDetails(order_id,order.getItem().get(i).getProduct().getProductID(), order.getItem().get(i).getQuantity(),
                        (float) (order.getItem().get(i).getQuantity() * order.getItem().get(i).getProduct().getPrice()));
            }
        }
        session.removeAttribute("cart");
        request.getRequestDispatcher("home").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
