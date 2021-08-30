package Controller;

import DAO.AccountDAO;
import Model.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("pass");
        AccountDAO accDao = new AccountDAO();
        Account account = accDao.Login(username,password);
        if(account == null){
            request.setAttribute("mess","Sai tên đăng nhập hoặc mật khẩu");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }else {
            HttpSession session = request.getSession();
            session.setAttribute("account",account);
            response.sendRedirect("home");
        }
    }
}
