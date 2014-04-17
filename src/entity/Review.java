package entity;

import java.io.Serializable;
import java.lang.String;
import java.util.Date;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: Review
 *
 */
@Entity

public class Review implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	private double rating;
	private String review;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date createDate;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date lastModifyDate;
	
	@ManyToOne
	User user;
	
	@ManyToOne
	Restaurant restaurant;
	
	@Override
	public String toString() {
		return "Review [id=" + id + ", rating=" + rating + ", review=" + review
				+ ", createDate=" + createDate + ", lastModifyDate="
				+ lastModifyDate + ", user=" + user + ", restaurant="
				+ restaurant + "]";
	}

	public Review() {
		super();
	}   
	
	public Review(double rating, String review, Date createDate,
			Date lastModifyDate) {
		super();
		this.rating = rating;
		this.review = review;
		this.createDate = createDate;
		this.lastModifyDate = lastModifyDate;
	}
	
	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public double getRating() {
		return this.rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}   
	public String getReview() {
		return this.review;
	}

	public void setReview(String review) {
		this.review = review;
	}   
	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}   
	public Date getLastModifyDate() {
		return this.lastModifyDate;
	}

	public void setLastModifyDate(Date lastModifyDate) {
		this.lastModifyDate = lastModifyDate;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Restaurant getRestaurant() {
		return restaurant;
	}

	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}
   
}
