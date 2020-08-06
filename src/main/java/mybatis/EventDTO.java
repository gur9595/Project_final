package mybatis;

import java.sql.Date;

public class EventDTO {
	
	private int e_idx;
	private Date e_date;
	private String e_title;
	private String e_contents;
	
	//생성자
	public EventDTO() {};
	
	public EventDTO(int e_idx, Date e_date, String e_title, String e_contents) {
		super();
		this.e_idx = e_idx;
		this.e_date = e_date;
		this.e_title = e_title;
		this.e_contents = e_contents;
	}
	
	//getter / setter
	public int getE_idx() {
		return e_idx;
	}

	public void setE_idx(int e_idx) {
		this.e_idx = e_idx;
	}

	public Date getE_date() {
		return e_date;
	}

	public void setE_date(Date e_date) {
		this.e_date = e_date;
	}

	public String getE_title() {
		return e_title;
	}

	public void setE_title(String e_title) {
		this.e_title = e_title;
	}

	public String getE_contents() {
		return e_contents;
	}

	public void setE_contents(String e_contents) {
		this.e_contents = e_contents;
	}
	
	
	
	
	
	
}
