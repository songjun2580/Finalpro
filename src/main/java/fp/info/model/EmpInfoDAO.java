package fp.info.model;

import java.util.List;

public interface EmpInfoDAO {
	public String empLogin(String empId);
	public EmpInfoDTO empInfoForSession(String empId);
	public List getMoveest(int empIdx);
}
