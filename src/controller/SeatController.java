package controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Book;
import service.BookMybatis;

@Controller
public class SeatController {

	ModelAndView mav = new ModelAndView();

	@Autowired
	public BookMybatis bookMybatis;

	@RequestMapping("/select")
	public ModelAndView selectSchedule() throws Exception {
		mav.clear();

		mav.setViewName("book/selectSchedule");
		return mav;
	}

	@RequestMapping("/seat")
	public ModelAndView seatView() throws Exception {
		mav.clear();
		List seatList = bookMybatis.seatList();
		mav.addObject("seatList", seatList);
		mav.setViewName("book/seat");
		return mav;
	}

	@RequestMapping("/check")
	public ModelAndView seatCheck(String[] seatname, String[] firstname, String[] lastname, String[] passport,
			String[] baggage, String[] carry_ons, String[] meal, String[] aud_kid) throws Exception {
		mav.clear();
		List<Book> bookList = new ArrayList<Book>();
		for (int i = 0; i < seatname.length; i++) {
			Book book = new Book();
			book.setSeat_name(seatname[i]);
			book.setFirstname(firstname[i]);
			book.setLastname(lastname[i]);
			book.setPassport(passport[i]);
			book.setBaggage(baggage[i]);
			book.setCarryon(carry_ons[i]);
			book.setMeal(meal[i]);
			book.setAdult_kid(aud_kid[i]);
			bookList.add(book);
		}

		mav.addObject(bookList);
		mav.setViewName("book/seatCheck");
		return mav;
	}

	@RequestMapping("/lastCheck")
	public ModelAndView lastCheck() throws Exception {
		mav.clear();
		mav.setViewName("book/lastCheck");
		return mav;
	}
}
