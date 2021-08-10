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
import java.util.ArrayList;
import java.util.List;
import model.Categories;
import model.Order;
import model.Product;
import model.User;

/**
 *
 * @author Vuong Van Truong
 */
public class AdminDal {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public int countUser() {
        String query = "select count(*) from [User]";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public int countProduct() {
        String query = "select count(*) from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public int countOrder() {
        String query = "select count(*) from Orders";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

  public List<Product> getAllProduct(int pagIndex){//get allproduct and số sản phẩm trên 1 trang
        List<Product> listP = new ArrayList<>();
        String query = "SELECT * FROM\n"
                + "(SELECT ROW_NUMBER() OVER (ORDER BY productId )\n"
                + "as rownum, * from Product p) [table]\n"
                + "join Categories c on [table].categoriesId = c.categoriesId\n"
                + " where rownum between ? and ?";
//            String query = "select * from [Product] p\n" +
//"order by p.productId\n" +
//"Offset ? rows fetch next 8 rows only";
        try {
           conn =  new DBContext().getConnection();
           ps = conn.prepareStatement(query);
           ps.setInt(1, pagIndex*5 -4);
           ps.setInt(2, pagIndex*5);
//            ps.setInt(1, (pagIndex)*8);
           rs = ps.executeQuery();
            while (rs.next()) {  
                Categories categories  = new Categories(rs.getInt(9), rs.getString(10));
                listP.add( new Product(rs.getInt(2), rs.getString(3), 
                        rs.getFloat(4), rs.getInt(5), rs.getString(6), 
                        rs.getString(7), categories));
             
            }
        } catch (Exception e) {
        }
        return listP;
    }

    public int totalPageListProduct() {
        String query = "select count(*) from Product";
        int count = 0;
        int totalPage = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
            if (count % 5 > 0) {
                totalPage = count / 5 + 1;
            } else {
                totalPage = count / 5;
            }
        } catch (Exception e) {
        }
        return totalPage;
    }

