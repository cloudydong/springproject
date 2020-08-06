package kr.co.domain.ServiceCenter.OneToOne;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
@Setter
@Getter
public class OneToOneVO implements Serializable{
	private static final long serialVersionUID = 1L;
	private int bno;
	private String title;
	private String content;
	private String writer;
	private String regDate;
	private String updateDate;
	public OneToOneVO() {
		// TODO Auto-generated constructor stub
	}
	public OneToOneVO(int bno, String title, String content, String writer, String regDate, String updateDate) {
		super();
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.regDate = regDate;
		this.updateDate = updateDate;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + bno;
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
		OneToOneVO other = (OneToOneVO) obj;
		if (bno != other.bno)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "OneToOneVO [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", regDate=" + regDate + ", updateDate=" + updateDate + "]";
	}
	
	

}
