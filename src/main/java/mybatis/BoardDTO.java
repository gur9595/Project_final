package mybatis;

import java.sql.Date;

public class BoardDTO {

	private int b_idx;
	private String b_title;
	private String b_content;
	private String m_id;
	private Date b_postdate;
	private int virtualNum;
	
	public int getVirtualNum() {
		return virtualNum;
	}
	public void setVirtualNum(int virtualNum) {
		this.virtualNum = virtualNum;
	}
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
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	
	
	
}