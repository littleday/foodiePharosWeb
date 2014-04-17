package entity;

import java.io.Serializable;
import java.lang.String;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Location
 *
 */

@Entity

public class Location implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@EmbeddedId
	private LocationPk locationPk;
	
	private String statecode;
	private String countrycode;
	
	@OneToMany(mappedBy="location")
	private List<Restaurant> restaurants = new ArrayList<Restaurant>();

	public Location() {
		super();
	}   
	
	public Location(String city, String zipcode, String statecode, String countrycode){
		this.locationPk = new LocationPk(city, zipcode);
		this.statecode = statecode;
		this.countrycode = countrycode;
	}
	   
	public LocationPk getLocationPk() {
		return locationPk;
	}

	public void setLocationPk(LocationPk locationPk) {
		this.locationPk = locationPk;
	}
	
	public String getStatecode() {
		return this.statecode;
	}

	public void setStatecode(String statecode) {
		this.statecode = statecode;
	}   
	public String getCountrycode() {
		return this.countrycode;
	}

	public void setCountrycode(String countrycode) {
		this.countrycode = countrycode;
	}

	public List<Restaurant> getRestaurants() {
		return restaurants;
	}

	public void setRestaurants(List<Restaurant> restaurants) {
		this.restaurants = restaurants;
	}
	
	public Restaurant addRestaurant(Restaurant rest){
		getRestaurants().add(rest);
		return rest;
	}
	
	public Restaurant removeRestaurant(Restaurant rest){
		getRestaurants().remove(rest);
		return rest;
	}
   
}


