package mybatis;

public class AndroidGameMemberDTO {
	
	private int gm_idx;
	private String g_idx;
	private String m_id;
	private String m_name;
	private int gm_form;
	
	public AndroidGameMemberDTO() {
		super();
	}
	
	public AndroidGameMemberDTO(int gm_idx, String g_idx, String m_id, String m_name, int gm_form) {
		super();
		this.gm_idx = gm_idx;
		this.g_idx = g_idx;
		this.m_id = m_id;
		this.m_name = m_name;
		this.gm_form = gm_form;
	}

	public int getGm_idx() {
		return gm_idx;
	}
	public void setGm_idx(int gm_idx) {
		this.gm_idx = gm_idx;
	}
	public String getG_idx() {
		return g_idx;
	}
	public void setG_idx(String g_idx) {
		this.g_idx = g_idx;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getGm_form() {
		return gm_form;
	}
	public void setGm_form(int gm_form) {
		this.gm_form = gm_form;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	
	

}
