package mybatis;

import java.io.File;
import java.sql.Date;

public class EventDTO {
	
	private int e_idx;
	private String e_type;
	private String e_title;
	private String e_contents;
	private File e_thumbnail;
	private File e_image;
	private String e_tag;
	private Date e_date;
	private int start; //페이지
	private int end; //페이지
	private Date e_start;
	private Date e_end;
	
	public EventDTO() {};
	
	public EventDTO(int e_idx, String e_type, String e_title, String e_contents, File e_thumbnail,
			File e_image, String e_tag, Date e_date, int start, int end, Date e_start, Date e_end) {
		super();
		this.e_idx = e_idx;
		this.e_type = e_type;
		this.e_title = e_title;
		this.e_contents = e_contents;
		this.e_thumbnail = e_thumbnail;
		this.e_image = e_image;
		this.e_tag = e_tag;
		this.e_date = e_date;
		this.start = start;
		this.end = end;
		this.e_start = e_start;
		this.e_end = e_end;
	}

	// getter/ setter
	public int getE_idx() {
		return e_idx;
	}

	public void setE_idx(int e_idx) {
		this.e_idx = e_idx;
	}

	public String getE_type() {
		return e_type;
	}

	public void setE_type(String e_type) {
		this.e_type = e_type;
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

	public File getE_thumbnail() {
		return e_thumbnail;
	}

	public void setE_thumbnail(File e_thumbnail) {
		this.e_thumbnail = e_thumbnail;
	}

	public File getE_image() {
		return e_image;
	}

	public void setE_image(File e_image) {
		this.e_image = e_image;
	}

	public String getE_tag() {
		return e_tag;
	}

	public void setE_tag(String e_tag) {
		this.e_tag = e_tag;
	}

	public Date getE_date() {
		return e_date;
	}

	public void setE_date(Date e_date) {
		this.e_date = e_date;
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

	public Date getE_start() {
		return e_start;
	}

	public void setE_start(Date e_start) {
		this.e_start = e_start;
	}

	public Date getE_end() {
		return e_end;
	}

	public void setE_end(Date e_end) {
		this.e_end = e_end;
	}
	
	
	
}
