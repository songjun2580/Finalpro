package fp.info.model;

public class EmpInfoDTO {
	private int empIdx;
	private String empId;
	private String empName;
	private String empPwd;
	private String empTel;
	private String empEmail;
	
	public EmpInfoDTO() {
		super();
	}

	public EmpInfoDTO(int empIdx, String empId, String empName, String empPwd, String empTel, String empEmail) {
		super();
		this.empIdx = empIdx;
		this.empId = empId;
		this.empName = empName;
		this.empPwd = empPwd;
		this.empTel = empTel;
		this.empEmail = empEmail;
	}

	public int getEmpIdx() {
		return empIdx;
	}

	public void setEmpIdx(int empIdx) {
		this.empIdx = empIdx;
	}

	public String getEmpId() {
		return empId;
	}

	public void setEmpId(String empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getEmpPwd() {
		return empPwd;
	}

	public void setEmpPwd(String empPwd) {
		this.empPwd = empPwd;
	}

	public String getEmpTel() {
		return empTel;
	}

	public void setEmpTel(String empTel) {
		this.empTel = empTel;
	}

	public String getEmpEmail() {
		return empEmail;
	}

	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}
	
	
	
}
