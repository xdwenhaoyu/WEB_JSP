package bean.column;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class SelectList {
	 Connection con = null;
	 Statement stmt = null;
	 ResultSet rs = null;

	public SelectList() { // ¼ÓÔØÇÅ½ÓÆ÷¡£
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e) {
		}
	}

	public List<Column> getColumn() {
		List<Column> list = new ArrayList<Column>();		
		try {
			con = DriverManager.getConnection(
					"jdbc:sqlserver://localhost:1433;DatabaseName=db_news",
					"sa", "123321");
			stmt = con.createStatement();
			String sql = "SELECT * FROM topic";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Column column = new Column();
				column.setColumnid(rs.getInt("column_id"));
				column.setColumntitle(rs.getString("column_title"));	
				list.add(column);
			}
			con.close();
			return list;
		} catch (SQLException e) {
			return list;
		}
	}
	
}
