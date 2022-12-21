package US.VHN.connect;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

	
public class jdbc {
	public static void main(String[] args) {
        // TODO Auto-generated method stub
         Connection conn = null;
         
            try {
    
                String dbURL = "jdbc:sqlserver://localhost:1433;DatabaseName=US_Assignment";
                String user = "huynguyen";
                String pass = "123456";
                conn = DriverManager.getConnection(dbURL, user, pass);
                if (conn != null) {
                    DatabaseMetaData dm = (DatabaseMetaData) conn.getMetaData();
                    System.out.println("Tên Driver: " + dm.getDriverName());
                    System.out.println("Phiên bản Driver: " + dm.getDriverVersion());
                    System.out.println("Tên Cơ sở dữ liệu: " + dm.getDatabaseProductName());
                    System.out.println("Phiên bản Cơ sở dữ liệu: " + dm.getDatabaseProductVersion());
                }  
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from Client where clntnum =" + 5632154  );
                while (rs.next()) {
                    System.out.println(rs.getInt(1) + "  " + rs.getString(2) );
                }
                // close connection
                conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                try {
                    if (conn != null && !conn.isClosed()) {
                        conn.close();
                    }
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
       
       
    }
}


