package mybatis;

import java.sql.Date;

public class ClubMemberDTO {

	private String cm_idx;
	private String c_idx;
	private String m_id;
	private String cm_check;
	private java.sql.Date cm_date;
	private String cm_memo;
	
	public ClubMemberDTO() {
		super();
	}

	public ClubMemberDTO(String cm_idx, String c_idx, String m_id, String cm_check, Date cm_date, String cm_memo) {
		super();
		this.cm_idx = cm_idx;
		this.c_idx = c_idx;
		this.m_id = m_id;
		this.cm_check = cm_check;
		this.cm_date = cm_date;
		this.cm_memo = cm_memo;
	}

	public String getCm_idx() {
		return cm_idx;
	}

	public void setCm_idx(String cm_idx) {
		this.cm_idx = cm_idx;
	}

	public String getC_idx() {
		return c_idx;
	}

	public void setC_idx(String c_idx) {
		this.c_idx = c_idx;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getCm_check() {
		return cm_check;
	}

	public void setCm_check(String cm_check) {
		this.cm_check = cm_check;
	}

	public java.sql.Date getCm_date() {
		return cm_date;
	}

	public void setCm_date(java.sql.Date cm_date) {
		this.cm_date = cm_date;
	}

	public String getCm_memo() {
		return cm_memo;
	}

	public void setCm_memo(String cm_memo) {
		this.cm_memo = cm_memo;
	}
	
	
}
