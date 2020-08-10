package fp.info.model;

public class UserInfoDTO {
	private int uIdx;
	private String usId;
	private String uPwd;
	private String uName;
	private String uTel;
	private String uBirth;
	private String uEmail;
	private String uAddr;
	private String emailCheck;
	
	public UserInfoDTO() {
		super();
	}

	public UserInfoDTO(int uIdx, String usId, String uPwd, String uName, String uTel, String uBirth, String uEmail,
			String uAddr, String emailCheck) {
		super();
		this.uIdx = uIdx;
		this.usId = usId;
		this.uPwd = uPwd;
		this.uName = uName;
		this.uTel = uTel;
		this.uBirth = uBirth;
		this.uEmail = uEmail;
		this.uAddr = uAddr;
		this.emailCheck = emailCheck;
	}

	public int getuIdx() {
		return uIdx;
	}

	public void setuIdx(int uIdx) {
		this.uIdx = uIdx;
	}

	public String getUsId() {
		return usId;
	}

	public void setUsId(String usId) {
		this.usId = usId;
	}

	public String getuPwd() {
		return uPwd;
	}

	public void setuPwd(String uPwd) {
		this.uPwd = uPwd;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuTel() {
		return uTel;
	}

	public void setuTel(String uTel) {
		this.uTel = uTel;
	}

	public String getuBirth() {
		return uBirth;
	}

	public void setuBirth(String uBirth) {
		this.uBirth = uBirth;
	}

	public String getuEmail() {
		return uEmail;
	}

	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}

	public String getuAddr() {
		return uAddr;
	}

	public void setuAddr(String uAddr) {
		this.uAddr = uAddr;
	}

	public String getEmailCheck() {
		return emailCheck;
	}

	public void setEmailCheck(String emailCheck) {
		this.emailCheck = emailCheck;
	}

	
}
