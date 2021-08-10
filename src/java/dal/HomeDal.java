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
import model.Cart;
import model.Categories;
import model.Order;
import model.Product;
import model.User;

/**
 *
 * @author Vuong Van Truong
 */
public class HomeDal {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public List<Product> getAllProduct(int pagIndex) {//get allproduct and số sản phẩm trên 1 trang
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
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pagIndex * 9 - 8);
            ps.setInt(2, pagIndex * 9);
//            ps.setInt(1, (pagIndex)*8);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categories categories = new Categories(rs.getInt(9), rs.getString(10));
                listP.add(new Product(rs.getInt(2), rs.getString(3),
                        rs.getFloat(4), rs.getInt(5), rs.getString(6),
                        rs.getString(7), categories));

            }
        } catch (Exception e) {
        }
        return listP;
    }
     public List<Product> getAllProductbyCategoriesId(int categoresId) {
//get allproduct and số sản phẩm trên 1 trang
        List<Product> listP = new ArrayList<>();
        String query = "Select p.* from Product p join Categories c on p.categoriesId = c.categoriesId\n" +
                        "where c.categoriesId = ?";
//            String query = "select * from [Product] p\n" +
//"order by p.productId\n" +
//"Offset ? rows fetch next 8 rows only";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, categoresId);
//            ps.setInt(1, (pagIndex)*8);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categories categories = new Categories();
                listP.add(new Product(rs.getInt(1), rs.getString(2),
                        rs.getFloat(3), rs.getInt(4), rs.getString(5),
                        rs.getString(6), categories));

            }
        } catch (Exception e) {
        }
        return listP;
    }

    public List<Product> getAllProductSearch(int pagIndex, String txtSearch) {
        String query = "SELECT * FROM\n"
                + "(SELECT ROW_NUMBER() OVER (ORDER BY productId ASC)\n"
                + "as rownum, * from Product p where productName like ?) [table]\n"
                + "join Categories c on [table].categoriesId = c.categoriesId\n"
                + "where rownum between ? and ?";
        List<Product> listP = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            ps.setInt(2, pagIndex * 9 - 8);
            ps.setInt(3, pagIndex * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categories categories = new Categories(rs.getInt(9), rs.getString(10));
                listP.add(new Product(
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getString(7),
                        categories));
            }
        } catch (Exception e) {
        }
        return listP;
    }

    public int totalPage() { //tổng số trang 
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
            if (count % 9 > 0) { //!=0
                totalPage = count / 9 + 1;
            } else {
                totalPage = count / 9;
            }
        } catch (Exception e) {
        }
        return totalPage;
    }

    public int totalPageSearch(String txtSearch) {
        String query = "select count(*) from Product\n"
                + "where productName like ?";
        int count = 0;
        int totalPage = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
            if (count % 9 > 0) {
                totalPage = count / 9 + 1;
            } else {
                totalPage = count / 9;
            }
        } catch (Exception e) {
        }
        return totalPage;
    }

    public Product getProductbyId(int productId) {
        String query = "select * from Product p join Categories c\n"
                + "on p.categoriesId = c.categoriesId\n"
                + "where p.productId = ?";
        Product product = new Product();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categories categories = new Categories(rs.getInt(8), rs.getString(9));
                product = new Product(rs.getInt(1), rs.getString(2), rs.getFloat(3), rs.getInt(4),
                        rs.getString(5), rs.getString(6), categories);
            }
        } catch (Exception e) {
        }
        return product;
    }

   

    
