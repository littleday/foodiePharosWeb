package entity;

import java.io.Serializable;
import java.lang.String;

import javax.persistence.*;

import java.util.*;

/**
 * Entity implementation class for Entity: RecommendList
 *
 */
@Entity

public class RecommendList implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	private String title;
	private String description;
	private boolean favored;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date date;
	
	//owning side
	@ManyToMany
	private List<Restaurant> restaurants = new ArrayList<Restaurant>();
	
	@ManyToOne
	private User user;
	

	public RecommendList() {
		super();
	}   
	
	public RecommendList(String title, String description, boolean favored, Date date) {
		super();
		this.title = title;
		this.description = description;
		this.favored = favored;
		this.date = date;
	}
	
	@Override
	public String toString() {
		return "RecommendList [id=" + id + ", title=" + title
				+ ", description=" + description + ", favored=" + favored
				+ ", date=" + date + ", user=" + user + "]";
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}   
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}   
	public boolean getFavored() {
		return this.favored;
	}

	public void setFavored(boolean favored) {
		this.favored = favored;
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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
   
}
