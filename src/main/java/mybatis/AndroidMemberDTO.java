package mybatis;

import java.sql.Date;

public class AndroidMemberDTO {
	
	private int m_idx;
	private String m_id;
	private String m_pw;
	private String m_name;
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
	private String goal;
	private String assist;
	private String point;
	private String appearance;
	private String c_idx;
	private String rnum;
	private int cash;
	
	public AndroidMemberDTO() {
		super();
	}
	public AndroidMemberDTO(int m_idx, String m_id, String m_pw, String m_name, String m_birth, String m_email,
			String m_phone, String m_addr, Date m_date, String m_position, String m_sex, String m_abil, String m_foot,
			String m_pic, String m_rfa, String m_work, String m_career, String m_area, String m_duration,
			String cm_memo, String cm_idx, String cm_grade, String goal, String assist, String point, String appearance,
			String c_idx, String rnum, int cash) {
		super();
		this.m_idx = m_idx;
		this.m_id = m_id;
		this.m_pw = m_pw;
		this.m_name = m_name;
		this.m_birth = m_birth;
		this.m_email = m_email;
		this.m_phone = m_phone;
		this.m_addr = m_addr;
		this.m_date = m_date;
		this.m_position = m_position;
		this.m_sex = m_sex;
		this.m_abil = m_abil;
		this.m_foot = m_foot;
		this.m_pic = m_pic;
		this.m_rfa = m_rfa;
		this.m_work = m_work;
		this.m_career = m_career;
		this.m_area = m_area;
		this.m_duration = m_duration;
		this.cm_memo = cm_memo;
		this.cm_idx = cm_idx;
		this.cm_grade = cm_grade;
		this.goal = goal;
		this.assist = assist;
		this.point = point;
		this.appearance = appearance;
		this.c_idx = c_idx;
		this.rnum = rnum;
		this.cash = cash;
	}

	public String getRnum() {
		return rnum;
	}
	public void setRnum(String rnum) {
		this.rnum = rnum;
	}
	public String getC_idx() {
		return c_idx;
	}
	public void setC_idx(String c_idx) {
		this.c_idx = c_idx;
	}
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
	public String getGoal() {
		return goal;
	}
	public void setGoal(String goal) {
		this.goal = goal;
	}
	public String getAssist() {
		return assist;
	}
	public void setAssist(String assist) {
		this.assist = assist;
	}
	public String getPoint() {
		return point;
	}
	public void setPoint(String point) {
		this.point = point;
	}
	public String getAppearance() {
		return appearance;
	}
	public void setAppearance(String appearance) {
		this.appearance = appearance;
	}
	
	
	
}
