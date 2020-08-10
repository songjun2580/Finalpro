package fp.bp.model;

public class EmpBpDTO {
	private String moName;
	private String coName;
	private int moconfirmPrice;
	private String mctDate;
	
	public EmpBpDTO() {
		// TODO Auto-generated constructor stub
	}

	public EmpBpDTO(String moName, String coName, int moconfirmPrice, String mctDate) {
		super();
		this.moName = moName;
		this.coName = coName;
		this.moconfirmPrice = moconfirmPrice;
		this.mctDate = mctDate;
	}

	public String getMoName() {
		return moName;
	}

	public void setMoName(String moName) {
		this.moName = moName;
	}

	public String getCoName() {
		return coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
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
	
	
}
