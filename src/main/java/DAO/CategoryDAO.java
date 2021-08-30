package DAO;

import DB.DBConnection;
import Model.Category;
import Model.Product;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Category> getAllCategory(){
        List<Category> list = new ArrayList<>();
        String query = "select * from category";
        try {
            conn = new DBConnection().CreateConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Category(rs.getInt(1),
                                    rs.getString(2)));
            }
        }catch (Exception e){

        }

        return list;
    }
    public Category getCateByID(String cid){
        String query = "select * from category where id=?";
        try{
            conn = new DBConnection().CreateConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,cid);
            rs = ps.executeQuery();
            while (rs.next()){
                return  new Category(rs.getInt(1),
                        rs.getString(2)
                );

            }
        }catch (Exception e){

        }


        return null;
    }
    public void InsertCate(String name){
        try{
            conn = new DBConnection().CreateConnection();
            String sql = "insert into [category]([name]) " +
                    "values (?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1,name);
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public void deleteCate(String id){
        try{
            conn = new DBConnection().CreateConnection();
            String sql = "  delete from category where id = ?" ;
            ps = conn.prepareStatement(sql);
            ps.setString(1,id);
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public void UpdateCate(String id,String name){
        try {
            conn = new DBConnection().CreateConnection();
            String sql = "update [category] set [name] = ? where [id] = ?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
