package bean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DB {

	public Connection getCon() {
		Properties properties = new Properties();
		Connection con = null;
		try {
			properties.load(this.getClass().getResourceAsStream(
					"/db.properties"));
			String driver = properties.getProperty("driver");
			String url = properties.getProperty("url");
			String user = properties.getProperty("user");
			String password = properties.getProperty("password");

			try {
				Class.forName(driver);
				con = DriverManager.getConnection(url, user, password);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return con;
	}
	
}
