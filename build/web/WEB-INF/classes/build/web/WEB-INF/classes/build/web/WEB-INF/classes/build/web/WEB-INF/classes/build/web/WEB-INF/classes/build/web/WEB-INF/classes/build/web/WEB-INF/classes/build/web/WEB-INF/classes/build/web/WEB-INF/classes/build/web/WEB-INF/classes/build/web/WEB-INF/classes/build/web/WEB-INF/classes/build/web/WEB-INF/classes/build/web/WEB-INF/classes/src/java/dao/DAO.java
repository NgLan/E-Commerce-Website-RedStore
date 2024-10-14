package dao;

import context.DBContext;
import entity.Image;
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
    
    public List<Image> getImage(String option) {
        List<Image> image = new ArrayList<>();
        String query = "SELECT * FROM [Image]\n" +
            "WHERE [Option] = ?";
        try {
            conn = new DBContext().getConnection(); //mo ket noi voi sql
            ps = conn.prepareStatement(query); //Day cau lenh query qua SQL Server
            ps.setString(1, option);
            rs = ps.executeQuery();
            while (rs.next()) {
                image.add(new Image(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return image;
    }
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Image> image = dao.getImage("C");
        
        for (Image o : image) {
            System.out.println(o);
        }
    }
}