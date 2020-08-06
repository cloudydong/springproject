package kr.co.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("product")
public class ProductController {
	@RequestMapping(value = "/productList", method = RequestMethod.GET)
	public void ProductList(String searchValue, Model model) {
		model.addAttribute("searchValue", searchValue);
	}
	
	@RequestMapping(value = "/productInfo", method = RequestMethod.GET)
	public void ProductInfo(String ProductCode, String SalePrice,String ProductPrice, String ProductImage300, Model model) {
		model.addAttribute("ProductCode", ProductCode);
		model.addAttribute("SalePrice", SalePrice);
		model.addAttribute("ProductPrice", ProductPrice);
		model.addAttribute("ProductImage300", ProductImage300);
	}
}
