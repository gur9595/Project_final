package mybatis;

public class ParameterDTO {
	
	private String c_idx;
	private String b_idx;//게시판 일련번호
	private String searchField;//검색 할 필드명
	private String searchTxt; //검색어
	private int start;
	private int end;
	//select구간을 위한 멤버변수

	
	public String getB_idx() {
		return b_idx;
	}
	public void setB_idx(String board_idx) {
		this.b_idx = board_idx;
	}
	public String getSearchField() {
		return searchField;
	}
	public void setSearchField(String searchField) {
		this.searchField = searchField;
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
