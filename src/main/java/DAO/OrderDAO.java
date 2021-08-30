package DAO;

import DB.DBConnection;
import Model.Account;
import Model.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class OrderDAO {
    private ResultSet rs = null;
    private Connection con =null;
    private PreparedStatement ps = null;
    public void Order(Order order , Account acc){
        try {
            con = new DBConnection().CreateConnection();
            String sql = "insert into [invoice]([created],[address],[status],[account_id]) values (?,?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1,order.getDateFormat().format(order.getDate()));
            ps.setString(2,order.getAddress());
            ps.setInt(3,order.getStatus());
            ps.setInt(4,acc.getId());
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public void OrderDetails(int invoiceid, int proid, int quantity, float money){
        try {
            con = new DBConnection().CreateConnection();
            String sql = "insert into [invoice_details]([invoice_id],[proid],[quantity],[price]) values (?,?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setInt(1,invoiceid);
            ps.setInt(2,proid);
            ps.setInt(3,quantity);
            ps.setFloat(4,money);
            ps.execute();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public int getOrderID(){
        int id ;
        try {
            con = new DBConnection().CreateConnection();
            String sql = "select top 1 [id] from [invoice]  order by [id] desc";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                return id = rs.getInt(1);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }
    public List<Order> getOrderbyID(int id){
        List<Order> list = new ArrayList<>();
        try {
            con = new DBConnection().CreateConnection();
            String sql = "select *\n" +
                    "from invoice\n" +
                    "where account_id=?";
            ps = con.prepareStatement(sql);
            ps.setInt(1,id);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Order(rs.getInt(1),
                                null,
                                rs.getDate(2),
                                null,
                                rs.getString(3),
                                rs.getInt(4)
                ));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return list ;
    }
    public static void main(String[] args) {
        OrderDAO orderDAO = new OrderDAO();
        List<Order> list=  orderDAO.getOrderbyID(4);
        for (Order o : list){
            System.out.println(o.toString());
        }
    }
}
