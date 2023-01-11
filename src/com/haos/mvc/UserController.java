package com.haos.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.haos.model.UserVo;
import com.sun.xml.internal.ws.util.StringUtils;

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
		String regex = "^\\w{1,63}@[a-zA-Z0-9]{2,63}\\.[a-zA-Z]{2,63}(\\.[a-zA-Z]{2,63})?$";
		String email = user.getEmail();
		String password = user.getPassword();
		return "helloworld";
	}
	
}
