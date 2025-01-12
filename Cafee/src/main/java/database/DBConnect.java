package database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static Connection con;
	public static Connection getCon() 
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/toibancafe?characterEncoding=UTF-8","root","taothichdutrai");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
}
