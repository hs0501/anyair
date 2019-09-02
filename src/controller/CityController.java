package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.City;
import service.CityDBBeanMybatis;

@Controller
public class CityController {
	
	@Autowired
	CityDBBeanMybatis cityDBBeanMybatis;
	
	ModelAndView mv = new ModelAndView();
	
	@RequestMapping("/index")
	public ModelAndView cities() throws Exception {
		List<City> cityList = cityDBBeanMybatis.getCities();
		mv.addObject("cityList", cityList);
		mv.setViewName("index");
 		return mv;
	}
}
