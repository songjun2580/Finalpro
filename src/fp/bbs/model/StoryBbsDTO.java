package fp.bbs.model;

public class StoryBbsDTO {

	private int stIdx;
	private int coIdx;
	private String stSubject;
	private String stImg;
	
	public StoryBbsDTO() {
		// TODO Auto-generated constructor stub
	}

	public StoryBbsDTO(int stIdx, int coIdx, String stSubject, String stImg) {
		super();
		this.stIdx = stIdx;
		this.coIdx = coIdx;
		this.stSubject = stSubject;
		this.stImg = stImg;
	}

	public int getStIdx() {
		return stIdx;
	}

	public void setStIdx(int stIdx) {
		this.stIdx = stIdx;
	}

	public int getCoIdx() {
		return coIdx;
	}

	public void setCoIdx(int coIdx) {
		this.coIdx = coIdx;
	}

	public String getStSubject() {
		return stSubject;
	}

	public void setStSubject(String stSubject) {
		this.stSubject = stSubject;
	}

	public String getStImg() {
		return stImg;
	}

	public void setStImg(String stImg) {
		this.stImg = stImg;
	}
	
	
}
