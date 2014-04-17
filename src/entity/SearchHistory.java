package entity;

import java.io.Serializable;
import java.lang.String;
import java.util.Arrays;
import java.util.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: SearchHistory
 *
 */
@Entity

public class SearchHistory implements Serializable {
	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date time;
	private String[] itemKeywords;
	private String locationKeyword;
	
	@ManyToOne
	@JoinColumn(nullable=false)
	private User user;
	
	

	@Override
	public String toString() {
		return "SearchHistory [id=" + id + ", time=" + time + ", itemKeywords="
				+ Arrays.toString(itemKeywords) + ", locationKeyword="
				+ locationKeyword + ", user=" + user + "]";
	}


	public SearchHistory() {
		super();
	}   
	
	
	public SearchHistory(Date time, String[] itemKeywords,
			String locationKeyword) {
		super();
		this.time = time;
		this.itemKeywords = itemKeywords;
		this.locationKeyword = locationKeyword;
	}



	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public Date getTime() {
		return this.time;
	}

	public void setTime(Date time) {
		this.time = time;
	}   
	public String[] getItemKeywords() {
		return this.itemKeywords;
	}

	public void setItemKeywords(String[] itemKeywords) {
		this.itemKeywords = itemKeywords;
	}   
	public String getLocationKeyword() {
		return this.locationKeyword;
	}

	public void setLocationKeyword(String locationKeyword) {
		this.locationKeyword = locationKeyword;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}
   
}
