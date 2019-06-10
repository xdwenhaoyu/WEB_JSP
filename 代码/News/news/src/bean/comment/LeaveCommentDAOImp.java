package bean.comment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bean.DB;

public class LeaveCommentDAOImp {
	
	public static boolean insert(String name, String content,String ip,int articleid) {
		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt = null;
		int n = 0;
		try {
			stmt = con.createStatement();
			java.text.SimpleDateFormat df=new java.text.SimpleDateFormat("yyyy-MM-dd   HH:mm "); 
			String sql = "insert into comment(comment_name,comment_content,comment_adddate,comment_ip,article_id) values('" + name + "','"
					+ content + "','" +df.format(new Date())+ "','" + ip + "',"+articleid+")";
			n = stmt.executeUpdate(sql);
			stmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (n > 0) {
			return true;
		}
		return false;
	}
	public static List<LeaveComment> select(int articleid)
	{
		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM comment where article_id=" + articleid+" order by comment_adddate desc";
		List<LeaveComment> list = new ArrayList<LeaveComment>();
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				LeaveComment comment = new LeaveComment();
				comment.setId(rs.getInt("comment_id"));
				comment.setNickname(rs.getString("comment_name"));
				comment.setContent(rs.getString("comment_content"));
				comment.setAdddate(rs.getTimestamp("comment_adddate"));
				comment.setIp(rs.getString("comment_ip"));
				list.add(comment);
			}
			rs.close();
			stmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}