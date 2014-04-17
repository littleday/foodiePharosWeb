package entity;

import java.io.Serializable;
import java.lang.String;
import java.util.Date;
import javax.persistence.*;

/**
 * Entity implementation class for Entity: GenericUser
 *
 */
@MappedSuperclass
public class GenericUser implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	private String username;
	private String password;
	private String email;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date registerDate;
	

	public GenericUser() {
		super();
	}   
	
	public GenericUser(String username, String password, String email,
			Date registerDate) {
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.registerDate = registerDate;
	}



	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}   
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}   
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}   
	public Date getRegisterDate() {
		return this.registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
   
}
