package fp.company.model;

public class CleanBidDTO {

	private int cbIdx;
	private int coIdx;
	private int moIdx;
	private int cbMoney;
	
	public CleanBidDTO() {
		// TODO Auto-generated constructor stub
	}

	public CleanBidDTO(int cbIdx, int coIdx, int moIdx, int cbMoney) {
		super();
		this.cbIdx = cbIdx;
		this.coIdx = coIdx;
		this.moIdx = moIdx;
		this.cbMoney = cbMoney;
	}

	public int getCbIdx() {
		return cbIdx;
	}

	public void setCbIdx(int cbIdx) {
		this.cbIdx = cbIdx;
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

	public int getCbMoney() {
		return cbMoney;
	}

	public void setCbMoney(int cbMoney) {
		this.cbMoney = cbMoney;
	}
	
	
}

