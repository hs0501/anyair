package service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.BoardDataBean;
import model.MemberDataBean;
import mybatis.MybatisConnector;



@Service
public class MemberDBBeanMybatis  {
private final String namespace = "mybatis.member";
	
	@Autowired
	public MybatisConnector mybatisConnector;

	public int insertMember(MemberDataBean member) throws Exception {
		SqlSession sqlSession=mybatisConnector.sqlSession();
		int check=idCheck(member.getId());
		try {
			int number = sqlSession.insert(namespace + ".insertMember",member); 
			if (number > 0) {
                sqlSession.commit();
            } else {
                sqlSession.rollback();
            }
        } finally {
            sqlSession.close();
            return check;
        }
    }
	
	public MemberDataBean getMember(String id) throws Exception {
		SqlSession sqlSession=mybatisConnector.sqlSession();
		HashMap map = new HashMap();
		map.put("id", id);
		MemberDataBean member =new MemberDataBean();
		try {
		
			member = (MemberDataBean) sqlSession.selectOne(namespace + ".getMember", map);
			System.out.println("=================member"+member);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.commit();
			sqlSession.close();
			return member;
			
		}
		
	}
	
	public List getMembers()throws Exception{
		SqlSession sqlSession=mybatisConnector.sqlSession();
		HashMap map = new HashMap();
		try {
			return sqlSession.selectList(namespace + ".getMembers",map) ;
		} finally {
			sqlSession.close();
		}
	}
	
	
	
	public void updateMember(MemberDataBean member) {
		 SqlSession sqlSession = mybatisConnector.sqlSession();
	       try {
	           String statement = namespace + ".updateMember";
	           int result = sqlSession.update(statement, member);
	           if( result > 0) {
	               sqlSession.commit();
	           } else {
	               sqlSession.rollback();
	           }
	           
	       } finally {
	           sqlSession.close();
	       }

	}
	public int idCheck(String id) {
		SqlSession sqlSession=mybatisConnector.sqlSession();
		int check = 1;
		try {
			String sql = sqlSession.selectOne(namespace + ".idCheck", id);
			if(sql!=null) {
				check=0;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
			
		}
		return check;
	}
	public int userCheck(String id, String passwd) {
		SqlSession sqlSession=mybatisConnector.sqlSession();

		int check = -1;
		// -1 : 아이디 자체가 없는 경우, 1 : 아이디, 패스워드 일치, 0 : 아이디는 있으나, 패스워드 불일치
		
		try {
			String sql = sqlSession.selectOne(namespace + ".userCheck", id);
			if(sql!=null) {
				String dbpasswd = (String) sqlSession.selectOne(namespace + ".userCheck", id);
				if(dbpasswd.equals(passwd)) {
					check = 1;
				} else {
					check = 0;
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		System.out.println(check);
		return check;
	}
	
	public int deleteMember(String id, String passwd) {
		SqlSession sqlSession=mybatisConnector.sqlSession();
	        try {
	        	
	        	HashMap map = new HashMap();
	    		map.put("id", id);
	    		map.put("passwd", passwd);
	            String statement = namespace + ".deleteMember";
	            int result = sqlSession.insert(statement, map);
	            sqlSession.insert("mybatis.board.deleteid",map);
	            if (result > 0) {
	                sqlSession.commit();
	            } else {
	                sqlSession.rollback();
	            }
	            return result;
	        } finally {
	        	
	            sqlSession.close();
	        }

	}
	
}


