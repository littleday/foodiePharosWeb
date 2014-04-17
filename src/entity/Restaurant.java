package entity;

import java.io.Serializable;
import java.lang.String;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;


/**
 * Entity implementation class for Entity: Restaurant
 *
 */
@Entity

public class Restaurant implements Serializable {
	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	private String[] category;
	private double rating;
	private int ratingNumber;
	private String businessId;
	
	@ManyToOne
	private Location location;
	
	@ManyToMany(mappedBy="restaurants")
	private List<RecommendList> recommendList = new ArrayList<RecommendList>();
	
	@OneToMany(mappedBy="restaurant")
	private List<CheckIn> checkInList = new ArrayList<CheckIn>();
	
	@ManyToMany(mappedBy="favoriteRestaurants")
	private List<User> favoredByUsers = new ArrayList<User>();
	
	@OneToMany(mappedBy="restaurant")
	private List<Review> reviewList = new ArrayList<Review>();
	
	@OneToMany(mappedBy="restaurant")
	private List<ViewHistory> viewHistoryList = new ArrayList<ViewHistory>();

	public Restaurant() {
		super();
	}   
	
	public Restaurant(String[] category, double rating, int ratingNumber, String businessId) {
		super();
		this.category = category;
		this.rating = rating;
		this.ratingNumber = ratingNumber;
		this.businessId = businessId;
	}


	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}


	public String[] getCategory() {
		return this.category;
	}

	public void setCategory(String[] category) {
		this.category = category;
	}   
	public double getRating() {
		return this.rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}   
	public int getRatingNumber() {
		return ratingNumber;
	}

	public void setRatingNumber(int ratingNumber) {
		this.ratingNumber = ratingNumber;
	}

	public String getBusinessId() {
		return this.businessId;
	}

	public void setBusinessId(String businessId) {
		this.businessId = businessId;
	}

	public Location getLocation() {
		return location;
	}

	public void setLocation(Location location) {
		this.location = location;
	}
	
	/* Recommend List */
	public List<RecommendList> getRecommendList() {
		return recommendList;
	}

	public void setRecommendList(List<RecommendList> recommendList) {
		this.recommendList = recommendList;
	}
	
	public RecommendList addRecommendList(RecommendList list){
		getRecommendList().add(list);
		return list;
	}
   
	public RecommendList removeRecommendList(RecommendList list){
		getRecommendList().remove(list);
		return list;
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

	/* FavoredByUsers */
	public List<User> getFavoredByUsers() {
		return favoredByUsers;
	}

	public void setFavoredByUsers(List<User> favoredByUsers) {
		this.favoredByUsers = favoredByUsers;
	}
	
	public User addFavoredByUser(User user){
		getFavoredByUsers().add(user);
		return user;
	}
	
	public User removeFavoredByUser(User user){
		getFavoredByUsers().remove(user);
		return user;
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
}
