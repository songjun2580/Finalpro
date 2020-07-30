package fp.info.model;

public class ComInfoDTO {

	private int coIdx;
	private String coName;
	private String coEmail;
	private String coPwd;
	private String coTel;
	private String coReq;
	private String coBsNum;
	private String coCorNum;
	private String coAddr;
	private int coCpl;
	private int coWrg;
	
	public ComInfoDTO() {
		// TODO Auto-generated constructor stub
	}

	public ComInfoDTO(int coIdx, String coName, String coEmail, String coPwd, String coTel, String coReq,
			String coBsNum, String coCorNum, String coAddr, int coCpl, int coWrg) {
		super();
		this.coIdx = coIdx;
		this.coName = coName;
		this.coEmail = coEmail;
		this.coPwd = coPwd;
		this.coTel = coTel;
		this.coReq = coReq;
		this.coBsNum = coBsNum;
		this.coCorNum = coCorNum;
		this.coAddr = coAddr;
		this.coCpl = coCpl;
		this.coWrg = coWrg;
	}

	public int getCoIdx() {
		return coIdx;
	}

	public void setCoIdx(int coIdx) {
		this.coIdx = coIdx;
	}

	public String getCoName() {
		return coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
	}

	public String getCoEmail() {
		return coEmail;
	}

	public void setCoEmail(String coEmail) {
		this.coEmail = coEmail;
	}

	public String getCoPwd() {
		return coPwd;
	}

	public void setCoPwd(String coPwd) {
		this.coPwd = coPwd;
	}

	public String getCoTel() {
		return coTel;
	}

	public void setCoTel(String coTel) {
		this.coTel = coTel;
	}

	public String getCoReq() {
		return coReq;
	}

	public void setCoReq(String coReq) {
		this.coReq = coReq;
	}

	public String getCoBsNum() {
		return coBsNum;
	}

	public void setCoBsNum(String coBsNum) {
		this.coBsNum = coBsNum;
	}

	public String getCoCorNum() {
		return coCorNum;
	}

	public void setCoCorNum(String coCorNum) {
		this.coCorNum = coCorNum;
	}

	public String getCoAddr() {
		return coAddr;
	}

	public void setCoAddr(String coAddr) {
		this.coAddr = coAddr;
	}

	public int getCoCpl() {
		return coCpl;
	}

	public void setCoCpl(int coCpl) {
		this.coCpl = coCpl;
	}

	public int getCoWrg() {
		return coWrg;
	}

	public void setCoWrg(int coWrg) {
		this.coWrg = coWrg;
	}
}