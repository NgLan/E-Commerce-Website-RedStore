package dao;

import context.DBContext;
import entity.Account;
import entity.Cart;
import entity.Category;
import entity.Color;
import entity.Feedback;
import entity.Product;
import entity.Size;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    Connection conn = null; //Dung de connect vs SQL Server
    PreparedStatement ps = null; //Dung de nem query sang SQL Server
    ResultSet rs = null; //Nhan ket qua tra ve
    
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "SELECT * FROM Category";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM [Product]\n" +
            "WHERE [Image] NOT LIKE 'exclusive.png'";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getFloat(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getFeaturedProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT TOP 4 * FROM [Product]\n" +
            "WHERE [Image] NOT LIKE 'exclusive.png'\n" +
            "ORDER BY Rate DESC;";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getFloat(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getLastProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT TOP 8 * FROM [Product]\n" +
            "WHERE [Image] NOT LIKE 'exclusive.png'\n" +
            "ORDER BY ID DESC";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getFloat(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public Product getExclusiveProduct() {
        String query = "SELECT * FROM [Product]\n" +
            "WHERE [Image] = 'exclusive.png'";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getFloat(7));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public List<Feedback> getFeedback() {
        List<Feedback> list = new ArrayList<>();
        String query = "SELECT fb.UserID, acc.FullName, acc.[Image], fb.Review, fb.Rate\n" +
            "FROM Account AS acc\n" +
            "RIGHT JOIN Feedback AS fb\n" +
            "ON acc.ID = fb.UserID";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Feedback(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getFloat(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Product> getProductByCategory(String cateID) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM [Product]\n" +
            "WHERE CategoryID = ? AND [Image] <> 'exclusive.png'";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            ps.setString(1, cateID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getFloat(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public Category getCategory(String cateID) {
        String query = "SELECT * FROM Category\n" +
            "WHERE ID = ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            ps.setString(1, cateID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Category(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public Account login(String user, String password) {
        String query = "SELECT * FROM Account\n" +
            "WHERE [User] = ? AND [Password] = ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            ps.setString(1, user);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public Account register(String user, String password) {
        String query = "SELECT * FROM Account\n" +
            "WHERE ? NOT IN [User]";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            ps.setString(1, user);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public Account checkAccountExist(String user) {
        String query = "SELECT * FROM Account\n" +
            "WHERE [User] = ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public void signUp(String user, String pass) {
        String query = "INSERT INTO Account\n" +
            "VALUES (?, ?, 1, '', '')";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public List<Size> getAllSize() {
        List<Size> list = new ArrayList<>();
        String query = "SELECT * FROM Size";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Size(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Color> getAllColor() {
        List<Color> list = new ArrayList<>();
        String query = "SELECT * FROM Color";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Color(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public List<Cart> getUserCart(int userID) {
        List<Cart> list = new ArrayList<>();
        String query = "SELECT P.ID AS ProductID, P.[Image], P.[Name], C.Quantity, S.ID AS SizeID, S.[Name] AS Size, Color.ID AS ColorID, Color.[Name] AS Color, P.Price FROM [Product] P\n" +
            "JOIN (SELECT * FROM Cart WHERE [UserID] = ?) C\n" +
            "ON P.ID = C.ProductID\n" +
            "JOIN (SELECT * FROM Size) S\n" +
            "ON S.ID = C.SizeID\n" +
            "JOIN (SELECT * FROM Color) Color\n" +
            "ON Color.ID = C.ColorID";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            ps.setInt(1, userID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Cart(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getDouble(9)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public void removeFromCart(int uid, int pid, int sid, int cid) {
        String query = "DELETE FROM Cart\n" +
            "WHERE [UserID] = ?\n" + 
            "AND ProductID = ?\n" + 
            "AND SizeID = ?\n" + 
            "AND ColorID = ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            ps.setInt(1, uid);
            ps.setInt(2, pid);
            ps.setInt(3, sid);
            ps.setInt(4, cid);
            rs = ps.executeQuery();
        } catch (Exception e) {
        }
    }
    
    public static void main(String[] args) {
        DAO dao = new DAO();
//        List<Category> listC = dao.getCategory();
//        List<Product> listP = dao.getProduct();
//        List<Product> featuredProduct = dao.getFeaturedProduct();
//        List<Product> lastProduct = dao.getLastProduct();
//        Product exProduct = dao.getExclusiveProduct();
//        List<Feedback> listFB = dao.getFeedback();
//        List<Product> proByCate = dao.getProductByCategory("1");
//        Category cateName = dao.getCategory("1");
//        Account acc = dao.login("user1", "password1");
        List<Cart> listP = dao.getUserCart(1);
        
//        for (Category o : listC) {
//            System.out.println(o);
//        }
//        for (Product o : listP) {
//            System.out.println(o);
//        }
//        for (Product o : featuredProduct) {
//            System.out.println(o);
//        }
//        for (Product o : lastProduct) {
//            System.out.println(o);
//        }
//        System.out.println(exProduct);
//        for (Feedback o : listFB) {
//            System.out.println(o);
//        }
//        for (Product o : proByCate) {
//            System.out.println(o);
//        }
//        System.out.println(cateName);
//        System.out.println(acc);
        for (Cart o : listP) {
            System.out.println(o);
        }
    }
}