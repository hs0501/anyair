package service;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.City;
import mybatis.MybatisConnector;

@Service
public class CityDBBeanMybatis {

	private final String namespace = "mybatis.city";
	
	@Autowired
	public MybatisConnector mybatisConnector;
	
	public List<City> getCities() throws Exception {
		SqlSession sqlSession=mybatisConnector.sqlSession();
		try {
			return sqlSession.selectList(namespace + ".getCities");
		} finally {
			sqlSession.close();
		}
	}
}
