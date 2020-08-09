package mybatis;

public class AndroidRankingDTO {
	private String c_idx;
	private String c_name;
	private String c_emb;
	private String c_area;
	private int matches;
	private int wins;
	private int draws;
	private int points;
	private int rnum;
	private int winRate;
	
	
	public  AndroidRankingDTO() {
		super();
	}
	
	


	public AndroidRankingDTO(String c_idx, String c_name, String c_emb, String c_area, int matches, int wins, int draws,
			int points, int rnum, int winRate) {
		super();
		this.c_idx = c_idx;
		this.c_name = c_name;
		this.c_emb = c_emb;
		this.c_area = c_area;
		this.matches = matches;
		this.wins = wins;
		this.draws = draws;
		this.points = points;
		this.rnum = rnum;
		this.winRate = winRate;
	}




	public String getC_idx() {
		return c_idx;
	}


	public void setC_idx(String c_idx) {
		this.c_idx = c_idx;
	}


	public String getC_name() {
		return c_name;
	}


	public void setC_name(String c_name) {
		this.c_name = c_name;
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


	public int getMatches() {
		return matches;
	}


	public void setMatches(int matches) {
		this.matches = matches;
	}


	public int getWins() {
		return wins;
	}


	public void setWins(int wins) {
		this.wins = wins;
	}


	public int getDraws() {
		return draws;
	}


	public void setDraws(int draws) {
		this.draws = draws;
	}


	public int getPoints() {
		return points;
	}


	public void setPoints(int points) {
		this.points = points;
	}


	public int getRnum() {
		return rnum;
	}


	public void setRnum(int rnum) {
		this.rnum = rnum;
	}


	public int getWinRate() {
		return winRate;
	}


	public void setWinRate(int winRate) {
		this.winRate = winRate;
	}


	
	
	

}
