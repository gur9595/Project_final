package mybatis;

public class StadiumDTO {
	
	private int s_idx;
	private String s_id;
	private String s_pw;
	private String s_name;
	private String s_phone;
	private String s_addr;
	private String s_gu;
	private String s_type;
	private String s_pic;
	private String s_size;
	private String s_cv;
	private int s_price;
	private String s_memo;
	private String s_starttime;
	private String s_endtime;
	private String s_lat;
	private String s_lng;
	
	//검색을 위한 변수
	private String searchTxt;
	
	//select구간을 위한 멤버변수
	private int start;
	private int end;
	
	//기본생성자
	public StadiumDTO() {}
	
	//인자생성자
	public StadiumDTO(int s_idx, String s_id, String s_pw, String s_name, String s_phone, String s_addr, String s_gu,
			String s_type, String s_pic, String s_size, String s_cv, int s_price, String s_memo, String s_starttime,
			String s_endtime, String searchTxt, String s_lat, String s_lng, int start, int end) {
		super();
		this.s_idx = s_idx;
		this.s_id = s_id;
		this.s_pw = s_pw;
		this.s_name = s_name;
		this.s_phone = s_phone;
		this.s_addr = s_addr;
		this.s_gu = s_gu;
		this.s_type = s_type;
		this.s_pic = s_pic;
		this.s_size = s_size;
		this.s_cv = s_cv;
		this.s_price = s_price;
		this.s_memo = s_memo;
		this.s_starttime = s_starttime;
		this.s_endtime = s_endtime;
		this.searchTxt = searchTxt;
		this.s_lat = s_lat;
		this.s_lng = s_lng;
		this.start = start;
		this.end = end;
	}

	//getter / setter
	public int getS_idx() {
		return s_idx;
	}

	public void setS_idx(int s_idx) {
		this.s_idx = s_idx;
	}

	public String getS_id() {
		return s_id;
	}

	public void setS_id(String s_id) {
		this.s_id = s_id;
	}

	public String getS_pw() {
		return s_pw;
	}

	public void setS_pw(String s_pw) {
		this.s_pw = s_pw;
	}

	public String getS_name() {
		return s_name;
	}

	public void setS_name(String s_name) {
		this.s_name = s_name;
	}

	public String getS_phone() {
		return s_phone;
	}

	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}

	public String getS_addr() {
		return s_addr;
	}

	public void setS_addr(String s_addr) {
		this.s_addr = s_addr;
	}

	public String getS_gu() {
		return s_gu;
	}

	public void setS_gu(String s_gu) {
		this.s_gu = s_gu;
	}

	public String getS_type() {
		return s_type;
	}

	public void setS_type(String s_type) {
		this.s_type = s_type;
	}

	public String getS_pic() {
		return s_pic;
	}

	public void setS_pic(String s_pic) {
		this.s_pic = s_pic;
	}

	public String getS_size() {
		return s_size;
	}

	public void setS_size(String s_size) {
		this.s_size = s_size;
	}

	public String getS_cv() {
		return s_cv;
	}

	public void setS_cv(String s_cv) {
		this.s_cv = s_cv;
	}

	public int getS_price() {
		return s_price;
	}

	public void setS_price(int s_price) {
		this.s_price = s_price;
	}

	public String getS_memo() {
		return s_memo;
	}

	public void setS_memo(String s_memo) {
		this.s_memo = s_memo;
	}

	public String getS_starttime() {
		return s_starttime;
	}

	public void setS_starttime(String s_starttime) {
		this.s_starttime = s_starttime;
	}

	public String getS_endtime() {
		return s_endtime;
	}

	public void setS_endtime(String s_endtime) {
		this.s_endtime = s_endtime;
	}

	public String getSearchTxt() {
		return searchTxt;
	}

	public void setSearchTxt(String searchTxt) {
		this.searchTxt = searchTxt;
	}

	public String getS_lat() {
		return s_lat;
	}

	public void setS_lat(String s_lat) {
		this.s_lat = s_lat;
	}

	public String getS_lng() {
		return s_lng;
	}

	public void setS_lng(String s_lng) {
		this.s_lng = s_lng;
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
	
	
}
