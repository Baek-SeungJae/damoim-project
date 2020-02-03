package gathering;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GatheringController {	
	
	@RequestMapping("/gathering/home.do")
	public String gatheringHome() {
		return "gathering/home";
	}
	@RequestMapping("/gathering/article.do")
	public String gatheringArticle() {
		return "gathering/article";
	}
	@RequestMapping("/gathering/newarticle.do")
	public String gatheringNewArticle() {
		return "gathering/newarticle";
	}
}
