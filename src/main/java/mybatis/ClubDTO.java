package mybatis;

import java.sql.Date;

public class ClubDTO {
	
	private int c_idx;
	private String c_name;
	private String c_cash;
	private String c_emb;
	private String c_area;
	private String c_type;
	private Date c_date;
	private String c_memo;
	private String c_color;
	private String c_ability;
	private String c_gender;
	private int c_memlimit;
	private String c_age;
	private int start;
	private int end;
	
	// head 정보 저장용
	private String m_id;
	private String m_name;
	private String m_email;
	private String m_phone;
	private String m_addr;
	private String m_date;
	private String m_sex;
	
	public String getC_age() {
		return c_age;
	}
	public void setC_age(String c_age) {
		this.c_age = c_age;
	}
	public int getC_idx() {
      return c_idx;
   }
   public void setC_idx(int c_idx) {
      this.c_idx = c_idx;
   }
   public String getC_name() {
      return c_name;
   }
   public void setC_name(String c_name) {
      this.c_name = c_name;
   }
   public String getC_cash() {
      return c_cash;
   }
   public void setC_cash(String c_cash) {
      this.c_cash = c_cash;
   }
   public String getC_emb() {
      return c_emb;
   }
   public void setC_emb(String c_emb) {
      this.c_emb = c_emb;
   }
   public String getC_area() {
      return c_area;
   }
   public void setC_area(String c_area) {
      this.c_area = c_area;
   }
   public String getC_type() {
      return c_type;
   }
   public void setC_type(String c_type) {
      this.c_type = c_type;
   }
   public Date getC_date() {
      return c_date;
   }
   public void setC_date(Date c_date) {
      this.c_date = c_date;
   }
   public String getC_memo() {
      return c_memo;
   }
   public void setC_memo(String c_memo) {
      this.c_memo = c_memo;
   }
   public String getC_color() {
      return c_color;
   }
   public void setC_color(String c_color) {
      this.c_color = c_color;
   }
   public String getC_ability() {
      return c_ability;
   }
   public void setC_ability(String c_ability) {
      this.c_ability = c_ability;
   }
   public String getC_gender() {
      return c_gender;
   }
   public void setC_gender(String c_gender) {
      this.c_gender = c_gender;
   }
   public int getC_memlimit() {
      return c_memlimit;
   }
   public void setC_memlimit(int c_memlimit) {
      this.c_memlimit = c_memlimit;
   }
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getM_addr() {
		return m_addr;
	}
	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}
	public String getM_date() {
		return m_date;
	}
	public void setM_date(String m_date) {
		this.m_date = m_date;
	}
	public String getM_sex() {
		return m_sex;
	}
	public void setM_sex(String m_sex) {
		this.m_sex = m_sex;
	}
   
   
   
}