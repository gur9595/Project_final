package mybatis;

import java.util.Date;

public class ClubMemberDTO {

	private int cm_idx;
	private int c_idx;
	private String m_id;
	private String cm_check;
	private Date cm_date;
	private String cm_memo;
	private String cm_grade;
	
	
	public ClubMemberDTO() {
		super();
	}

	

	public ClubMemberDTO(int cm_idx, int c_idx, String m_id, String cm_check, Date cm_date, String cm_memo,
			String cm_grade) {
		super();
		this.cm_idx = cm_idx;
		this.c_idx = c_idx;
		this.m_id = m_id;
		this.cm_check = cm_check;
		this.cm_date = cm_date;
		this.cm_memo = cm_memo;
		this.cm_grade = cm_grade;
	}



	public String getCm_grade() {
		return cm_grade;
	}

	public void setCm_grade(String cm_grade) {
		this.cm_grade = cm_grade;
	}

	public int getCm_idx() {
		return cm_idx;
	}

	public void setCm_idx(int cm_idx) {
		this.cm_idx = cm_idx;
	}

	public int getC_idx() {
		return c_idx;
	}

	public void setC_idx(int c_idx) {
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

	public Date getCm_date() {
		return cm_date;
	}

	public void setCm_date(Date cm_date) {
		this.cm_date = cm_date;
	}

	public String getCm_memo() {
		return cm_memo;
	}

	public void setCm_memo(String cm_memo) {
		this.cm_memo = cm_memo;
	}
	
	
}
