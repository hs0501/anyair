package model;

public class Ticket {

	private int ticket_idx;
	private int book_idx;
	private String firstname;
	private String lastname;
	private int price;
	private String baggage;
	private String adult_kid;
	
	
	public int getTicket_idx() {
		return ticket_idx;
	}
	public void setTicket_idx(int ticket_idx) {
		this.ticket_idx = ticket_idx;
	}
	public int getBook_idx() {
		return book_idx;
	}
	public void setBook_idx(int book_idx) {
		this.book_idx = book_idx;
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
	public String getBaggage() {
		return baggage;
	}
	public void setBaggage(String baggage) {
		this.baggage = baggage;
	}
	public String getAdult_kid() {
		return adult_kid;
	}
	public void setAdult_kid(String adult_kid) {
		this.adult_kid = adult_kid;
	}
	
	
}
