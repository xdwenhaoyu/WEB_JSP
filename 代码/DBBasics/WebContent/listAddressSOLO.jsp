<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>展示数据</title>
</head>
<body>
	<%
		final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		final String URL = "jdbc:sqlserver://localhost:1433;DatabaseName=AdventureWorks2008R2";
		final String USER = "sa";
		final String PASSWORD = "123456";
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			Class.forName(DRIVER);
			System.out.println("数据库驱动[ " + DRIVER + "] 加载成功.");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("数据库驱动[ " + DRIVER + "] 加载失败");
		}

		try {
			con = DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (SQLException e) {
			throw new RuntimeException("连接数据库失败", e);
		}

		String sql = "SELECT top 10 [AddressID],[AddressLine1],[City],[StateProvinceID],[PostalCode] FROM [Person].[Address]";

		ps = con.prepareStatement(sql);
		rs = ps.executeQuery();
	%>
	<table border="1" style="width:100%">
		<tr>
			<th>AddressID</th>
			<th>AddressLine1</th>
			<th>City</th>
			<th>StateProvinceID</th>
			<th>PostalCode</th>
		</tr>
		<%
			while (rs.next()) {
		%>

		<tr>
			<td><%=rs.getInt("AddressID")%></td>
			<td><%=rs.getString("AddressLine1")%></td>
			<td><%=rs.getString("City")%></td>
			<td><%=rs.getInt("StateProvinceID")%></td>
			<td><%=rs.getString("PostalCode")%></td>
		</tr>

		<%
			}
		%>
	</table>

	<%
		//关闭连接
		if (rs != null) {
			rs.close();
		}
		if (ps != null) {
			ps.close();
		}
		if (con != null) {
			con.close();
		}
	%>
</body>
</html>