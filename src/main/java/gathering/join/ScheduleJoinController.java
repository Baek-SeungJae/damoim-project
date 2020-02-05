package gathering.join;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ScheduleJoinController {
	@Autowired
	ScheduleJoinService service;

	/*// 모임생성을 작성하기 위한 뷰를 response할 메소드
	@RequestMapping(value = "/gathering/sch_main1.do", method = RequestMethod.GET)
	public String insertView() {
		return "gathering/sch_main"; // tiles에 등록한 뷰 이름
	}*/

	// 참석 클릭 후 DB에 회원정보를 저장하는 메소드
	@RequestMapping("/gathering/sch_main.do")
	public String insert(ScheduleJoinVO joinUser) {
		System.out.println("자~ 성현씨~ 여기서부터 다시 작업하세요~" + joinUser);
		//int result = service.register(joinUser);
		//System.out.println("result의 갯수: "+result);
		return "gathering/sch_main";
	}
	
	/*@RequestMapping(value="/gathering/join.do")
	public void join(String sche_mem_mno) {
		int result = service.findbyid(sche_mem_mno);
		return;
	}*/
	
	// 참석 클릭한 멤버를 DB와 비교 후 맞는지 가져오는 메소드
	/*public void findById(String sche_mem_mno) {
		int result = service.findbyid(sche_mem_mno);
		return ;
	}*/
}