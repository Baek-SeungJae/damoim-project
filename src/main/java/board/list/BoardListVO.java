package board.list;

import java.sql.Date;
public class BoardListVO {
	String board_no;		//게시글번호
	String board_title;		//제목
	String board_content;	//내용
	String board_gno;		//어떤모임의 게시글인지
	String board_mno;		//작성자회원번호
	Date board_date;		//작성일
	int board_hit;			//조회수
	int board_like;			//좋아요개수
	String board_bno;		//게시판이름
	
	public BoardListVO(){
	}
	public BoardListVO(String board_no, String board_title, String board_content, String board_gno, String board_mno,
			Date board_date, int board_hit, int board_like, String board_bno) {
		super();
		this.board_no = board_no;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_gno = board_gno;
		this.board_mno = board_mno;
		this.board_date = board_date;
		this.board_hit = board_hit;
		this.board_like = board_like;
		this.board_bno = board_bno;
	}
	@Override
	public String toString() {
		return "BoardVO [board_no=" + board_no + ", board_title=" + board_title + ", board_content=" + board_content
				+ ", board_gno=" + board_gno + ", board_mno=" + board_mno + ", board_date=" + board_date
				+ ", board_hit=" + board_hit + ", board_like=" + board_like + ", board_bno=" + board_bno + "]";
	}
	public String getBoard_no() {
		return board_no;
	}

	public void setBoard_no(String board_no) {
		this.board_no = board_no;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_gno() {
		return board_gno;
	}

	public void setBoard_gno(String board_gno) {
		this.board_gno = board_gno;
	}

	public String getBoard_mno() {
		return board_mno;
	}

	public void setBoard_mno(String board_mno) {
		this.board_mno = board_mno;
	}

	public Date getBoard_date() {
		return board_date;
	}

	public void setBoard_date(Date board_date) {
		this.board_date = board_date;
	}

	public int getBoard_hit() {
		return board_hit;
	}

	public void setBoard_hit(int board_hit) {
		this.board_hit = board_hit;
	}

	public int getBoard_like() {
		return board_like;
	}

	public void setBoard_like(int board_like) {
		this.board_like = board_like;
	}

	public String getBoard_bno() {
		return board_bno;
	}

	public void setBoard_bno(String board_bno) {
		this.board_bno = board_bno;
	}
	
	
}
