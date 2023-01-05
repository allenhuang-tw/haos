package com.haos.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haos.model.UserVo;

@Controller
@RequestMapping("/User")
public class UserController {
	
	@RequestMapping("/showForm")
	public String initUserManager(Model model){
		
		UserVo userVo = new UserVo();
		model.addAttribute("userVo", userVo);
		return "hello-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("userVo") UserVo user){
		return "helloworld";
	}
	
}
