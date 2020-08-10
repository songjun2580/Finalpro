package fp.bp.model;

public class AdmBpDTO {

	private String moName;
	private int moIdx;
	private String coName;
	private int coIdx;
	private int moconfirmPrice;
	private int goMoney;
	private String mctDate;
	
	public AdmBpDTO() {
		// TODO Auto-generated constructor stub
	}

	public AdmBpDTO(String moName, int moIdx, String coName, int coIdx, int moconfirmPrice, int goMoney,
			String mctDate) {
		super();
		this.moName = moName;
		this.moIdx = moIdx;
		this.coName = coName;
		this.coIdx = coIdx;
		this.moconfirmPrice = moconfirmPrice;
		this.goMoney = goMoney;
		this.mctDate = mctDate;
	}

	public String getMoName() {
		return moName;
	}

	public void setMoName(String moName) {
		this.moName = moName;
	}

	public int getMoIdx() {
		return moIdx;
	}

	public void setMoIdx(int moIdx) {
		this.moIdx = moIdx;
	}

	public String getCoName() {
		return coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
	}

	public int getCoIdx() {
		return coIdx;
	}

	public void setCoIdx(int coIdx) {
		this.coIdx = coIdx;
	}

	public int getMoconfirmPrice() {
		return moconfirmPrice;
	}

	public void setMoconfirmPrice(int moconfirmPrice) {
		this.moconfirmPrice = moconfirmPrice;
	}

	public int getGoMoney() {
		return goMoney;
	}

	public void setGoMoney(int goMoney) {
		this.goMoney = goMoney;
	}

	public String getMctDate() {
		return mctDate;
	}

	public void setMctDate(String mctDate) {
		this.mctDate = mctDate;
	}

	

	
}