package member;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	// 로그인 페이지를 보기 위한 요청
	@RequestMapping(value="/member/login.do", method=RequestMethod.GET)
	public String loginView() {
		return "login";
	}
	
	// 로그인 처리를 위한 요청 (submit)
	// - 매개변수가 VO객체 :
	// 스프링MVC 내부의 DispatcherServlet에서 자동으로 입력된 파라미터들을 추출해서
	// VO객체를 만들고 setter메소드의 값으로 전달한다.
	@RequestMapping(value="/member/login.do", method=RequestMethod.POST)
	public ModelAndView login(MemberVO loginUserInfo, HttpServletRequest request) {
		// 1. request
		System.out.println("로그인 하기 위해서 사용자가 입력한 값: "+loginUserInfo);
		ModelAndView mav = new ModelAndView();
		
		/*	user => db연동 후 로그인 된 사용자의 정보
			loginUserInfo => 로그인 하기 위해서 사용자가 입력한 데이터를 vo로 만든 객체	*/
		
		// 2. response
		MemberVO user = service.login(loginUserInfo);
		System.out.println("로그인 성공 후 조회된 레코드로 만들어진 값: "+user);
		// 로그인한 사용자의 정보를 세션에 저장
		// 세션을 사용하기 위해서 매개변수에 HttpServletRequest를 정의
		// 1. 세션을 생성
		//	=> getSession()을 이용해서 세션을 생성
		//	=> 무조건 생성해서 리턴(처음 세션을 만들 때 사용)
		String viewName ="";
		if(user != null) {
			// 로그인 성공시
			HttpSession ses = request.getSession();
			// 2. 세션에 데이터 공유
			ses.setAttribute("user", user);
			// redirect로 해야함
			viewName = "redirect:/main/home";
		}else {
			//로그인 실패
			viewName = "login";
		}
		//mav.addObject("user", user); //기본이 request에 저장
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping("/member/logout.do")
	public String logout(HttpSession session) {
		// 로그아웃 처리를 위해서 매개변수로 session을 받도록 처리
		// 사용하던 세션 객체가 있으면 사용하던 세션객체가 전달된다.
		if(session != null) {
			//null이 아니라 세션이 존재하면 세션객체를 해제
			session.invalidate();
		}
		return "redirect:/main/home";
	}
	
	@RequestMapping("/member/reg.do")
	public String reg1View() {
		// main-tiles.xml의 definition에 정의된 뷰 이름
		return "reg";
	}
	
	@RequestMapping("/member/reg2.do")
	public String reg2View() {
		// main-tiles.xml의 definition에 정의된 뷰 이름
		return "reg2";
	}
	
	
	
	/*System.out.println("category=> "+category);
	ModelAndView mav = new ModelAndView();
	// 서블릿 작업 = 스프링 내부에서 작업하기 때문에 포멧만 바뀐것
	// 1. 요청정보 추출
	// 2. 비지니스메소드 호출
	List<BoardVO> list = service.boardList(category);
	System.out.println(list);
	
	// 3. 데이터 공유 - jsp페이지에서 응답뷰 만들 때 사용
	//		=>기본값: request에 저장
	//		(기본이 request scope에 저장- request.setAttribute와 같음)
	mav.addObject("boardlist", list);
	mav.addObject("category", category);
	// 4. 뷰의 이름을 등록
	mav.setViewName("board/list"); //tiles에 등록하는 이름과 일치해야 함
	
	// 5. 요청재지정(기본작업이 forward로 리턴)
	return mav;*/
	
	
	@RequestMapping(value="/member/passCheck.do", method=RequestMethod.POST)
	public String passCheck(HttpServletRequest request) {
		// 이미 있으면 넣어주고, 없으면 null 리턴
		String pass = request.getParameter("pass");
		HttpSession session = request.getSession(false);
		String result = "";
		// null 체크
		if(session != null) {
			MemberVO user = (MemberVO)session.getAttribute("user");
			if(user.getMem_pass().equals(pass)) { 
				//입력한 비밀번호가 session의 비밀번호와 같다면 마이페이지 이동
				result = "mypage2";
			}else {
				// 비밀번호 안 맞으면 다시 이동
				result = "redirect:member/mypage";
			}
		}else { 
			result = "redirect:/main/home";
		}
		return result;
	}
	
	
	@RequestMapping("member/mypage")
	public String mypage() {
		return "mypage";
	}
	
	@RequestMapping("/member/guide")
	public String guideView() {
		return "guide";
	}
	
	
	/*@Autowired
	//MemberService service;
	
	@RequestMapping("/login")
	public String loginView() {
		return "login";
	}
	
	
	@RequestMapping("/reg")
	public String regView() {
		return "reg";
	}
	*/
}
