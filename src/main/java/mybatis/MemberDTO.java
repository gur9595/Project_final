package mybatis;

import java.sql.Date;

public class MemberDTO {
	
	private int m_idx;
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_token;
	private String m_birth;
	private String m_email;
	private String m_phone;
	private String m_addr;
	private Date m_date;
	private String m_position;
	private String m_sex;
	private String m_abil;
	private String m_foot;
	private String m_pic;
	private String m_rfa;
	private String m_work;
	private String m_career;
	private String m_area;
	private String m_duration;
	private String cm_memo;
	private String cm_idx;
	
	//join용 변수
	private String cm_grade;
	private int goal;
	private int assist;
	private int point;
	private int appearance;
	private int cash;
	
	
	// CashDTO 변수 추가 ////////////////////////
	private int cs_idx;
	private int cs_money;
	private String cs_type;
	private String cs_date;
	
	public int getCs_idx() {
		return cs_idx;
	}
	public void setCs_idx(int cs_idx) {
		this.cs_idx = cs_idx;
	}
	public int getCs_money() {
		return cs_money;
	}
	public void setCs_money(int cs_money) {
		this.cs_money = cs_money;
	}
	public String getCs_date() {
		return cs_date;
	}
	public void setCs_date(String cs_date) {
		this.cs_date = cs_date;
	}
	
	public String getCs_type() {
		return cs_type;
	}
	public void setCs_type(String cs_type) {
		this.cs_type = cs_type;
	}
	//////////////////////////////////////////////
	
	
	public int getCash() {
		return cash;
	}
	public void setCash(int cash) {
		this.cash = cash;
	}
	public String getCm_grade() {
		return cm_grade;
	}
	public void setCm_grade(String cm_grade) {
		this.cm_grade = cm_grade;
	}
	public String getM_token() {
		return m_token;
	}
	public void setM_token(String m_token) {
		this.m_token = m_token;
	}
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_birth() {
		return m_birth;
	}
	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
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
	public Date getM_date() {
		return m_date;
	}
	public void setM_date(Date m_date) {
		this.m_date = m_date;
	}
	public String getM_position() {
		return m_position;
	}
	public void setM_position(String m_position) {
		this.m_position = m_position;
	}
	public String getM_sex() {
		return m_sex;
	}
	public void setM_sex(String m_sex) {
		this.m_sex = m_sex;
	}
	public String getM_abil() {
		return m_abil;
	}
	public void setM_abil(String m_abil) {
		this.m_abil = m_abil;
	}
	public String getM_foot() {
		return m_foot;
	}
	public void setM_foot(String m_foot) {
		this.m_foot = m_foot;
	}
	public String getM_pic() {
		return m_pic;
	}
	public void setM_pic(String m_pic) {
		this.m_pic = m_pic;
	}
	public String getM_rfa() {
		return m_rfa;
	}
	public void setM_rfa(String m_rfa) {
		this.m_rfa = m_rfa;
	}
	public String getM_work() {
		return m_work;
	}
	public void setM_work(String m_work) {
		this.m_work = m_work;
	}
	public String getM_career() {
		return m_career;
	}
	public void setM_career(String m_career) {
		this.m_career = m_career;
	}
	public String getM_area() {
		return m_area;
	}
	public void setM_area(String m_area) {
		this.m_area = m_area;
	}
	public String getM_duration() {
		return m_duration;
	}
	public void setM_duration(String m_duration) {
		this.m_duration = m_duration;
	}
	public String getCm_memo() {
		return cm_memo;
	}
	public void setCm_memo(String cm_memo) {
		this.cm_memo = cm_memo;
	}
	public String getCm_idx() {
		return cm_idx;
	}
	public void setCm_idx(String cm_idx) {
		this.cm_idx = cm_idx;
	}
	public int getGoal() {
		return goal;
	}
	public void setGoal(int goal) {
		this.goal = goal;
	}
	public int getAssist() {
		return assist;
	}
	public void setAssist(int assist) {
		this.assist = assist;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getAppearance() {
		return appearance;
	}
	public void setAppearance(int appearance) {
		this.appearance = appearance;
	}
	
	
	
}
