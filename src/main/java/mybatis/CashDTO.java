package mybatis;

import java.sql.Date;

public class CashDTO {
	
	// 멤버변수
	private int cs_idx;
	private int c_idx;
	private String m_id;
	private int cs_money;
	private String cs_type;
	private java.sql.Date cs_date;
		// 추가 
	private int cash;
	private String m_name;
	


	// 기본생성자
	public CashDTO() {}
	
	// 인자생성자
	

	// getter / setter
	public int getCs_idx() {
		return cs_idx;
	}
	public String getM_name() {
		return m_name;
	}
	
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public CashDTO(int cs_idx, int c_idx, String m_id, int cs_money, String cs_type, Date cs_date, int cash, String m_name) {
		super();
		this.cs_idx = cs_idx;
		this.c_idx = c_idx;
		this.m_id = m_id;
		this.cs_money = cs_money;
		this.cs_type = cs_type;
		this.cs_date = cs_date;
		this.cash = cash;
		this.m_name = m_name;
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
	

	public int getCs_money() {
		return cs_money;
	}

	public void setCs_money(int cs_money) {
		this.cs_money = cs_money;
	}

	public String getCs_type() {
		return cs_type;
	}

	public void setCs_type(String cs_type) {
		this.cs_type = cs_type;
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
