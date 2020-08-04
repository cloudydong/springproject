package kr.co.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class User {
	private String u_id;
	private String uname;
	private Integer upoint;
	
	private String email;
	
	private String loginip;
	private Date lastlogin;
	public User() {
		// TODO Auto-generated constructor stub
	}
	public User(String u_id, String uname, Integer upoint, String email, String loginip, Date lastlogin) {
		super();
		this.u_id = u_id;
		this.uname = uname;
		this.upoint = upoint;
		this.email = email;
		this.loginip = loginip;
		this.lastlogin = lastlogin;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((lastlogin == null) ? 0 : lastlogin.hashCode());
		result = prime * result + ((loginip == null) ? 0 : loginip.hashCode());
		result = prime * result + ((u_id == null) ? 0 : u_id.hashCode());
		result = prime * result + ((uname == null) ? 0 : uname.hashCode());
		result = prime * result + ((upoint == null) ? 0 : upoint.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (lastlogin == null) {
			if (other.lastlogin != null)
				return false;
		} else if (!lastlogin.equals(other.lastlogin))
			return false;
		if (loginip == null) {
			if (other.loginip != null)
				return false;
		} else if (!loginip.equals(other.loginip))
			return false;
		if (u_id == null) {
			if (other.u_id != null)
				return false;
		} else if (!u_id.equals(other.u_id))
			return false;
		if (uname == null) {
			if (other.uname != null)
				return false;
		} else if (!uname.equals(other.uname))
			return false;
		if (upoint == null) {
			if (other.upoint != null)
				return false;
		} else if (!upoint.equals(other.upoint))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", uname=" + uname + ", upoint=" + upoint + ", email=" + email + ", loginip="
				+ loginip + ", lastlogin=" + lastlogin + "]";
	}
		
}
