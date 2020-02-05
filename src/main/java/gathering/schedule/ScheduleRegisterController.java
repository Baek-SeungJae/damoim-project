package gathering.schedule;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ScheduleRegisterController {
	@Autowired
	ScheduleRegisterService service;
	
	// 모임생성을 작성하기 위한 뷰를 response할 메소드
	@RequestMapping(value="/gathering/sch_create.do", method=RequestMethod.GET)
	public String createView() {
		return "gathering/sch_create"; // tiles에 등록한 뷰 이름 
	}   
	
	// 입력한 글을 실제 DB에 저장하는 메소드
	@RequestMapping(value ="/gathering/sch_create.do", method = RequestMethod.POST)
	public void create(ScheduleRegisterVO user) {
		System.out.println("Register된 user의 수: " + user);
		int result = service.register(user);
		System.out.println("result의 갯수: "+result);
		return;
	}
	
	
	
	/*@RequestMapping("/gathering/sch_main.do")
	public ModelAndView boardList(String sche_no) {
		System.out.println("모임일정 번호=>"+sche_no);
		ModelAndView mav = new ModelAndView();
		
		//2. 비지니스메소드 호출
		List<ScheduleRegisterVO> list = service.moimList(sche_no);
		System.out.println(list);
		//3. 데이터 공유 - jsp페이지에서 응답뷰 만들 때 사용
		// => 기본값 : request에 저장
		mav.addObject("moimlist", list);
		mav.addObject("category",sche_no);
		//4. 뷰의 이름을 등록
		mav.setViewName("gathering/sch_main"); // tiles에 등록하는 이름과 일치
		
		//5. 기본이 forward
		return mav;
	}*/
	
	
	@RequestMapping(value="/gathering/sch_main.do", method=RequestMethod.POST)
	public ModelAndView boardList(ScheduleRegisterVO moimInfo, 
			HttpServletRequest request) {
		System.out.println("모임생성을 위해서 사용자가 입력한 값==================="+moimInfo);
		ModelAndView mav = new ModelAndView();
		//moim => DB연동 후 생성된 사용자의 정보
		//moimInfo => 로그인 하기 위해서 사용자가 입력한 데이터를 VO로 만든 객체
		ScheduleRegisterVO moim = service.moimList(moimInfo);
		String viewName = "";
		if(moim!=null) {
			//모임생성 성공시
			HttpSession ses= request.getSession();
			//2. 세션에 데이터 공유
			ses.setAttribute("moim", moim);
			viewName = "sch_main";
		}else {
			//로그인 실패
			viewName = "sch_main";
		}
		mav.setViewName(viewName);
		System.out.println(moim.toString());
		return mav;
	}	
}
