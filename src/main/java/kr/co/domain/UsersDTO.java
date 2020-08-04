package kr.co.domain;

import lombok.Getter;
import lombok.Setter;

public class UsersDTO {
	@Setter
	@Getter
	private String u_id;
	@Setter
	@Getter
	private String name;

	public UsersDTO() {
	}

	public UsersDTO(String u_id, String name) {
		this.u_id = u_id;
		this.name = name;
	}

}
