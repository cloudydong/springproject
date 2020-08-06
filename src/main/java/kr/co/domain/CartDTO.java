package kr.co.domain;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class CartDTO {
	private String c_no;
	private String pName;
	private String pPrice;
	private String pImage;
	private String sellerNick;
	private String seller;
	private String detailPageUrl;
	private String salePrice;
	private String delivery;
	private String buySatisfy;
	private String discount;
	private String mileage;
	private Integer u_no;
	private String count;
	
	public CartDTO() {
	}

	public CartDTO(String c_no, String pName, String pPrice, String pImage, String sellerNick, String seller,
			String detailPageUrl, String salePrice, String delivery, String buySatisfy, String discount, String mileage,
			Integer u_no, String count) {
		super();
		this.c_no = c_no;
		this.pName = pName;
		this.pPrice = pPrice;
		this.pImage = pImage;
		this.sellerNick = sellerNick;
		this.seller = seller;
		this.detailPageUrl = detailPageUrl;
		this.salePrice = salePrice;
		this.delivery = delivery;
		this.buySatisfy = buySatisfy;
		this.discount = discount;
		this.mileage = mileage;
		this.u_no = u_no;
		this.count = count;
	}

}
