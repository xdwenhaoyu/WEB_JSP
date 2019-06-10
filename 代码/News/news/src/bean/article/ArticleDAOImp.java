package bean.article;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.commom.*;
import bean.DB;

public class ArticleDAOImp {

	public static int insert(String title, int columnid, String author,
			String content, boolean istop, boolean iscomment) {
		DB db = new DB();
		Connection con = db.getCon();
		CallableStatement cableState = null;
		Statement stmt = null;
		ResultSet rs = null;
		int num = 0;
		int Articleid = 0;
		try {
			cableState = con.prepareCall("{call addNews(?,?,?,?,?,?)}");
			cableState.setString(1, title);
			cableState.setInt(2, columnid);
			cableState.setString(3, author);
			cableState.setString(4, content);
			cableState.setBoolean(5, istop);
			cableState.setBoolean(6, iscomment);
			num = cableState.executeUpdate();
			stmt = con.createStatement();
			rs = stmt.executeQuery("SELECT @@IDENTITY AS 'Identity'");
			if (rs.next()) {
				Articleid = rs.getInt(1);
			}
			cableState.close();
			stmt.close();
			con.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (num > 0 && Articleid > 0) {
			return Articleid;
		}
		return 0;
	}

	public static List<Article> select(int id,int topnum) {

		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT top "+topnum+" article_id,article_title,column_id,article_author,article_content,article_updateTime,article_addTime," +
				"article_viewnum,article_htmlurl,article_keywords,article_status," +
				"case when article_istop=1 then '是' else '否' end article_istop," +
				"case when article_iscomment=1 then '是' else '否' end article_iscomment FROM article where column_id='"+id+"' order by article_updateTime desc";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		List<Article> list = new ArrayList<Article>();
		try {
			while (rs.next()) {
				Article article = new Article();
				article.setArticleid(rs.getInt("article_id"));
				article.setArtitle(HtmlUtil.getStringtrim(rs.getString("article_title"), 15));
				article.setColumnid(rs.getInt("column_id"));
				article.setArtauthor(rs.getString("article_author"));
				article.setContent(HtmlUtil.getStringtrim(rs.getString("article_content"),250));
				article.setArtupdateTime(rs.getTimestamp("article_updateTime"));
				article.setArtaddTime(rs.getTimestamp("article_addTime"));
				article.setViewnum(rs.getInt("article_viewnum"));
				article.setArthtmlurl(rs.getString("article_htmlurl"));
				article.setArtkeywords(rs.getString("article_keywords"));
				article.setArtstatus(rs.getInt("article_status"));
				article.setArtistop(rs.getString("article_istop"));
				article.setArtiscomment(rs.getString("article_iscomment"));
				list.add(article);
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static Article findArticleById(int id) {
		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT article_id,article_title,column_id,article_author,article_content,article_updateTime," +
				"article_addTime,article_viewnum,article_htmlurl,article_keywords,article_status," +
				"case when article_istop=1 then '是' else '否' end article_istop,case when article_iscomment=1 " +
				"then '是' else '否' end article_iscomment FROM article where article_id='"+id+"'";
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		Article article = new Article();
		try {
			while (rs.next()) {
				article.setArticleid(rs.getInt("article_id"));
				article.setArtitle(rs.getString("article_title"));
				article.setColumnid(rs.getInt("column_id"));
				article.setArtauthor(rs.getString("article_author"));
				article.setContent(rs.getString("article_content"));
				article.setArtupdateTime(rs.getTimestamp("article_updateTime"));
				article.setArtaddTime(rs.getTimestamp("article_addTime"));
				article.setViewnum(rs.getInt("article_viewnum"));
				article.setArthtmlurl(rs.getString("article_htmlurl"));
				article.setArtkeywords(rs.getString("article_htmlurl"));
				article.setArtstatus(rs.getInt("article_status"));
				article.setArtistop(rs.getString("article_istop"));
				article.setArtiscomment(rs.getString("article_iscomment"));
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return article;
	}

	public static boolean delete(int id) {
		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt = null;
		int n = 0;
		try {
			stmt = con.createStatement();
			String sql = "delete from article where article_id=" + id;
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

	public static boolean update(String title, int col_id, String author,
			String content, boolean istop, boolean iscomment, int id) {
		DB db = new DB();
		Connection con = db.getCon();
		CallableStatement cableState = null;
		int num = 0;
		try {
			cableState = con.prepareCall("{call updateNews(?,?,?,?,?,?,?)}");
			cableState.setString(1, title);
			cableState.setInt(2, col_id);
			cableState.setString(3, author);
			cableState.setString(4, content);
			cableState.setBoolean(5, istop);
			cableState.setBoolean(6, iscomment);
			cableState.setInt(7, id);
			num = cableState.executeUpdate();
			cableState.close();
			con.close();
		} catch (Exception e) {
		}
		if (num > 0) {
			return true;
		}
		return false;

	}
	
	public static void updateUrl(int id,String url)
	{
		DB db = new DB();
		Connection con = db.getCon();
		Statement stmt=null;
		try {
			stmt=con.createStatement();
		String sql="update article set article_htmlurl='"+url+"' where article_id='"+id+"'";
		stmt.executeUpdate(sql);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}
}
