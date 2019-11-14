package dbexample;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class AddressDAO {
	private SqlSession sqlSession;
	
    public void setUp() throws IOException {
        // 指定配置文件
        String resource = "mybatis-config.xml";
        // 读取配置文件
        InputStream inputStream = Resources.getResourceAsStream(resource);
        // 构建sqlSessionFactory
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        // 获取sqlSession
        sqlSession = sqlSessionFactory.openSession(true);
    }

	public Address loadAddress(int id) throws IOException{
		Address address = null;
		setUp();
		try {
			address = sqlSession.selectOne("MyMapper.loadAddress", id);
		} finally {
			sqlSession.close();
		}
		return address;
	}

	public List<Address> findAll() throws IOException {
		List<Address> addressList = new ArrayList<Address>();
		setUp();
		try {
			addressList = sqlSession.selectList("MyMapper.findAll");
		} finally {
			sqlSession.close();
		}
		return addressList;
	}

	public void addAddress(Address address) throws IOException {
		setUp();
		try {
			sqlSession.insert("MyMapper.addAddress", address);
		} finally {
			sqlSession.close();
		}
	}

	public void deleteAddress(int id) throws IOException {
		setUp();
		try {
			sqlSession.delete("MyMapper.deleteAddress", id);
		} finally {
			sqlSession.close();
		}
	}

	public void updateAddress(Address address) throws IOException {
		setUp();
		try {
			sqlSession.update("MyMapper.updateAddress", address);
		} finally {
			sqlSession.close();
		}
	}
}
