package mybatis;

import java.sql.Date;

public class CashDTO {
	
	// 멤버변수
	private int cs_idx;
	private int c_idx;
	private String m_id;
	private int cs_charge;
	private int cs_spend;
	private java.sql.Date cs_date;
		// 추가
	private int cash;
	

	// 기본생성자
	public CashDTO() {}
	
	// 인자생성자
	public CashDTO(int cs_idx, int c_idx, String m_id, int cs_charge, int cs_spend,
			Date cs_date, int cash) {
		super();
		this.cs_idx = cs_idx;
		this.c_idx = c_idx;
		this.m_id = m_id;	
		this.cs_charge = cs_charge;
		this.cs_spend = cs_spend;
		this.cs_date = cs_date;
		
			// 추가
		this.cash = cash;
		
	}

	// getter / setter
	public int getCs_idx() {
		return cs_idx;
	}

	public void setCs_idx(int cs_idx) {
		this.cs_idx = cs_idx;
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

	public int getCs_charge() {
		return cs_charge;
	}

	public void setCs_charge(int cs_charge) {
		this.cs_charge = cs_charge;
	}

	public int getCs_spend() {
		return cs_spend;
	}

	public void setCs_spend(int cs_spend) {
		this.cs_spend = cs_spend;
	}

	public java.sql.Date getCs_date() {
		return cs_date;
	}

	public void setCs_date(java.sql.Date cs_date) {
		this.cs_date = cs_date;
	}
	
		// 추가
	public int getCash() {
		return cash;
	}

	public void setCash(int cash) {
		this.cash = cash;
	}

}
