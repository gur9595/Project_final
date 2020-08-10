package mybatis;

public class AdminDTO {
	
	//멤버변수  
	private int a_idx;
	private String a_id;
	private String a_pw;
	private int g_num;
	
	//기본생성자
	public AdminDTO() {}

	//인자생성자
	public AdminDTO(int a_idx, String a_id, String a_pw, int g_num) {
		super();
		this.a_idx = a_idx;
		this.a_id = a_id;
		this.a_pw = a_pw;
		this.g_num = g_num;
	}

	// getter / setter
	public int getA_idx() {
		return a_idx;
	}

	public void setA_idx(int a_idx) {
		this.a_idx = a_idx;
	}

	public String getA_id() {
		return a_id;
	}

	public void setA_id(String a_id) {
		this.a_id = a_id;
	}

	public String getA_pw() {
		return a_pw;
	}

	public void setA_pw(String a_pw) {
		this.a_pw = a_pw;
	}

	public int getG_num() {
		return g_num;
	}

	public void setG_num(int g_num) {
		this.g_num = g_num;
	}
	
	

}
