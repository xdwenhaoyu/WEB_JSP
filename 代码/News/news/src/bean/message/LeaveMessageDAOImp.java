package bean.message;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import bean.DB;

public class LeaveMessageDAOImp {
	
	public static boolean insert(String name, String content,String ip) {
		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt = null;
		int n = 0;
		try {
			stmt = con.createStatement();
			java.text.SimpleDateFormat df=new java.text.SimpleDateFormat("yyyy-MM-dd   HH:mm "); 
			String sql = "insert into message(message_name,message_content,message_adddate,message_ip) values('" + name + "','"
					+ content + "','" +df.format(new Date())+ "','" + ip + "')";
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
	public static List<LeaveMessage> select()
	{
		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM message order by message_adddate desc";
		List<LeaveMessage> list = new ArrayList<LeaveMessage>();
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				LeaveMessage message = new LeaveMessage();
				message.setId(rs.getInt("message_id"));
				message.setNickname(rs.getString("message_name"));
				message.setContent(rs.getString("message_content"));
				message.setAdddate(rs.getTimestamp("message_adddate"));
				message.setIp(rs.getString("message_ip"));
				list.add(message);
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
