package DAO;


import DB.DBConnection;
import Model.Account;
import Model.Product;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class AccountDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public Account Login(String user, String pass){
        String query =  "select * from account where [username]=? and [password]=?";
        try {
            conn = new DBConnection().CreateConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2,pass);
            rs=ps.executeQuery();
            while (rs.next()){
                return new Account(rs.getInt(1),
                                    rs.getString(2),
                                    rs.getString(3),
                                    rs.getString(4),
                                    rs.getString(5),
                                    rs.getString(6),
                                    rs.getString(7),
                                    rs.getInt(8));
            }
        }catch (Exception e){

        }
        return null;
    }
    public Account CheckAccount(String user){
        String query =  "select * from account where [username]=?";
        try {
            conn = new DBConnection().CreateConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,user);
            rs=ps.executeQuery();
            while (rs.next()){
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
            }
        }catch (Exception e){

        }
        return null;
    }
    public List<Account> getAllAccount(){
        List<Account> list = new ArrayList<>();
        String query = "select * from account";
        try{
            conn = new DBConnection().CreateConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8))
                );
            }
        }catch (Exception e){

        }

        return list;
    }


    public static void main(String[] args) {
        AccountDAO accountDAO = new AccountDAO();
        List<Account> list = accountDAO.getAllAccount();
        for (Account acc : list){
            System.out.println(acc.getPhone());
        }
    }
}
