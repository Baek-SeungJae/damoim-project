package board.comment;

public class BoardCommentVO {
	private String b_comm_no;
	private String b_comm_content;
	private String b_comm_mno;
	private String b_comm_date;
	private int b_comm_like;	
	private String b_comm_bno;
	private int b_comm_depth;
	private String b_comm_parent;
	
	public BoardCommentVO() {}
	public BoardCommentVO(String b_comm_no, String b_comm_content, String b_comm_mno, String b_comm_date,
			int b_comm_like, String b_comm_bno, int b_comm_depth, String b_comm_parent) {
		super();
		this.b_comm_no = b_comm_no;
		this.b_comm_content = b_comm_content;
		this.b_comm_mno = b_comm_mno;
		this.b_comm_date = b_comm_date;
		this.b_comm_like = b_comm_like;
		this.b_comm_bno = b_comm_bno;
		this.b_comm_depth = b_comm_depth;
		this.b_comm_parent = b_comm_parent;
	}
	
	@Override
	public String toString() {
		return "BoardCommentVO [b_comm_no=" + b_comm_no + ", b_comm_content=" + b_comm_content + ", b_comm_mno="
				+ b_comm_mno + ", b_comm_date=" + b_comm_date + ", b_comm_like=" + b_comm_like + ", b_comm_bno="
				+ b_comm_bno + ", b_comm_depth=" + b_comm_depth + ", b_comm_parent=" + b_comm_parent + "]";
	}
	public String getB_comm_no() {
		return b_comm_no;
	}
	public void setB_comm_no(String b_comm_no) {
		this.b_comm_no = b_comm_no;
	}
	public String getB_comm_content() {
		return b_comm_content;
	}
	public void setB_comm_content(String b_comm_content) {
		this.b_comm_content = b_comm_content;
	}
	public String getB_comm_mno() {
		return b_comm_mno;
	}
	public void setB_comm_mno(String b_comm_mno) {
		this.b_comm_mno = b_comm_mno;
	}
	public String getB_comm_date() {
		return b_comm_date;
	}
	public void setB_comm_date(String b_comm_date) {
		this.b_comm_date = b_comm_date;
	}
	public int getB_comm_like() {
		return b_comm_like;
	}
	public void setB_comm_like(int b_comm_like) {
		this.b_comm_like = b_comm_like;
	}
	public String getB_comm_bno() {
		return b_comm_bno;
	}
	public void setB_comm_bno(String b_comm_bno) {
		this.b_comm_bno = b_comm_bno;
	}
	public int getB_comm_depth() {
		return b_comm_depth;
	}
	public void setB_comm_depth(int b_comm_depth) {
		this.b_comm_depth = b_comm_depth;
	}
	public String getB_comm_parent() {
		return b_comm_parent;
	}
	public void setB_comm_parent(String b_comm_parent) {
		this.b_comm_parent = b_comm_parent;
	}
	
	
}
