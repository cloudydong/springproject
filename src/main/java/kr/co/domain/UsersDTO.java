package kr.co.domain;

import lombok.Getter;
import lombok.Setter;
@Setter
@Getter
public class UsersDTO {
	private String u_id;
	private String name;

	public UsersDTO() {
	}

	public UsersDTO(String u_id, String name) {
		this.u_id = u_id;
		this.name = name;
	}

}
