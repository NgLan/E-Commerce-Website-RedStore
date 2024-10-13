package dao;

import context.DBContext;
import entity.Category;
import entity.Feedback;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    Connection conn = null; //Dung de connect vs SQL Server
    PreparedStatement ps = null; //Dung de nem query sang SQL Server
    ResultSet rs = null; //Nhan ket qua tra ve
    
    public List<Category> getCategoryImage() {
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
    
    public static void main(String[] args) {
        DAO dao = new DAO();
//        List<Category> listC = dao.getCategoryImage();
//        List<Product> featuredProduct = dao.getFeaturedProduct();
//        List<Product> lastProduct = dao.getLastProduct();
//        Product exProduct = dao.getExclusiveProduct();
        List<Feedback> listFB = dao.getFeedback();

//        for (Category o : listC) {
//            System.out.println(o);
//        }
//        for (Product o : featuredProduct) {
//            System.out.println(o);
//        }
//        for (Product o : lastProduct) {
//            System.out.println(o);
//        }
//        System.out.println(exProduct);
        for (Feedback o : listFB) {
            System.out.println(o);
        }
    }
}