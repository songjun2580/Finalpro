package fp.info.model;

import java.util.List;

import fp.company.model.MoveTotalDTO;
import fp.estimate.model.MoveEstimateDTO;

public interface ComInfoDAO {
	public String comLogin(String coEmail);
	public ComInfoDTO comInfoForSession(String usId);
	public List allEstConfirm(int coIdx);
	public List allEstConfirm2(int coIdx);
	public int coAdd(ComInfoDTO dto);
	public List comList(int moIdx);
	public List searchMoveCom(String mo_search);
	public List confirmMoveest(int coIdx);
}
