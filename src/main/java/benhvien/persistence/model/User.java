package benhvien.persistence.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

//tu tao database o duoi
@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO) //tao userid tu dong
	private Long userid;
	
	private String email;

	private String password;

	private boolean enabled;

	//private boolean tokenExpired;

	@OneToOne(mappedBy = "user", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private Role role;
	
	@OneToOne(mappedBy = "user", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private Bacsi bacsi;
	
	@OneToOne(mappedBy = "user", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private Benhnhan benhnhan;
	
	public User() {
		super();
		this.enabled = false;
		//this.tokenExpired = false;
	}

	public Bacsi getBacsi() {
		return bacsi;
	}



	public void setBacsi(Bacsi bacsi) {
		this.bacsi = bacsi;
	}



	public Benhnhan getBenhnhan() {
		return benhnhan;
	}



	public void setBenhnhan(Benhnhan benhnhan) {
		this.benhnhan = benhnhan;
	}



	public Long getUserid() {
		return userid;
	}


	public void setUserid(Long userid) {
		this.userid = userid;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public boolean isEnabled() {
		return enabled;
	}


	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}


	public Role getRole() {
		return role;
	}


	public void setRole(Role role) {
		this.role = role;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		return result;
	}

	@Override
	public boolean equals(final Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		final User user = (User) obj;
		if (!email.equals(user.email))
			return false;
		return true;
	}

	@Override
	public String toString() {
		final StringBuilder builder = new StringBuilder();
		builder.append("User [firstName=").append("]").append("[lastName=")
				.append("]").append("[username").append(email).append("]");
		return builder.toString();
	}

}