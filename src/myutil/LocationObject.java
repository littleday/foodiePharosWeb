package myutil;

public class LocationObject{
	
	private String city;
	private String[] display_address;
	private String[] neighborhoods;
	private String postal_code;
	private String country_code;
	private String[] address;
	private String state_code;
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String[] getDisplay_address() {
		return display_address;
	}
	public void setDisplay_address(String[] display_address) {
		this.display_address = display_address;
	}
	public String[] getNeighborhoods() {
		return neighborhoods;
	}
	public void setNeighborhoods(String[] neighborhoods) {
		this.neighborhoods = neighborhoods;
	}
	public String getPostal_code() {
		return postal_code;
	}
	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}
	public String getCountry_code() {
		return country_code;
	}
	public void setCountry_code(String country_code) {
		this.country_code = country_code;
	}
	public String[] getAddress() {
		return address;
	}
	public void setAddress(String[] address) {
		this.address = address;
	}
	public String getState_code() {
		return state_code;
	}
	public void setState_code(String state_code) {
		this.state_code = state_code;
	}
}