//get so luong theo tung account theo productId
    public int getQuantityInCartbyProductId(int userId, int productId) { //1cart
        String query = "select c.quantity\n"
                + "from Cart c\n"
                + "where c.userId = ? and c.productId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            ps.setInt(2, productId);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
//            rs = ps.executeQuery();
        } catch (Exception e) {

        }
        return 0;
    }
     public void addProductInCart(int quantity, int userId, int productId) {
        String query = "Insert into Cart values(?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setInt(2, userId);
            ps.setInt(3, productId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
public Cart GetProduct(int productid) {
        try {
            String  query = "select * from cart where productid= ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productid);
            rs = ps.executeQuery();
            while (rs.next()) {                
                Product product = new Product();
                User user = new User();
                return new Cart(rs.getInt(1), 
                       user,
                        product, 
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void updateQuantityProductInCart(int quantity, int userId, int productId) {
        String query = "update Cart set quantity = ? where userId = ? and productId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setInt(2, userId);
            ps.setInt(3, productId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }//.1
//      public List<Cart> getAllProductInCartByUserId(int userId) {
//        List<Cart> listCart = new ArrayList<>();
//          String query = "select * \n"
//                  + "from Cart c join [User] u on c.userId = u.userId\n"
//                  + "            join Product p on c.productId = p.productId \n"
//                  + "            join Categories cg on p.categoriesId = cg.categoriesId\n"
//                  + "where u.userId = ?";
//          try {
//              conn = new DBContext().getConnection();
//              ps = conn.prepareStatement(query);
//              ps.setInt(1, userId);
//              rs = ps.executeQuery();
//              while (rs.next()) {
//                  User user = new User(rs.getInt("userId"),
//                          rs.getString("username"), rs.getString("password"),
//                          rs.getString("fullname"), rs.getBoolean("gender"),
//                          rs.getString("address"), rs.getString("phone"), rs.getString("role"));
//                  Categories categories = new Categories(rs.getInt("categoriesId"), rs.getString("categoriesName"));
//                  Product product = new Product(
//                          rs.getInt("productId"),
//                          rs.getString("productName"),
//                          rs.getFloat("price"),
//                          rs.getInt("quantity"),
//                          rs.getString("productDescription"),
//                          rs.getString("images"),
//                          categories);
//                  Cart cart = new Cart(rs.getInt("cartId"), user, product, rs.getInt("quantity"));
//               listCart.add(cart);
//            }
//        } catch (Exception e) {
//        }
//        return listCart;
//    }

    public List<Cart> getAllProductInCartByUserId(int userId) { //2cartt
        List<Cart> listCart = new ArrayList<>();
        String query = "select * \n"
                + "from Cart c join [User] u on c.userId = u.userId\n"
                + "            join Product p on c.productId = p.productId \n"
                + "            join Categories cg on p.categoriesId = cg.categoriesId\n"
                + "where u.userId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt(5),
                        rs.getString(6), rs.getString(7),
                        rs.getString(8), rs.getBoolean(9),
                        rs.getString(10), rs.getString(11), rs.getString(12));
                Categories categories = new Categories(rs.getInt(19), rs.getString(21));
                Product product = new Product(
                        rs.getInt(13),
                        rs.getString(14),
                        rs.getFloat(15),
                        rs.getInt(16),
                        rs.getString(17),
                        rs.getString(18),
                        categories);
                Cart cart = new Cart(rs.getInt(1), user, product, rs.getInt(2));
                listCart.add(cart);
            }
        } catch (Exception e) {
        }
        return listCart;
    }
//UpdateQuantityInCart Servlet
    public void updateQuantityCartItem(int cartId, int quantity) {
        String query = "update Cart\n"
                + "set quantity = ?\n"
                + "where cartId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, quantity);
            ps.setInt(2, cartId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void DeleteQuantityCartItem(int cartId) {
        String query = "Delete from Cart where cartId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, cartId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editInformation(int userId, String fullName, String phone, String address) {
        String query = "Update [User]\n"
                + "set fullname = ?,\n"
                + "phone = ?\n"
                + "[address] = ?\n"
                + "where userId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, fullName);
            ps.setString(2, phone);
            ps.setString(3, address);
            ps.setInt(4, userId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void DeleteCartItem(int userId) {
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

    public void checkOut(int userId, int productId, int quantity) {
        String query = "insert into Orders\n"
                + "values(?, ?, ?, getDate(), 'waiting_line')";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            ps.setInt(2, productId);
            ps.setInt(3, quantity);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Product getProduct(int productId) {
        String query = "select * from Product p\n"
                + "join Categories c\n"
                + "on p.categoriesId = c. categoriesId\n"
                + "where productId = ?";
        Product product = new Product();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categories categories = new Categories(rs.getInt(8), rs.getString(9));
                product = new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getFloat(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        categories);
            }
        } catch (Exception e) {
        }
        return product;
    }
  public List<Order> getAllOrderByUserId(int userId) {
        List<Order> listOrder = new ArrayList<>();
        String query = "select * from Orders o\n"
                + "join [User] u\n"
                + "on o.userId = u.userId\n"
                + "join Product p\n"
                + "on o.productId = p.productId\n"
                + "join Categories cg\n"
                + "on p.categoriesId = cg.categoriesId\n"
                + "where u.userId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getBoolean(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14));
                Categories categories = new Categories(rs.getInt(22), rs.getString("categoriesName"));
                Product product = new Product(
                        rs.getInt(15),
                        rs.getString(16),
                        rs.getFloat(17),
                        rs.getInt(18),
                        rs.getString(19),
                        rs.getString(20),
                        categories);
                Order order = new Order(rs.getInt(1), user, product, rs.getInt(4), rs.getDate(5), rs.getString(6));
                listOrder.add(order);
            }
        } catch (Exception e) {
        }
        return listOrder;
    }
  public List<Product> sortProductASC(int pagIndex){
      List<Product> listP = new ArrayList<>();
      String query = "Select * from \n"
              + "(select ROW_NUMBER() OVER (ORDER BY Price ASC)\n"
              + "as rownum, * from Product p )[table]\n"
              + "join Categories c on [table].categoriesId = c.categoriesId\n"
              + "where rownum between ? and ?";

       try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pagIndex * 9 - 8);
            ps.setInt(2, pagIndex * 8);
//            ps.setInt(1, (pagIndex)*8);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categories categories = new Categories(rs.getInt(9), rs.getString(10));
                listP.add(new Product(rs.getInt(2), rs.getString(3),
                        rs.getFloat(4), rs.getInt(5), rs.getString(6),
                        rs.getString(7), categories));

            }
        } catch (Exception e) {
        }
        return listP;
  }
    public List<Product> sortProductDESC(int pagIndex){
      List<Product> listP = new ArrayList<>();
      String query = "Select * from \n"
              + "(select ROW_NUMBER() OVER (ORDER BY Price DESC)\n"
              + "as rownum, * from Product p )[table]\n"
              + "join Categories c on [table].categoriesId = c.categoriesId\n"
              + "where rownum between ? and ?";

       try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, pagIndex * 9 - 8);
            ps.setInt(2, pagIndex * 8);
//            ps.setInt(1, (pagIndex)*8);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categories categories = new Categories(rs.getInt(9), rs.getString(10));
                listP.add(new Product(rs.getInt(2), rs.getString(3),
                        rs.getFloat(4), rs.getInt(5), rs.getString(6),
                        rs.getString(7), categories));

            }
        } catch (Exception e) {
        }
        return listP;
  }
   
    public static void main(String[] args) {
        HomeDal hd = new HomeDal();
       
//   List<Order> l = hd.getAllOrderByUserId(2);
//        for (Order order : l) {
//            System.out.println(order);
//        }
//List<Order> l = hd.getAllOrderByUserId(1);
//        for (Order order : l) {
//            System.out.println(order);
//        }
Cart c = hd.GetProduct(1);
        System.out.println(c);
        
}
}
