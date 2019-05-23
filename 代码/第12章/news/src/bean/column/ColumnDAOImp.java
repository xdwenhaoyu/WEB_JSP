package bean.column;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.DB;

public class ColumnDAOImp {

	public static boolean insert(String name, String desc) {
		DB db = new DB();
		Connection con = db.getCon();
		CallableStatement cableState = null;
		int num = 0;
		try {
			cableState = con.prepareCall("{call addCol(?,?)}");
			cableState.setString(1, name);
			cableState.setString(2, desc);
			num = cableState.executeUpdate();
			cableState.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (num > 0) {
			return true;
		}
		return false;
	}

	public static List<Column> select() {
		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM [column]";
		List<Column> list = new ArrayList<Column>();
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Column column = new Column();
				column.setColumnid(rs.getInt("column_id"));
				column.setColumntitle(rs.getString("column_title"));
				column.setColumndesc(rs.getString("column_introduce"));
				list.add(column);
			}
			rs.close();
			stmt.close();
			con.close();
		} catch (Exception e) {
		}
		return list;
	}

	public static void update(int id, String title, String desc) {
		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt = null;
		try {
			stmt = con.createStatement();
			String sql = "update column set column_title='" + title
					+ "',column_introduce='" + desc + "' where column_id='"
					+ id + "'";
			stmt.executeUpdate(sql);
			stmt.close();
			con.close();
		} catch (Exception e) {
		}

	}

	public static boolean delete(int id) {
		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt = null;
		int n = 0;
		try {
			stmt = con.createStatement();
			String sql = "delete from [column] where column_id=" + id;
			n = stmt.executeUpdate(sql);
			stmt.close();
			con.close();
		} catch (Exception e) {
		}
		if (n > 0) {
			return true;
		}
		return false;
	}

}
