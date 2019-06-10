package bean.column;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.DB;

public class Pagination {

	public static int getPageNum(String tableName) {        // 获取分页的总数
		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt = null;
		ResultSet rs = null;
		int pageNum = 0;
		//String sql = "select count(*) from `column`";
		String sql = "select count(*) from" + tableName;
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			rs.next();
			pageNum = rs.getInt(1);
			rs.close();
			stmt.close();
			con.close();
		} catch (Exception e) {
		}
		return pageNum;
	}
	public static int getPageNum(String tableName,int columnId) {        // 获取分页的总数
		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt = null;
		ResultSet rs = null;
		int pageNum = 0;
		//String sql = "select count(*) from `column`";
		String sql = "select count(*) from " + tableName + " where column_id =" + columnId;
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			rs.next();
			pageNum = rs.getInt(1);
			rs.close();
			stmt.close();
			con.close();
		} catch (Exception e) {
		}
		return pageNum;
	}
	public static List<Column> getPage(int pageSize, int curPage) { // 将分页后的页面放入一个List里面
		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt = null;
		ResultSet rs = null;
		List<Column> list = new ArrayList<Column>();
		try {
			stmt = con.createStatement();
			/*String sql = "select top "
					+ pageSize
					+ " * from topic where column_id not in(select top "
					+ preRecords
					+ " column_id from topic order by column_id) order by column_id ";*/
			String sql = "select  * from `column` limit " + pageSize * (curPage - 1) + "," + pageSize + "";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Column column = new Column();
				column.setColumnid(rs.getInt(1));
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
}