    public List<User> getAllUserPagging(int pageIndex) {
        String query = "SELECT * FROM\n"
                + "(SELECT ROW_NUMBER() OVER (ORDER BY userId ASC)\n"
                + "as rownum, * from [User]) tbl\n"
                + "where rownum between ? and ?";

        List<User> listUser = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pageIndex * 5 - 4);
            ps.setInt(2, pageIndex * 5);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getBoolean(7),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9));
                listUser.add(user);
            }
        } catch (Exception e) {
        }
        return listUser;
    }
     public int totalPageListUser() {
        String query = "select count(*) from [User]";
        int count = 0;
        int totalPage = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
            if (count % 5 > 0) {
                totalPage = count / 5 + 1;
            } else {
                totalPage = count / 5;
            }
        } catch (Exception e) {
        }
        return totalPage;
    }
     //Load all Order and phân trang
      public List<Order> getAllOrderPagging(int pageIndex) {
        List<Order> listOrder = new ArrayList<>();
        String query = "select * from \n" +
"             (select ROW_NUMBER() over  (order by orderDate DESC)\n" +
"               as rownum, * from Orders) o\n" +
"              join Product p\n" +
"              on o.productId = p.productId\n" +
"              join [User] u\n" +
"              on u.userId = o.userId\n" +
"              where rownum between ? and ?";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pageIndex * 5 - 4);
            ps.setInt(2, pageIndex * 5);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt(15),
                        rs.getString(16),
                        rs.getString(17),
                        rs.getString(18),
                        rs.getBoolean(19),
                        rs.getString(20),
                        rs.getString(21),
                        rs.getString(22));
                Categories categories = new Categories();
                categories.setCategoriesId(rs.getInt(14));
                Product product = new Product(
                        rs.getInt(8),
                        rs.getString(8),
                        rs.getFloat(10),
                        rs.getInt(11),
                        rs.getString(12),
                        rs.getString(13),
                        categories);
                Order order = new Order(rs.getInt(2), user, product, 
                        rs.getInt(5), rs.getDate(6), rs.getString(7));
                listOrder.add(order);
            }
        } catch (Exception e) {
        }
        return listOrder;
    }

    public int totalPageListOrder() {
        String query = "select count(*) from Orders";
        int count = 0;
        int totalPage = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
            if (count % 5 > 0) {
                totalPage = count / 5 + 1;
            } else {
                totalPage = count / 5;
            }
        } catch (Exception e) {
        }
        return totalPage;
    }
    public  void insertNewUser(String username, String password,
            String fullname,boolean gender, String address
            ,String phone,String role){
        String query = "insert into [User]\n" +
                        "values(?,?,?,?,?,?,?)";
        try {
       conn = new DBContext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, username);
        ps.setString(2, password);
        ps.setString(3, fullname);
        ps.setBoolean(4, gender);
        ps.setString(5,  address);
        ps.setString(6, phone);
        ps.setString(7, role);
        ps.executeUpdate();
        } catch (Exception e) {
        }
       
    }
    //DeleteAccountSevlet
    public void deleteAccount(int userId) {
        String query = "delete from [User]\n"
                + "where userId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void deleteOrderByUserId(int userId) {
        String query = "delete from Orders\n"
                + "where userId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteCartByUserId(int userId) {
        String query = "delete from Cart\n"
                + "where userId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    //DeleteOrderServlet
 public void deleteOrderByOrderId(int orderId) {
        String query = "delete from Orders\n"
                + "where orderId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, orderId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
  
    //UpdateAccount 
    public User getUserByUserId(int userId) {
        String query = "select * from [User]\n"
                + "where userId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getBoolean(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8));
                return user;
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void deleteProductByProductId(int productId) {
        String query = "delete from Product\n"
                + "where productId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public void deleteOrderByProductId(int productId) {
        String query = "delete from Orders\n"
                + "where productId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            ps.executeUpdate();
        } catch (Exception e) {
            
        }
    }

    public void deleteCartByProductId(int productId) {
        String query = "delete from Cart\n"
                + "where productId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

 public void insertProduct(int productId, String productName, float price, int quantity, String description, String images,int categoriesId) {
        String query = "insert into Product\n"
                + "values(?,?, ?, ?, ?, ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            ps.setString(2, productName);
            ps.setFloat(3, price);
            ps.setInt(4, quantity);
            ps.setString(5, description);
            ps.setString(6, images);
            ps.setInt(7, categoriesId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    //CreateNewProduct
     public List<Categories> getAllCategory() {
        List<Categories> list = new ArrayList<>();
        String query = "select * from Categories";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Categories(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }   public int getAllCategorybyId(int categoriesId) {
        List<Categories> list = new ArrayList<>();
            String query = "select count(*) from Categories c join  Product p on c.categoriesId = p.categoriesId\n"
                    + "where c.categoriesId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, categoriesId);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                return  rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }
      public void updateAccount(String password, String fullName, boolean gender, 
              String address, String phone, String role, int userId) {
        String query = "update [User]\n"
                + "set password = ?,\n"
                + "fullName = ?,\n"
                + "gender = ?,\n"
                + "address = ?,\n"
                + "phone = ?,\n"
                + "role = ?\n"
                + "where userId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, fullName);
            ps.setBoolean(3, gender);
            ps.setString(4, address);
            ps.setString(5, phone);
            ps.setString(6, role);
            ps.setInt(7, userId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
     
      public float totalAmountOfSales() {
        String query = "select sum(o.quantity * p.price) \n" +
"                 from Orders o\n" +
"                 join Product p\n" +
"                on o.productId = p.productId\n" +
"                where o.orderDescription = 'success'";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getFloat(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }
       //Error
      public void updateProduct(int categoriesId, String productName, 
              float price, int quantity, String productDescription, 
              String images, int productId) {
        String query = "update Product\n"
                + "set categoriesId = ?,\n"
                + "productName = ?,\n"
                + "price = ?,\n"
                + "quantity = ?,\n"
                + "productDescription = ?,\n"
                + "[image] = ?\n"
                + "where productId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, categoriesId);
            ps.setString(2, productName);
            ps.setFloat(3, price);
            ps.setInt(4, quantity);
            ps.setString(5, productDescription);
            ps.setString(6, images);
            ps.setInt(7, productId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
        //Updatestatus
    public void updateStatusOrder(int orderId) {
        String query = "update Orders\n"
                + "set orderDescription = 'success'\n"
                + "where orderId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, orderId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
     public static void main(String[] args) {
        AdminDal ad = new AdminDal();
//       ad.insertNewUser("11", "12345", "ki", true, "HN", "09191919", "ROLE_member");

         System.out.println(ad.getAllCategorybyId(1));
}
}
