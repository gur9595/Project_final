package mybatis;

public class GoalHistoryDTO {

	private int gh_idx;
	private int g_idx;
	private String gh_goal;
	private String gh_assist;
	private int gh_time;
	private int count;
	private String name;
	private String goalname;
	private String assistname;
	
	public GoalHistoryDTO() {
		super();
	}
	
	
	public GoalHistoryDTO(int gh_idx, int g_idx, String gh_goal, String gh_assist, int gh_time, int count, String name,
			String goalname, String assistname) {
		super();
		this.gh_idx = gh_idx;
		this.g_idx = g_idx;
		this.gh_goal = gh_goal;
		this.gh_assist = gh_assist;
		this.gh_time = gh_time;
		this.count = count;
		this.name = name;
		this.goalname = goalname;
		this.assistname = assistname;
	}


	public int getGh_idx() {
		return gh_idx;
	}
	public void setGh_idx(int gh_idx) {
		this.gh_idx = gh_idx;
	}
	public int getG_idx() {
		return g_idx;
	}
	public void setG_idx(int g_idx) {
		this.g_idx = g_idx;
	}
	public String getGh_goal() {
		return gh_goal;
	}
	public void setGh_goal(String gh_goal) {
		this.gh_goal = gh_goal;
	}
	public String getGh_assist() {
		return gh_assist;
	}
	public void setGh_assist(String gh_assist) {
		this.gh_assist = gh_assist;
	}
	public int getGh_time() {
		return gh_time;
	}
	public void setGh_time(int gh_time) {
		this.gh_time = gh_time;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGoalname() {
		return goalname;
	}

	public void setGoalname(String goalname) {
		this.goalname = goalname;
	}

	public String getAssistname() {
		return assistname;
	}

	public void setAssistname(String assistname) {
		this.assistname = assistname;
	}
	
	
	
}
