package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.Arrival;
import model.Departure;
import model.SearchSchedule;
import service.BookDBBeanMybatis;

@Controller
@RequestMapping("/book/")
public class BookController {
	ModelAndView mv = new ModelAndView();
	
	@Autowired
	public BookDBBeanMybatis bookDBBeanMybatis;
	
	@RequestMapping("schedule")
	public ModelAndView goSchedule(SearchSchedule ss) throws Exception {
		mv.clear();
		String arrival_city = ss.getArrival_city();
		arrival_city = arrival_city.substring(0, arrival_city.indexOf('('));
		ss.setArrival_city(arrival_city);
		System.out.println(ss.getArrival_city());
		List<Departure> goList = bookDBBeanMybatis.getGoSchedule(ss);
		List<Arrival> backList = bookDBBeanMybatis.getBackSchedule(ss);
		mv.addObject("goList", goList);
		mv.addObject("backList", backList);
		mv.addObject("dep_city", ss.getDeparture_city());
		mv.addObject("go_date", ss.getGo_date());
		mv.addObject("back_date", ss.getBack_date());
		mv.setViewName("schedule");
		return mv;
	}
}
