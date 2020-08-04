package mybatis;

import java.sql.Date;

public class BoardDTO {

	private int b_idx;
	private String b_title;
	private String b_content;
	private String b_id;
	private Date b_postdate;
	
	public Date getB_postdate() {
		return b_postdate;
	}
	public void setB_postdate(Date b_postdate) {
		this.b_postdate = b_postdate;
	}
	private String b_bname;
	
	public int getB_idx() {
		return b_idx;
	}
	public void setB_idx(int b_idx) {
		this.b_idx = b_idx;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_id() {
		return b_id;
	}
	public void setB_id(String b_id) {
		this.b_id = b_id;
	}
	public String getB_bname() {
		return b_bname;
	}
	public void setB_bname(String b_bname) {
		this.b_bname = b_bname;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	
	
}