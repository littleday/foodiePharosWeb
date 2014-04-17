package entity;

import entity.GenericUser;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * Entity implementation class for Entity: Administrator
 *
 */
@Entity

public class Administrator extends GenericUser implements Serializable {
	private static final long serialVersionUID = 1L;

	public Administrator() {
		super();
	}
	
	public Administrator(String username, String password, String email,
			Date registerDate){
		super(username, password, email, registerDate);
	}

	@Override
	public String toString() {
		return "Administrator [getUsername()=" + getUsername()
				+ ", getPassword()=" + getPassword() + ", getEmail()="
				+ getEmail() + ", getRegisterDate()=" + getRegisterDate() + "]";
	}
   
}
