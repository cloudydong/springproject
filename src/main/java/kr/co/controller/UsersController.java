package kr.co.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.constant.SnsUrlGroup;
import kr.co.domain.UsersDTO;
import kr.co.service.UsersService;

@Controller
@RequestMapping("users")
public class UsersController {

	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);

	@Autowired
	private UsersService usersService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void login(Model model) throws Exception {
		for (SnsUrlGroup snsName : SnsUrlGroup.values())
			model.addAttribute(snsName.toString().toLowerCase() + "_url",
					SnsUrlGroup.valueOf(snsName.toString()).getAuthorizationUrl());
	}

	@RequestMapping(value = "/auth/{snsName}/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String snsLoginCallback(@PathVariable String snsName, Model model, @RequestParam String code,
			HttpSession session) throws Exception {
		// OAuth2
		String userId = usersService.createUserId(snsName, code);
		UsersDTO dto = usersService.readUser(userId);

		if (dto == null) {
			usersService.createUser(userId);
			return "users/join";
		} else if (dto.getName() == null) {
			return "users/join";
		} else {
			model.addAttribute("result", dto.getName() + "님 반갑습니다.");
			// 4. 존재시 강제로그인
			session.setAttribute("loginUser", dto);
		}
		return "users/loginResult";
	}

	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public void join() {
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(String name, Model model) {
		usersService.insertName(name);
		model.addAttribute("result", "다시한번 로그인 해주세요");
		return "redirect:/users/loginResult";
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		return "/login";
	}

}
