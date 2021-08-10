/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.User;

/**
 *
 * @author Vuong Van Truong
 */
public class UserDal {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public User getUser(String username, String password) {
        String query = "select * from [User]\n"
                + "where username = ? and password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
              User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getBoolean(5),
                      rs.getString(6), rs.getString(7), rs.getString(8));
              
               return user;
            }
        } catch (Exception e) {
        }
        return null;
    }
    public boolean checkPhoneExits(String phone){
        String query ="select * from [User]\n" +
            "where phone = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, phone);
            rs = ps.executeQuery();
            while (rs.next()) {                
                return true;
            }
        } catch (Exception e) {
        }
        return false;
    }
      public void Register(String username, String password, String fullname,String gender,
          String address,String phone){
          String query ="insert into [User]\n" +
                "values(?,?,?,?,?,?,'USER')";
          try {
              conn = new DBContext().getConnection();
              ps = conn.prepareStatement(query);
              ps.setString(1, username);
              ps.setString(2, password);
              ps.setString(3, fullname);
              ps.setString(4, gender);
              ps.setString(5, address);
              ps.setString(6, phone);
              ps.executeUpdate();
          } catch (Exception e) {
          }
      }
    
    
    public static void main(String[] args) {
        UserDal dao = new UserDal();
//        dao.Register("Long", "123456", "Nguyễn Hải Long", "1", "Sóc Sơn", "0915202433");
        User a = dao.getUser("truong", "291220");
        System.out.println(a);
    }
}
