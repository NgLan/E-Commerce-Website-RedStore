package dao;

import context.DBContext;
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
    
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM product";
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
                        rs.getInt(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
}
