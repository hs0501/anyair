package service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.Arrival;
import model.Departure;
import model.SearchSchedule;
import mybatis.MybatisConnector;

@Service
public class BookDBBeanMybatis {

	private final String namespace = "mybatis.book";

	@Autowired
	public MybatisConnector mybatisConnector;

	public List<Departure> getGoSchedule(SearchSchedule ss) throws Exception {
		String inputDate = ss.getGo_date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date date = formatter.parse(inputDate);
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		int dayNum = calendar.get(Calendar.DAY_OF_WEEK);
		switch (dayNum) {
		case 1:
			ss.setGo_day("일요일");
			break;
		case 2:
			ss.setGo_day("월요일");
			break;
		case 3:
			ss.setGo_day("화요일");
			break;
		case 4:
			ss.setGo_day("수요일");
			break;
		case 5:
			ss.setGo_day("목요일");
			break;
		case 6:
			ss.setGo_day("금요일");
			break;
		case 7:
			ss.setGo_day("토요일");
			break;
		}
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {

			return sqlSession.selectList(namespace + ".getGoSchedule", ss);
		} finally {
			sqlSession.close();
		}
	}

	public List<Arrival> getBackSchedule(SearchSchedule ss) throws Exception {
		String inputDate = ss.getBack_date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date date = formatter.parse(inputDate);
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		int dayNum = calendar.get(Calendar.DAY_OF_WEEK);
		switch (dayNum) {
		case 1:
			ss.setBack_day("일요일");
			break;
		case 2:
			ss.setBack_day("월요일");
			break;
		case 3:
			ss.setBack_day("화요일");
			break;
		case 4:
			ss.setBack_day("수요일");
			break;
		case 5:
			ss.setBack_day("목요일");
			break;
		case 6:
			ss.setBack_day("금요일");
			break;
		case 7:
			ss.setBack_day("토요일");
			break;
		}
		SqlSession sqlSession = mybatisConnector.sqlSession();
		try {

			return sqlSession.selectList(namespace + ".getBackSchedule", ss);
		} finally {
			sqlSession.close();
		}
	}
}
