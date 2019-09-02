package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mybatis.MybatisConnector;

@Service
public class BookMybatis {

	private final String namespace = "mybatis.book";

	@Autowired
	public MybatisConnector mybatisConnector;


	public List<String> seatList() {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {
			return sqlSession.selectList(namespace + ".getSeats");
		} finally {
			sqlSession.close();
		}
	}

}
