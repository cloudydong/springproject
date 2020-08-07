package kr.co.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.domain.CartDTO;
import kr.co.domain.UsersDTO;
import kr.co.service.CartService;

@Controller
@RequestMapping(value = "cart")
public class CartController {
	@Autowired
	private CartService cartService;

	@RequestMapping(value = "/add/{productCode}", method = RequestMethod.GET)
	public String additem(HttpSession session, @PathVariable String productCode) {
		productCode = "1257255094";
		String url = new StringBuffer().append("https://openapi.11st.co.kr/openapi/OpenApiService.tmall")
				.append("?key=4a972a13f9e22b164bbe473d226d2dd3").append("&apiCode=ProductSearch").append("&keyword=")
				.append(productCode) // 필수
				.append("&pageSize=1")// 선택적 항목 검색
				.toString();
		try {
			Document doc = Jsoup.connect(url).get();
			String pName = doc.select("ProductName").text();
			String pPrice = doc.select("ProductPrice").text();
			String pImage = doc.select("ProductImage150").text();
			String sellerNick = doc.select("SellerNick").text();
			String seller = doc.select("Seller").text();
			String detailPageUrl = "/product/productInfo/ProductCode="+productCode;
			String salePrice = doc.select("SalePrice").text();
			String delivery = doc.select("Delivery").text();
			String buySatisfy = doc.select("BuySatisfy").text();
			String discount = doc.select("Discount").text();
			String mileage = doc.select("Mileage").text();
			String count = doc.select("TotalCount").text();
			CartDTO dto = new CartDTO(null, pName, pPrice, pImage, sellerNick, seller, detailPageUrl, salePrice,
					delivery, buySatisfy, discount, mileage, null, count);
			UsersDTO user = (UsersDTO) session.getAttribute("loginUser");
			if (user == null) {
				return "redirect:/users/login";
			}
			Integer u_no = user.getU_no();
			dto.setU_no(u_no);
			cartService.insert(dto);
		} catch (IOException e) {
			return "redirect:/cart/list";
		}
		return "redirect:/cart/list";
	
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Model model) {
		List<CartDTO> list = cartService.selectList();
		model.addAttribute("cartList", list);
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(HttpSession session, CartDTO dto) {
		// dto.count와 dto.c_no 만 사용+ user.u_no
		UsersDTO user = (UsersDTO) session.getAttribute("loginUser");
		if (dto == null)
			return "redirect:/users/login";
		Integer u_no = user.getU_no();
		dto.setU_no(u_no);
		cartService.update(dto);
		return "redirect:/cart/list";
	}

	@RequestMapping(value = "/delete/{c_no}", method = RequestMethod.GET)
	public String delete(HttpSession session, @PathVariable("c_no") int c_no) {
		UsersDTO dto = (UsersDTO) session.getAttribute("loginUser");
		if (dto == null)
			return "redirect:/users/login";
		Integer u_no = dto.getU_no();
		cartService.delete(c_no, u_no);
		return "redirect:/cart/list";
	}

}
