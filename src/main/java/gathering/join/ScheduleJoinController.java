package gathering.join;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import gathering.info.GatheringInfoService;
import gathering.info.GatheringInfoVO;
import gathering.schedule.ScheduleRegisterVO;
import member.MemberService;
import member.MemberVO;

@Controller
public class ScheduleJoinController {
	@Autowired
	MemberService memberService;
	@Autowired
	GatheringInfoService gatheringService;
	@Autowired
	ScheduleJoinService joinService;
	

	/*// 모임생성을 작성하기 위한 뷰를 response할 메소드
	@RequestMapping(value = "/gathering/sch_main1.do", method = RequestMethod.GET)
	public String insertView() {
		return "gathering/sch_main"; // tiles에 등록한 뷰 이름
	}*/

	// 참석 클릭 후 DB에 회원정보를 저장하는 메소드
	@RequestMapping(value="/gathering/sch_join.do", method=RequestMethod.POST)
	public String insert(String gath_no, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		MemberVO vo =(MemberVO)session.getAttribute("user");		
		System.out.println(vo);
		GatheringInfoVO gathering = gatheringService.read(gath_no);
		int result = joinService.register(vo.getMem_id(), gathering.getGath_no());
		System.out.println("참석찍은 result 몇개?======"+result);
		
		
		return "redirect:sch_main.do?gath_no="+gath_no;
	}
	
	/*//랭킹을 표시해주는 메소드
	@RequestMapping("/gathering/sch_rank.do")
	public ModelAndView rank(String gath_no) {
		ModelAndView mav = new ModelAndView();
		GatheringInfoVO gathering = gatheringService.read(gath_no);
		List<MemberVO> list = joinService.ranklist(gathering.getGath_no());
		mav.addObject("list", list);
		mav.addObject("gathering", gathering);
		mav.addObject("listInfo", gath_no);
		mav.setViewName("gathering/sch_rank");
		return mav;
	}*/
}