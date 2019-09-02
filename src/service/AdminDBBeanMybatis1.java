package service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mybatis.MybatisConnector;

@Service
public class AdminDBBeanMybatis1 {

	private final String namespace = "mybatis.admin1";

	@Autowired
	public MybatisConnector mybatisConnector;

	public List getmemberList() throws Exception {
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {					
			return sqlSession.selectList(namespace + ".getmemberList");
	} finally {
		sqlSession.close();
	
	}	
			
	}
	public int deletemember(String id) throws Exception {
		   SqlSession sqlSession = mybatisConnector.sqlSession();
		   try {
			   int result = sqlSession.delete(namespace + ".deletemember");
			         
			   if (id.equals("admin")) {
			   result = sqlSession.delete(namespace + ".deletemember");
			         }
			   
			   return result;
			   
			      } finally {
			         sqlSession.commit();
			         sqlSession.close();
			      }
		   
			}	
}
