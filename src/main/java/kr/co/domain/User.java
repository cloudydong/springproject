package kr.co.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class User {
	private String u_id;
	private String upw;
	private String uname;
	private Integer upoint;
	
	private String email;
	private String googleid;
	private String naverid;
	private String nickname;
	
	private String loginip;
	private Date lastlogin;
	public User() {
		// TODO Auto-generated constructor stub
	}
	public User(String uid, String upw, String uname, Integer upoint, String email, String googleid, String naverid,
			String nickname, String loginip, Date lastlogin) {
		super();
		this.u_id = uid;
		this.upw = upw;
		this.uname = uname;
		this.upoint = upoint;
		this.email = email;
		this.googleid = googleid;
		this.naverid = naverid;
		this.nickname = nickname;
		this.loginip = loginip;
		this.lastlogin = lastlogin;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((googleid == null) ? 0 : googleid.hashCode());
		result = prime * result + ((lastlogin == null) ? 0 : lastlogin.hashCode());
		result = prime * result + ((loginip == null) ? 0 : loginip.hashCode());
		result = prime * result + ((naverid == null) ? 0 : naverid.hashCode());
		result = prime * result + ((nickname == null) ? 0 : nickname.hashCode());
		result = prime * result + ((u_id == null) ? 0 : u_id.hashCode());
		result = prime * result + ((uname == null) ? 0 : uname.hashCode());
		result = prime * result + ((upoint == null) ? 0 : upoint.hashCode());
		result = prime * result + ((upw == null) ? 0 : upw.hashCode());
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
		if (googleid == null) {
			if (other.googleid != null)
				return false;
		} else if (!googleid.equals(other.googleid))
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
		if (naverid == null) {
			if (other.naverid != null)
				return false;
		} else if (!naverid.equals(other.naverid))
			return false;
		if (nickname == null) {
			if (other.nickname != null)
				return false;
		} else if (!nickname.equals(other.nickname))
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
		if (upw == null) {
			if (other.upw != null)
				return false;
		} else if (!upw.equals(other.upw))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "User [uid=" + u_id + ", upw=" + upw + ", uname=" + uname + ", upoint=" + upoint + ", email=" + email
				+ ", googleid=" + googleid + ", naverid=" + naverid + ", nickname=" + nickname + ", loginip=" + loginip
				+ ", lastlogin=" + lastlogin + "]";
	}
	
}
