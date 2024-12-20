package context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
        public Connection getConnection() throws Exception {
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance 
                + ";databaseName=" + dbName + ";encrypt=true;trustServerCertificate=true";
        if (instance == null || instance.trim().isEmpty())
            url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName
                    + ";encrypt=true;trustServerCertificate=true";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }   

    private final String serverName = "localhost";
    private final String dbName = "RedStore";
    private final String portNumber = "1433";
    private final String instance="";//LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
    private final String userID = "sa";
    private final String password = "1234567890@2004";
    
    public static void main(String[] args) {
        try {
            System.out.println(new DBContext().getConnection());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
