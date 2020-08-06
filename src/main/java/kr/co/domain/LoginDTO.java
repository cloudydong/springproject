package kr.co.domain;


import lombok.Data;


@Data

public class LoginDTO{
private String id;
private String pw;

public LoginDTO() {
	// TODO Auto-generated constructor stub
}
public LoginDTO(String id, String pw) {
	super();
	this.id = id;
	this.pw = pw;
}


}
