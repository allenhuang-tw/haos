package com.haos.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haos.model.UserVo;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String initHomePage(Model model){
		UserVo userVo = new UserVo();
		model.addAttribute("userVo", userVo);
		return "homePage";
	}
}
