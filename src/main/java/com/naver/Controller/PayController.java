package com.naver.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PayController {

	@RequestMapping(value = "kakaopay", method = RequestMethod.GET)
	public void kakaopay() {
		
		
	}
	@RequestMapping(value = "payco",method = RequestMethod.GET)
	public void Payco() {
		
	}
	@RequestMapping(value = "naverpay",method = RequestMethod.GET)
	public void Naverpay() {
		
	}
	@RequestMapping(value = "payresult",method = RequestMethod.GET)
	public void payresult() {
		
	}
}
