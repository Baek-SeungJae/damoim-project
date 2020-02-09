package board.list;

public class ImageVO {
	private String img_no; //
	private String img_bno;//글번호
	private String img_gno;//모임번호
	public ImageVO() {}
	public ImageVO(String img_no, String img_bno, String img_gno) {
		super();
		this.img_no = img_no;
		this.img_bno = img_bno;
		this.img_gno = img_gno;
	}
	public String getImg_no() {
		return img_no;
	}
	public void setImg_no(String img_no) {
		this.img_no = img_no;
	}
	public String getImg_bno() {
		return img_bno;
	}
	public void setImg_bno(String img_bno) {
		this.img_bno = img_bno;
	}
	public String getImg_gno() {
		return img_gno;
	}
	public void setImg_gno(String img_gno) {
		this.img_gno = img_gno;
	}
}
