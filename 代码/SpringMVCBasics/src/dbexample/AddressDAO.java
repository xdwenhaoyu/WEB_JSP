package dbexample;
import java.util.*;
import java.sql.*;

public class AddressDAO {

	public static Address loadAddress(int id) {
		Address address = null;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = DBUtil.getConnection();
			String sql = "SELECT [AddressID],[AddressLine1],[City],[StateProvinceID],[PostalCode] FROM [Person].[Address] where [AddressID] =?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				address = new Address();
				address.setAddressID(rs.getInt("AddressID"));
				address.setAddressLine1(rs.getString("AddressLine1"));
				address.setCity(rs.getString("City"));
				address.setStateProvinceID(rs.getInt("StateProvinceID"));
				address.setPostalCode(rs.getString("PostalCode"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				DBUtil.closeConnection(con, ps, null);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return address;
	}

	public static List<Address> findAll() {
		List<Address> addressList = new ArrayList<Address>();
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			con = DBUtil.getConnection();
			String sql = "SELECT top 10 [AddressID],[AddressLine1],[City],[StateProvinceID],[PostalCode] FROM [Person].[Address] order by [AddressID] desc";
			//String sql = "SELECT top 10 * FROM Address";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				Address address = new Address();

				address.setAddressID(rs.getInt("AddressID"));
				address.setAddressLine1(rs.getString("AddressLine1"));
				address.setCity(rs.getString("City"));
				address.setStateProvinceID(rs.getInt("StateProvinceID"));
				address.setPostalCode(rs.getString("PostalCode"));

				addressList.add(address);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				DBUtil.closeConnection(con, ps, null);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return addressList;
	}

	public static void addAddress(Address address) {
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "INSERT INTO [Person].[Address] ([AddressLine1],[City],[StateProvinceID],[PostalCode]) values(?,?,?,?)";
		try {

			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);

			ps.setString(1, address.getAddressLine1());
			ps.setString(2, address.getCity());
			ps.setInt(3, address.getStateProvinceID());
			ps.setString(4, address.getPostalCode());

			int flag = ps.executeUpdate();
			if (flag > 0) {
				System.out.println("添加成功！");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				DBUtil.closeConnection(con, ps, null);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public static void deleteAddress(int id) {
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "DELETE FROM [Person].[Address] WHERE [AddressID]=?";
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			int flag = ps.executeUpdate();
			if (flag > 0) {
				System.out.println("删除成功！");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				DBUtil.closeConnection(con, ps, null);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public static void updateAddress(Address address) {
		Connection con=null;
		PreparedStatement ps=null;
		String sql="UPDATE [Person].[Address] SET [AddressLine1]=?,[City]=?,[StateProvinceID]=?,[PostalCode]=? where [AddressID]=?";
		try {
			con=DBUtil.getConnection();
			ps=con.prepareStatement(sql);
			
			ps.setString(1, address.getAddressLine1());
			ps.setString(2, address.getCity());
			ps.setInt(3, address.getStateProvinceID());
			ps.setString(4, address.getPostalCode());
			ps.setInt(5, address.getAddressID());
			
			int flag=ps.executeUpdate();
			if(flag>0) {
				System.out.println("更新成功！");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				DBUtil.closeConnection(con, ps, null);
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
