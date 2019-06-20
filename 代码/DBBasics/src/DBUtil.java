import java.sql.*;
//import java.sql.DriverManager;

public class DBUtil {

	//设置数据库和连接池变量
	//需要从微软公司下载sqljdbc42.jar，拷贝到WEB-INF/lib中，作为JDBC驱动
	private static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String URL = "jdbc:sqlserver://localhost:1433;DatabaseName=AdventureWorks2008R2";
    private static final String USER="sa";
    private static final String PASSWORD="123456";

  
    //对外提供一个方法来获取数据库连接
    public Connection getConnection() {
    	
    	try {
    		Class.forName( DRIVER ) ;
    		System.out.println( "数据库驱动[ " + DRIVER + "] 加载成功." );
    	} catch (ClassNotFoundException e) {
    		e.printStackTrace();
    		System.out.println( "数据库驱动[ " + DRIVER + "] 加载失败" );
    	}
    	
    	Connection conn = null ;
    	
    	try {
    		conn = DriverManager.getConnection(URL, USER, PASSWORD);
    		return conn ; 
    	} catch (SQLException e) {
    		throw new RuntimeException( "连接数据库失败" , e );
    	}
    	
    }
    
    //关闭连接
    public void closeConnection(Connection con,PreparedStatement ps,ResultSet rs) throws SQLException{
    	if(rs!=null){
    		rs.close();
    	}
    	if(ps!=null){
    		ps.close();
    	}
    	if(con!=null){
    		con.close();
    	}
    }

}
