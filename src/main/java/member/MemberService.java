package member;

import java.util.ArrayList;

import org.springframework.web.multipart.MultipartFile;

public interface MemberService {
	ArrayList<MemberVO> getTreeEmpList(String deptno);
	int insert(MemberVO user,MultipartFile file,String realpath,String filename);
	public boolean passCheck(String pass);
	ArrayList<MemberVO> getMemberList();
	int delete(String id);
	MemberVO read(String id);
	ArrayList<MemberVO> search(String column, String search
					,String pass);
	int update(MemberVO user);
	MemberVO login(MemberVO loginUser);
}
