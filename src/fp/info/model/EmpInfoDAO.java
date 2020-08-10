package fp.info.model;

import java.util.List;

public interface EmpInfoDAO {
	public String empLogin(String empId);
	public EmpInfoDTO empInfoForSession(String empId);
	public List getMoveest(int empIdx);
    public List userMatch(int cp,int ls, String empName);
    public List getPerform(int empIdx);
}
