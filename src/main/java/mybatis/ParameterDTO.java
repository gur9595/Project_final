package mybatis;

public class ParameterDTO {
	
	private String c_idx;
	private String searchTxt; //검색어
	//select구간을 위한 멤버변수

	
	public String getC_idx() {
		return c_idx;
	}
	public void setC_idx(String c_idx) {
		this.c_idx = c_idx;
	}
	public String getSearchTxt() {
		return searchTxt;
	}
	public void setSearchTxt(String searchTxt) {
		this.searchTxt = searchTxt;
	}
	
	
}
