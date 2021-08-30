package DAO;

import DB.DBConnection;
import Model.Collection;
import Model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct(){
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try{
            conn = new DBConnection().CreateConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(rs.getInt(1),
                                        rs.getString(2),
                                        rs.getFloat(3),
                                        rs.getInt(4),
                                        rs.getString(5),
                                        rs.getInt(6),
                                        rs.getString(7),
                                        rs.getInt(8))
                );
            }
        }catch (Exception e){

        }

        return list;
    }
    public List<Product> getProductByCategory(String cid){
            List<Product> list = new ArrayList<>();
            String query = "select * from product where category_id=?";
            try{
                conn = new DBConnection().CreateConnection();
                ps = conn.prepareStatement(query);
                ps.setString(1,cid);
                rs = ps.executeQuery();
                while (rs.next()){
                    list.add(new Product(rs.getInt(1),
                            rs.getString(2),
                            rs.getFloat(3),
                            rs.getInt(4),
                            rs.getString(5),
                            rs.getInt(6),
                            rs.getString(7),
                            rs.getInt(8))
                    );


                }
            }catch (Exception e){

            }


        return list;
    }
    public List<Product> hotProductHome(){
        List<Product> list = new ArrayList<>();
        String query = "\n" +
                "select top 8 *" +
                "from product " +
                "where featured=1 " +
                "order by id DESC \n" +
                "\n";
        try {
            conn = new DBConnection().CreateConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getFloat(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8))
                );
            }
        }catch (Exception e){

        }

        return list;
    }
    public Product getProductByID(String pid){
        String query = "select * from product where id=?";
        try{
            conn = new DBConnection().CreateConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,pid);
            rs = ps.executeQuery();
            while (rs.next()){
                return  new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getFloat(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getInt(8)
                );

            }
        }catch (Exception e){

        }


        return null;
    }
    public List<Collection> getCollection(){
        List<Collection> list = new ArrayList<>();
        String query = "select top 3 *\n" +
                    "from collection\n" +
                "order by id desc";
        try {
            conn = new DBConnection().CreateConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Collection(rs.getInt(1),
                                        rs.getString(2),
                                        rs.getString(3)
                ));
            }
        }catch (Exception e){

        }

        return list;
    }
    public void InsertProduct(String name, String price, String quantity, String descrip, String cate_id, String image, String featured){
        try{
            conn = new DBConnection().CreateConnection();
            String sql = "insert into [product]([name],[price],[quantity],[description],[category_id],[img],[featured]) " +
                    "values (?,?,?,?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,price);
            ps.setString(3,quantity);
            ps.setString(4,descrip);
            ps.setString(5,cate_id);
            ps.setString(6,"assets/img/"+image);
            ps.setString(7,featured);
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public void UpdateProduct(String id,String name, String price, String quantity, String descrip, String cate_id, String featured){
        try {
            conn = new DBConnection().CreateConnection();
            String sql = "update [product] set [name] = ?, [price] = ?, [quantity] = ?, [description] = ?," +
                            "[category_id] = ?, [featured] = ? where [id] = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,price);
            ps.setString(3,quantity);
            ps.setString(4,descrip);
            ps.setString(5,cate_id);
            ps.setString(6,featured);
            ps.setString(7,id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public void UpdateImgProduct(String id, String img){
        try {
            conn = new DBConnection().CreateConnection();
            String sql = "update [product] set [img] = ? where [id] = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,"assets/img/"+img);
            ps.setString(2,id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    public void delete(String id){
        try{
            conn = new DBConnection().CreateConnection();
            String sql = "  delete from invoice_details where proid = ?" +
                    " delete from product where id = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,id);
            ps.setString(2,id);
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}

