package model;

public class City {
	private String cityKor;
	private String cityCode;
	public String getCityKor() {
		return cityKor;
	}
	public void setCityKor(String cityKor) {
		this.cityKor = cityKor;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	@Override
	public String toString() {
		return "City [cityKor=" + cityKor + ", cityCode=" + cityCode + "]";
	}
	
}
