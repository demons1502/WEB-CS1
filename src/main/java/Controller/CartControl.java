package Controller;

import DAO.CategoryDAO;
import DAO.ProductDAO;
import Model.Account;
import Model.Category;
import Model.Item;
import Model.Order;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "cart", value = "/cart")
public class CartControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       HttpSession session = request.getSession();
       Account acc = (Account) session.getAttribute("account");
       String action =request.getParameter("action");
        if (acc == null){
            response.sendRedirect("login.jsp");
        } else {
            if(action==null){
                response.sendRedirect("cart.jsp");
            } else {
                if(action.equalsIgnoreCase("add")){
                    addProtoCart(request,response);
                } else if (action.equalsIgnoreCase("remove")){
                    removePro(request,response);
                } else if (action.equalsIgnoreCase("plus")){
                    plusPro(request,response);
                } else if (action.equalsIgnoreCase("sub")){
                    subPro(request,response);
                }
            }
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    protected void addProtoCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();
            ProductDAO proDao = new ProductDAO();
            if(session.getAttribute("cart") == null){
                Order order = new Order();
                List<Item> item = new ArrayList<>();
                item.add(new Item(proDao.getProductByID(request.getParameter("getidpro")),1));
                order.setItem(item);
                session.setAttribute("cart",order);
            }else{
                Order order = (Order) session.getAttribute("cart");
                List<Item> item = order.getItem();

                int ind = checkid(Integer.parseInt(request.getParameter("getidpro")),item);
                if(ind == -1){
                    item.add(new Item(proDao.getProductByID(request.getParameter("getidpro")),1));
                }else{
                    int quantity = item.get(ind).getQuantity()+1;
                    item.get(ind).setQuantity(quantity);
                }
                session.setAttribute("cart",order);
            }
            request.getRequestDispatcher("cart.jsp").forward(request,response);
    }
    protected void removePro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("cart");
        List<Item> item = order.getItem();
        int ind = checkid(Integer.parseInt(request.getParameter("getidpro")),item);
        item.remove(ind);
        session.setAttribute("cart",order);
        request.getRequestDispatcher("cart.jsp").forward(request,response);
    }
    protected void plusPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("cart");
        List<Item> item = order.getItem();
        int ind = checkid(Integer.parseInt(request.getParameter("getidpro")),item);
        int quantity = item.get(ind).getQuantity() + 1;
        item.get(ind).setQuantity(quantity);
        session.setAttribute("cart",order);
        request.getRequestDispatcher("cart.jsp").forward(request,response);
    }
    protected void subPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        Order order = (Order) session.getAttribute("cart");
        List<Item> item = order.getItem();
        int ind = checkid(Integer.parseInt(request.getParameter("getidpro")),item);
        int quantity = item.get(ind).getQuantity() - 1;
        if(quantity == 0){
            removePro(request,response);
        } else {
            item.get(ind).setQuantity(quantity);
        }
        session.setAttribute("cart",order);
        request.getRequestDispatcher("cart.jsp").forward(request,response);
    }



    public int checkid(int id,List<Item> item){
        for(int i=0;i<item.size();i++){
            if(item.get(i).getProduct().getProductID() == id){
                return i;
            }
        }
        return -1;
    }
}
