package CustomerPkg;

import java.sql.Connection;
import java.sql.DriverManager;


public class IT2259_DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/testdb";
	private static String user = "root";
	private static String pass = "$Andaru2";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection(url, user, pass);
			
			
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
