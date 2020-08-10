package fp.bp.model;

public class UserBpDTO {

	private String moName;
	private int moIdx;
	private String coName;
	private int coIdx;
	private int moconfirmPrice;
	private String mctDate;
	private String moSaddr;
	private String moEaddr;

	public UserBpDTO() {
		// TODO Auto-generated constructor stub
	}

	public UserBpDTO(String moName, int moIdx, String coName, int coIdx, int moconfirmPrice, String mctDate,
			String moSaddr, String moEaddr) {
		super();
		this.moName = moName;
		this.moIdx = moIdx;
		this.coName = coName;
		this.coIdx = coIdx;
		this.moconfirmPrice = moconfirmPrice;
		this.mctDate = mctDate;
		this.moSaddr = moSaddr;
		this.moEaddr = moEaddr;
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

	public String getMctDate() {
		return mctDate;
	}

	public void setMctDate(String mctDate) {
		this.mctDate = mctDate;
	}

	public String getMoSaddr() {
		return moSaddr;
	}

	public void setMoSaddr(String moSaddr) {
		this.moSaddr = moSaddr;
	}

	public String getMoEaddr() {
		return moEaddr;
	}

	public void setMoEaddr(String moEaddr) {
		this.moEaddr = moEaddr;
	}

	
}