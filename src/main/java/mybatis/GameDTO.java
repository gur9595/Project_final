package mybatis;

import java.sql.Date;

public class GameDTO {
	
	//멤버변수
	private int g_idx;
	private int s_idx;
	private int c_idx;
	private String g_sname;
	private String g_saddr;
	private String g_type;
	private String g_score;
	private String g_result;
	private java.sql.Date g_date;
	private int g_num;
	private int g_rating;
	private String g_memo;
	private String g_time;
	private String g_gu;
	
	private String search_date;

	//기본생성자
	public GameDTO() {}

	//인자생성자
	public GameDTO(int g_idx, int s_idx, int c_idx, String g_sname, String g_saddr, String g_type, String g_score,
			String g_result, Date g_date, int g_num, int g_rating, String g_memo, String g_time, String g_gu, String search_date) {
		super();
		this.g_idx = g_idx;
		this.s_idx = s_idx;
		this.c_idx = c_idx;
		this.g_sname = g_sname;
		this.g_saddr = g_saddr;
		this.g_type = g_type;
		this.g_score = g_score;
		this.g_result = g_result;
		this.g_date = g_date;
		this.g_num = g_num;
		this.g_rating = g_rating;
		this.g_memo = g_memo;
		this.g_time = g_time;
		this.g_gu = g_gu;
		this.search_date = search_date;
	}
	
	// getter/setter	
	public int getG_idx() {
		return g_idx;
	}

	public void setG_idx(int g_idx) {
		this.g_idx = g_idx;
	}

	public int getS_idx() {
		return s_idx;
	}

	public void setS_idx(int s_idx) {
		this.s_idx = s_idx;
	}

	public int getC_idx() {
		return c_idx;
	}

	public void setC_idx(int c_idx) {
		this.c_idx = c_idx;
	}

	public String getG_sname() {
		return g_sname;
	}

	public void setG_sname(String g_sname) {
		this.g_sname = g_sname;
	}

	public String getG_saddr() {
		return g_saddr;
	}

	public void setG_saddr(String g_saddr) {
		this.g_saddr = g_saddr;
	}

	public String getG_type() {
		return g_type;
	}

	public void setG_type(String g_type) {
		this.g_type = g_type;
	}

	public String getG_score() {
		return g_score;
	}

	public void setG_score(String g_score) {
		this.g_score = g_score;
	}

	public String getG_result() {
		return g_result;
	}

	public void setG_result(String g_result) {
		this.g_result = g_result;
	}

	public java.sql.Date getG_date() {
		return g_date;
	}

	public void setG_date(java.sql.Date g_date) {
		this.g_date = g_date;
	}

	public int getG_num() {
		return g_num;
	}

	public void setG_num(int g_num) {
		this.g_num = g_num;
	}

	public int getG_rating() {
		return g_rating;
	}

	public void setG_rating(int g_rating) {
		this.g_rating = g_rating;
	}

	public String getG_memo() {
		return g_memo;
	}

	public void setG_memo(String g_memo) {
		this.g_memo = g_memo;
	}

	public String getG_time() {
		return g_time;
	}

	public void setG_time(String g_time) {
		this.g_time = g_time;
	}

	public String getG_gu() {
		return g_gu;
	}

	public void setG_gu(String g_gu) {
		this.g_gu = g_gu;
	}

	public String getSearch_date() {
		return search_date;
	}

	public void setSearch_date(String search_date) {
		this.search_date = search_date;
	}
	
	

}
