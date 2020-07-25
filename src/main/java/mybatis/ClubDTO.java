package mybatis;

import java.awt.TextArea;
import java.sql.Date;

public class ClubDTO {

		private int c_idx;
		private String c_name;
		private int c_cash;
		private String c_emb;
		private String c_area;
		private Date c_date;
		private TextArea c_memo;
		private String c_color;
		private String c_ability;
		private String c_gender;
		private int c_memlimit;
		
		public ClubDTO() {
			super();
		}

		public ClubDTO(int c_idx, String c_name, int c_cash, String c_emb, String c_area, Date c_date, TextArea c_memo,
				String c_color, String c_ability, String c_gender, int c_memlimit) {
			super();
			this.c_idx = c_idx;
			this.c_name = c_name;
			this.c_cash = c_cash;
			this.c_emb = c_emb;
			this.c_area = c_area;
			this.c_date = c_date;
			this.c_memo = c_memo;
			this.c_color = c_color;
			this.c_ability = c_ability;
			this.c_gender = c_gender;
			this.c_memlimit = c_memlimit;
		}

		public int getC_idx() {
			return c_idx;
		}

		public void setC_idx(int c_idx) {
			this.c_idx = c_idx;
		}

		public String getC_name() {
			return c_name;
		}

		public void setC_name(String c_name) {
			this.c_name = c_name;
		}

		public int getC_cash() {
			return c_cash;
		}

		public void setC_cash(int c_cash) {
			this.c_cash = c_cash;
		}

		public String getC_emb() {
			return c_emb;
		}

		public void setC_emb(String c_emb) {
			this.c_emb = c_emb;
		}

		public String getC_area() {
			return c_area;
		}

		public void setC_area(String c_area) {
			this.c_area = c_area;
		}

		public Date getC_date() {
			return c_date;
		}

		public void setC_date(Date c_date) {
			this.c_date = c_date;
		}

		public TextArea getC_memo() {
			return c_memo;
		}

		public void setC_memo(TextArea c_memo) {
			this.c_memo = c_memo;
		}

		public String getC_color() {
			return c_color;
		}

		public void setC_color(String c_color) {
			this.c_color = c_color;
		}

		public String getC_ability() {
			return c_ability;
		}

		public void setC_ability(String c_ability) {
			this.c_ability = c_ability;
		}

		public String getC_gender() {
			return c_gender;
		}

		public void setC_gender(String c_gender) {
			this.c_gender = c_gender;
		}

		public int getC_memlimit() {
			return c_memlimit;
		}

		public void setC_memlimit(int c_memlimit) {
			this.c_memlimit = c_memlimit;
		}
	
		
}
