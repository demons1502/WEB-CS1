package DAO;

import DB.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDAO {
    private ResultSet rs = null;
    private Connection con =null;
    private PreparedStatement ps = null;
    public void Register(String username, String pass, String fullname, String gmail, String address, String phone, int role){
        try{
            con = new DBConnection().CreateConnection();
            String sql = "insert into account([username],[password],[fullname],[gmail],[address],[phone],role) values(?,?,?,?,?,?,?) ";
            ps = con.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,pass);
            ps.setString(3,fullname);
            ps.setString(4,gmail);
            ps.setString(5,address);
            ps.setString(6,phone);
            ps.setInt(7,role);
            ps.executeQuery();
        }catch (ClassNotFoundException e){
            e.printStackTrace();
        } catch (SQLException throwables){
            throwables.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }


    }
}
