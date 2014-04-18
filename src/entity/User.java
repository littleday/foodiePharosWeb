package entity;

import entity.GenericUser;

import java.io.Serializable;
import java.lang.String;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: User
 *
 */
@Entity
public class User extends GenericUser implements Serializable {
	


	@Override
	public String toString() {
		return "User [photo=" + photo + ", firstName=" + firstName
				+ ", lastName=" + lastName + ", gender=" + gender
				+ ", getUsername()=" + getUsername() + ", getPassword()="
				+ getPassword() + ", getEmail()=" + getEmail()
				+ ", getRegisterDate()=" + getRegisterDate() + "]";
	}

	private static final long serialVersionUID = 1L;
	
	private String photo;
	private String firstName;
	private String lastName;
	private String gender;
	private String[] keywords;
	
	@OneToMany(mappedBy="user")
	private List<RecommendList> recommendLists = new ArrayList<RecommendList>();
	
	@OneToMany(mappedBy="user")
	private List<SearchHistory> searchHistoryList = new ArrayList<SearchHistory>();
	
	@OneToMany(mappedBy="user")
	private List<CheckIn> checkInList = new ArrayList<CheckIn>();
	
	@ManyToMany
	@JoinTable(name="User_Like_Restaurant",
				joinColumns=@JoinColumn(name="username"),
				inverseJoinColumns=@JoinColumn(name="restaurant_id"))
	private List<Restaurant> favoriteRestaurants = new ArrayList<Restaurant>();
	
	@OneToMany(mappedBy="user")
	private List<Review> reviewList = new ArrayList<Review>();

	
	@OneToMany(mappedBy="user")
	private List<ViewHistory> viewHistoryList = new ArrayList<ViewHistory>();
	
	public User() {
		super();
	}   
	
	public User(String username, String password, String email,Date registerDate,
			String photo, String firstName, String lastName, String gender) {
		super(username, password, email, registerDate);
		this.photo = photo;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
	}



	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}   
	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}   
	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}   
	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public List<RecommendList> getRecommendLists() {
		return recommendLists;
	}

	public void setRecommendLists(List<RecommendList> recommendLists) {
		this.recommendLists = recommendLists;
	}

	/* search history */
	public List<SearchHistory> getSearchHistoryList() {
		return searchHistoryList;
	}

	public void setSearchHistoryList(List<SearchHistory> searchHistoryList) {
		this.searchHistoryList = searchHistoryList;
	}
	
	public SearchHistory addSearchHistory(SearchHistory searchHistory){
		getSearchHistoryList().add(searchHistory);
		return searchHistory;
	}
	
	public SearchHistory removeSearchHistory(SearchHistory searchHistory){
		getSearchHistoryList().remove(searchHistory);
		return searchHistory;
	}

	/* checkIn */
	public List<CheckIn> getCheckInList() {
		return checkInList;
	}

	public void setCheckInList(List<CheckIn> checkInList) {
		this.checkInList = checkInList;
	}
	
	public CheckIn addCheckIn(CheckIn checkIn){
		getCheckInList().add(checkIn);
		return checkIn;
	}
   
	public CheckIn removeCheckIn(CheckIn checkIn){
		getCheckInList().remove(checkIn);
		return checkIn;
	}
	
	/* favoriteRestaurants */
	public List<Restaurant> getFavoriteRestaurants() {
		return favoriteRestaurants;
	}

	public void setFavoriteRestaurants(List<Restaurant> favoriteRestaurants) {
		this.favoriteRestaurants = favoriteRestaurants;
	}
	
	public Restaurant addFavoriteRestaurant(Restaurant rest){
		getFavoriteRestaurants().add(rest);
		return rest;
	}
	
	public Restaurant removeFavoriteRestaurant(Restaurant rest){
		getFavoriteRestaurants().remove(rest);
		return rest;
	}

	
	/* ReviewList  */
	public List<Review> getReviewList() {
		return reviewList;
	}

	public void setReviewList(List<Review> reviewList) {
		this.reviewList = reviewList;
	}
	
	public Review addReview(Review rev){
		getReviewList().add(rev);
		return rev;
	}
	
	public Review removeReview(Review rev){
		getReviewList().remove(rev);
		return rev;
	}
	
	/* ViewHistory */
	public List<ViewHistory> getViewHistoryList() {
		return viewHistoryList;
	}

	public void setViewHistoryList(List<ViewHistory> viewHistoryList) {
		this.viewHistoryList = viewHistoryList;
	}
	
	public ViewHistory addViewHistory(ViewHistory viewHistory){
		getViewHistoryList().add(viewHistory);
		return viewHistory;
	}
	
	public ViewHistory removeViewHistory(ViewHistory viewHistory){
		getViewHistoryList().remove(viewHistory);
		return viewHistory;
	}

	public String[] getKeywords() {
		return keywords;
	}

	public void setKeywords(String[] keywords) {
		this.keywords = keywords;
	}
}

