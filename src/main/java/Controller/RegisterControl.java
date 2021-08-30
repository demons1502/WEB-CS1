package Controller;

import DAO.AccountDAO;
import DAO.RegisterDAO;
import Model.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "register", value = "/register")
public class RegisterControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String username = request.getParameter("username");
            String password = request.getParameter("pass");
            String fullname = request.getParameter("fullname");
            String gmail = request.getParameter("gmail");
            String address =request.getParameter("address");
            String phone = request.getParameter("phone");
            try{
                AccountDAO check = new AccountDAO();
                Account acc = check.CheckAccount(username);
                if(acc == null){
                    RegisterDAO regis  = new RegisterDAO();
                    Account account = new Account();
                    account.setUserName(username);
                    account.setPass(password);
                    account.setFullName(fullname);
                    account.setGmail(gmail);
                    account.setAddress(address);
                    account.setPhone(phone);
                    regis.Register(account.getUserName(), account.getPass(),account.getFullName(),account.getGmail(),account.getAddress(),account.getPhone(),0);
                    HttpSession session = request.getSession();
                    session.setAttribute("account",account);
                    response.sendRedirect("home");
                }else {
                    response.sendRedirect("login.jsp");
                }

            } catch (Exception e){
                e.printStackTrace();
            }
    }
}
