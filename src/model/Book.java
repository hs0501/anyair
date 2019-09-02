package model;

import java.util.Date;

public class Book {
	private int book_idx;
	private String book_id;
	private String seat_name;
	private String air_code;
	private String departure;
	private String arrival;
	private Date depart_date;
	private Date book_date;
	private String book_status;

	/////////////////////

	
	private String firstname;
	private String lastname;
	private String passport;
	private int price;
	private String carryon;
	private String baggage;
	private String adult_kid;
	private String meal;
	

	public int getBook_idx() {
		return book_idx;
	}

	public void setBook_idx(int book_idx) {
		this.book_idx = book_idx;
	}

	public String getBook_id() {
		return book_id;
	}

	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}

	public String getSeat_name() {
		return seat_name;
	}

	public void setSeat_name(String seat_name) {
		this.seat_name = seat_name;
	}

	public String getAir_code() {
		return air_code;
	}

	public void setAir_code(String air_code) {
		this.air_code = air_code;
	}

	public String getDeparture() {
		return departure;
	}

	public void setDeparture(String departure) {
		this.departure = departure;
	}

	public String getArrival() {
		return arrival;
	}

	public void setArrival(String arrival) {
		this.arrival = arrival;
	}

	public Date getDepart_date() {
		return depart_date;
	}

	public void setDepart_date(Date depart_date) {
		this.depart_date = depart_date;
	}

	public Date getBook_date() {
		return book_date;
	}

	public void setBook_date(Date book_date) {
		this.book_date = book_date;
	}

	public String getBook_status() {
		return book_status;
	}

	public void setBook_status(String book_status) {
		this.book_status = book_status;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getCarryon() {
		return carryon;
	}

	public void setCarryon(String carryon) {
		this.carryon = carryon;
	}

	public String getAdult_kid() {
		return adult_kid;
	}

	public void setAdult_kid(String adult_kid) {
		this.adult_kid = adult_kid;
	}

	public String getPassport() {
		return passport;
	}

	public void setPassport(String passport) {
		this.passport = passport;
	}

	public String getBaggage() {
		return baggage;
	}

	public void setBaggage(String baggage) {
		this.baggage = baggage;
	}

	public String getMeal() {
		return meal;
	}

	public void setMeal(String meal) {
		this.meal = meal;
	}

	
}
