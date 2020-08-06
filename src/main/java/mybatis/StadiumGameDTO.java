package mybatis;

import java.sql.Date;

//join용 DTO
public class StadiumGameDTO {
   
   //game
   private int g_idx;
   private int s_idx;
   private int c_idx;
   private String g_sname;
   private String g_saddr;
   private String g_type;
   private String g_score;
   private String g_result;
   private java.sql.Date g_date;
   private int g_num;
   private int g_rating;
   private String g_memo;
   private String g_time;
   private String g_gu;
   private String g_check;
   private int g_extra;
   //stadium
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
   
   private String c_name;
   private String time;
   

   public StadiumGameDTO() {
      super();
   }
   
   //인자생성자
   public StadiumGameDTO(int g_idx, int s_idx, int c_idx, String g_sname, String g_saddr, String g_type,
         String g_score, String g_result, Date g_date, int g_num, int g_rating, String g_memo, String g_time,
         String g_gu, String g_check, int g_extra, String s_id, String s_pw, String s_name, String s_phone,
         String s_addr, String s_gu, String s_type, String s_pic, String s_size, String s_cv, int s_price,
         String s_memo, String s_starttime, String s_endtime, String s_lat, String s_lng, String c_name, String time) {
      super();
      this.g_idx = g_idx;
      this.s_idx = s_idx;
      this.c_idx = c_idx;
      this.g_sname = g_sname;
      this.g_saddr = g_saddr;
      this.g_type = g_type;
      this.g_score = g_score;
      this.g_result = g_result;
      this.g_date = g_date;
      this.g_num = g_num;
      this.g_rating = g_rating;
      this.g_memo = g_memo;
      this.g_time = g_time;
      this.g_gu = g_gu;
      this.g_check = g_check;
      this.g_extra = g_extra;
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
      this.s_lat = s_lat;
      this.s_lng = s_lng;
      this.c_name = c_name;
      this.time = time;
      
   }

   public int getG_idx() {
      return g_idx;
   }

   public void setG_idx(int g_idx) {
      this.g_idx = g_idx;
   }

   public int getS_idx() {
      return s_idx;
   }

   public void setS_idx(int s_idx) {
      this.s_idx = s_idx;
   }

   public int getC_idx() {
      return c_idx;
   }

   public void setC_idx(int c_idx) {
      this.c_idx = c_idx;
   }

   public String getG_sname() {
      return g_sname;
   }

   public void setG_sname(String g_sname) {
      this.g_sname = g_sname;
   }

   public String getG_saddr() {
      return g_saddr;
   }

   public void setG_saddr(String g_saddr) {
      this.g_saddr = g_saddr;
   }

   public String getG_type() {
      return g_type;
   }

   public void setG_type(String g_type) {
      this.g_type = g_type;
   }

   public String getG_score() {
      return g_score;
   }

   public void setG_score(String g_score) {
      this.g_score = g_score;
   }

   public String getG_result() {
      return g_result;
   }

   public void setG_result(String g_result) {
      this.g_result = g_result;
   }

   public java.sql.Date getG_date() {
      return g_date;
   }

   public void setG_date(java.sql.Date g_date) {
      this.g_date = g_date;
   }

   public int getG_num() {
      return g_num;
   }

   public void setG_num(int g_num) {
      this.g_num = g_num;
   }

   public int getG_rating() {
      return g_rating;
   }

   public void setG_rating(int g_rating) {
      this.g_rating = g_rating;
   }

   public String getG_memo() {
      return g_memo;
   }

   public void setG_memo(String g_memo) {
      this.g_memo = g_memo;
   }

   public String getG_time() {
      return g_time;
   }
   
   public void setG_time(String g_time) {
      this.g_time = g_time;
   }

   public String getG_gu() {
      return g_gu;
   }

   public void setG_gu(String g_gu) {
      this.g_gu = g_gu;
   }

   public String getG_check() {
      return g_check;
   }

   public void setG_check(String g_check) {
      this.g_check = g_check;
   }

   public int getG_extra() {
      return g_extra;
   }

   public void setG_extra(int g_extra) {
      this.g_extra = g_extra;
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
   
   public String getC_name() {
      return c_name;
   }
   
   public void setC_name(String c_name) {
      this.c_name = c_name;
   }
   
   public String getTime() {
      return time;
   }
   
   public void setTime(String time) {
      this.time = time;
   }
   
}
