package home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/main/home")
	public String homeView() {
		return "main/home";
	}
	
	@RequestMapping("/guide")
	public String guideView() {
		return "guide";
	}
	
	@RequestMapping("/login")
	public String loginView() {
		return "login";
	}
	
	@RequestMapping("/mypage")
	public String mypageView() {
		return "mypage";
	}
	
	@RequestMapping("/reg")
	public String regView() {
		return "reg";
	}
	
}

