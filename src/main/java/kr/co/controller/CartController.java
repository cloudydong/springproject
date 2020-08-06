package kr.co.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.domain.CartDTO;
import kr.co.domain.UsersDTO;
import kr.co.service.CartService;

@Controller
@RequestMapping(value = "cart")
public class CartController {
	@Autowired
	private CartService cartService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void list(Model model) {
		List<CartDTO> list = cartService.selectList();
		model.addAttribute("cartList", list);
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insert(HttpSession session, CartDTO dto) {
		UsersDTO user = (UsersDTO) session.getAttribute("loginUser");
		if (dto == null)
			return "redirect:/users/login";
		Integer u_no = user.getU_no();
		dto.setU_no(u_no);
		cartService.insert(dto);
		return "redirect:/cart/list";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insert() {
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(HttpSession session, CartDTO dto) {
		UsersDTO user = (UsersDTO) session.getAttribute("loginUser");
		if (dto == null)
			return "redirect:/users/login";
		Integer u_no = user.getU_no();
		dto.setU_no(u_no);
		cartService.update(dto);
		return "redirect:/cart/list";
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public void update() {
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
