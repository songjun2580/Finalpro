package fp.company.model;

public class MoveBidDTO {

	private int mbIdx;
	private int coIdx;
	private int moIdx;
	private int mbMoney;
	
	public MoveBidDTO() {
		// TODO Auto-generated constructor stub
	}

	public MoveBidDTO(int mbIdx, int coIdx, int moIdx, int mbMoney) {
		super();
		this.mbIdx = mbIdx;
		this.coIdx = coIdx;
		this.moIdx = moIdx;
		this.mbMoney = mbMoney;
	}

	public int getMbIdx() {
		return mbIdx;
	}

	public void setMbIdx(int mbIdx) {
		this.mbIdx = mbIdx;
	}

	public int getCoIdx() {
		return coIdx;
	}

	public void setCoIdx(int coIdx) {
		this.coIdx = coIdx;
	}

	public int getMoIdx() {
		return moIdx;
	}

	public void setMoIdx(int moIdx) {
		this.moIdx = moIdx;
	}

	public int getMbMoney() {
		return mbMoney;
	}

	public void setMbMoney(int mbMoney) {
		this.mbMoney = mbMoney;
	}
	
}