package entity;

import java.io.Serializable;

import javax.persistence.Embeddable;

@Embeddable
public class LocationPk implements Serializable{
	private static final long serialVersionUID = 1L;
	
	
	private String city;
	private String zipcode;
	
	public LocationPk() {
		super();
	}

	public LocationPk(String city, String zipcode) {
		super();
		this.city = city;
		this.zipcode = zipcode;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}   
	public String getZipcode() {
		return this.zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
}