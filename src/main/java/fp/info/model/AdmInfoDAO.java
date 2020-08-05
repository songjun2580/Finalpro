package fp.info.model;

import java.util.List;

public interface AdmInfoDAO {
	public String admLogin(String adId);
	public int empAdd(fp.info.model.EmpInfoDTO dto);
	public List admCompWaitList(int cp,int ls);
	public int getTotalCntCompWait();
	public int admCompAccept(int coIdx);
	public List admCompList(int cp,int ls);
	public int getTotalCntComp();
	public int wrgUp(int coIdx);
	public int compDelete(int coIdx);
	public List admWrgList(int cp2,int ls2);
	public int TotalCntWrg();
	public int wrgTime(int coIdx);
}
