package com.brandontarrant.daikichichallenge.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DaikichiController {
	
	@GetMapping("/")
	public String index() {
		return "redirect:/omikuji";
	}
	
	@GetMapping("/omikuji")
	public String omikuji() {
		return "index.jsp";
	}
	
	@GetMapping("/omikuji/show")
	public String show(HttpSession Session, Model model) {
		
		String result = (String) Session.getAttribute("omikujiPost");
		model.addAttribute("result", result);
		
		return "showOmikuji.jsp";
	}
	
	@PostMapping("/processFormData")
	public String process(
			@RequestParam("number") int number,
			@RequestParam("city") String city,
			@RequestParam("person") String person,
			@RequestParam("hobby") String hobby,
			@RequestParam("thing") String thing,
			@RequestParam("message") String message,
			HttpSession session
			) {
		
		String omikujiPost = String.format(
				"In %s years, you will live in %s with %s as your roommate, %s. The next time you see a %s, you will have good luck. Also, %s",
				number, city, person, hobby, thing, message);
		
		session.setAttribute("omikujiPost", omikujiPost);
		
		return "redirect:omikuji/show";
	}
}















