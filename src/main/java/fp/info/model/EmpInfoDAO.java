package fp.info.model;

public interface EmpInfoDAO {
	public String empLogin(String empId);
	public EmpInfoDTO empInfoForSession(String empId);
}
