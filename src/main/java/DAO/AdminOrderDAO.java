package DAO;

import DB.DBConnection;
import Model.ListOrder;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdminOrderDAO {
    private ResultSet rs = null;
    private Connection con =null;
    private PreparedStatement ps = null;
    public List<ListOrder> ListOrder(){
        List<ListOrder> list = new ArrayList<>();
        try {
            con = new DBConnection().CreateConnection();
            String sql = "select o.id, u.fullname,ord.proid, p.price, ord.quantity,o.created,o.status,o.address\n" +
                    "from invoice as o left join account u on o.account_id = u.id\n" +
                    "left join invoice_details ord on ord.invoice_id = o.id\n" +
                    "left join product p on p.id = ord.proid\n";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new ListOrder(rs.getInt(1),
                                        rs.getString(2),
                                        rs.getInt(3),
                                        rs.getFloat(4),
                                        rs.getInt(5),
                                        rs.getDate(6),
                                        rs.getInt(7),
                                        rs.getString(8)));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return list;
    }
    public void updateStatus(String id){
        try {
            con = new DBConnection().CreateConnection();
            String sql = "update [invoice] set [status] = 1 where id = ?";
            ps=con.prepareStatement(sql);
            ps.setString(1,id);
            ps.executeUpdate();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        AdminOrderDAO adminOrderDAO = new AdminOrderDAO();
        List<ListOrder> list = adminOrderDAO.ListOrder();
        for(ListOrder o: list){
            System.out.println(o.toString());
        }
    }
}
