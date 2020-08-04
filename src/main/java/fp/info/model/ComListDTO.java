package fp.info.model;

public class ComListDTO {

	private int coIdx;
	private int moIdx;
	private String coName;
	private String coRep;
	private String coTel;
	private String coAddr;
	private int mbMoney;
	
	public ComListDTO() {
		// TODO Auto-generated constructor stub
	}

	public ComListDTO(int coIdx, int moIdx, String coName, String coRep, String coTel, String coAddr, int mbMoney) {
		super();
		this.coIdx = coIdx;
		this.moIdx = moIdx;
		this.coName = coName;
		this.coRep = coRep;
		this.coTel = coTel;
		this.coAddr = coAddr;
		this.mbMoney = mbMoney;
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

	public String getCoName() {
		return coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
	}

	public String getCoRep() {
		return coRep;
	}

	public void setCoRep(String coRep) {
		this.coRep = coRep;
	}

	public String getCoTel() {
		return coTel;
	}

	public void setCoTel(String coTel) {
		this.coTel = coTel;
	}

	public String getCoAddr() {
		return coAddr;
	}

	public void setCoAddr(String coAddr) {
		this.coAddr = coAddr;
	}

	public int getMbMoney() {
		return mbMoney;
	}

	public void setMbMoney(int mbMoney) {
		this.mbMoney = mbMoney;
	}

	
}
	