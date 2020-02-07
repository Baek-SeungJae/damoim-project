package gathering.schedule;

import java.util.Date;

public class ScheduleRegisterVO {
	String sche_no;		//모임 일정 번호
	String sche_gno;	//모임 분류 번호
	String sche_name;	//모임 별칭
	Date sche_date;		//일정 날짜
	String sche_loc;	//모임 장소
	String sche_fee;	//회비
	String sche_limit;	//정원
	String sche_chat;	//카카오톡 오픈채팅 링크
	String sche_master;	//모임장
	String sche_context;//모임소개글
	
	public ScheduleRegisterVO() {
		
	}

	public ScheduleRegisterVO(String sche_no, String sche_gno, String sche_name, Date sche_date, String sche_loc,
			String sche_fee, String sche_limit, String sche_chat, String sche_master, String sche_context) {
		super();
		this.sche_no = sche_no;
		this.sche_gno = sche_gno;
		this.sche_name = sche_name;
		this.sche_date = sche_date;
		this.sche_loc = sche_loc;
		this.sche_fee = sche_fee;
		this.sche_limit = sche_limit;
		this.sche_chat = sche_chat;
		this.sche_master = sche_master;
		this.sche_context = sche_context;
	}

	@Override
	public String toString() {
		return "ScheduleRegisterVO [sche_no=" + sche_no + ", sche_gno=" + sche_gno + ", sche_name=" + sche_name
				+ ", sche_date=" + sche_date + ", sche_loc=" + sche_loc + ", sche_fee=" + sche_fee + ", sche_limit="
				+ sche_limit + ", sche_chat=" + sche_chat + ", sche_master=" + sche_master + ", sche_context="
				+ sche_context + "]";
	}

	public String getSche_no() {
		return sche_no;
	}

	public void setSche_no(String sche_no) {
		this.sche_no = sche_no;
	}

	public String getSche_gno() {
		return sche_gno;
	}

	public void setSche_gno(String sche_gno) {
		this.sche_gno = sche_gno;
	}

	public String getSche_name() {
		return sche_name;
	}

	public void setSche_name(String sche_name) {
		this.sche_name = sche_name;
	}

	public Date getSche_date() {
		return sche_date;
	}

	public void setSche_date(Date sche_date) {
		this.sche_date = sche_date;
	}

	public String getSche_loc() {
		return sche_loc;
	}

	public void setSche_loc(String sche_loc) {
		this.sche_loc = sche_loc;
	}

	public String getSche_fee() {
		return sche_fee;
	}

	public void setSche_fee(String sche_fee) {
		this.sche_fee = sche_fee;
	}

	public String getSche_limit() {
		return sche_limit;
	}

	public void setSche_limit(String sche_limit) {
		this.sche_limit = sche_limit;
	}

	public String getSche_chat() {
		return sche_chat;
	}

	public void setSche_chat(String sche_chat) {
		this.sche_chat = sche_chat;
	}

	public String getSche_master() {
		return sche_master;
	}

	public void setSche_master(String sche_master) {
		this.sche_master = sche_master;
	}

	public String getSche_context() {
		return sche_context;
	}

	public void setSche_context(String sche_context) {
		this.sche_context = sche_context;
	}
	
	
}
