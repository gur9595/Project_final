package mybatis;

public class ExtraDTO {
	
	//멤버변수
	private int X_IDX;
	private String M_ID;
	private int G_IDX;
	private String X_CHECK;
	
	//기본생성자
	public ExtraDTO() {}

	//인자생성자
	public ExtraDTO(int x_IDX, String m_ID, int g_IDX, String x_CHECK) {
		super();
		X_IDX = x_IDX;
		M_ID = m_ID;
		G_IDX = g_IDX;
		X_CHECK = x_CHECK;
	}

	// getter / setter
	public int getX_IDX() {
		return X_IDX;
	}

	public void setX_IDX(int x_IDX) {
		X_IDX = x_IDX;
	}

	public String getM_ID() {
		return M_ID;
	}

	public void setM_ID(String m_ID) {
		M_ID = m_ID;
	}

	public int getG_IDX() {
		return G_IDX;
	}

	public void setG_IDX(int g_IDX) {
		G_IDX = g_IDX;
	}

	public String getX_CHECK() {
		return X_CHECK;
	}

	public void setX_CHECK(String x_CHECK) {
		X_CHECK = x_CHECK;
	}

	

}
