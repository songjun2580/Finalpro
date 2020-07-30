package fp.estimate.model;

import java.util.*;

public interface MoveEstimateDAO {

	public int moveestAdd(MoveEstimateDTO dto); 
	public List moveEstList(int cp,int ls);
	public int getTotalCnt();
	public int getTotalCntwait();
	public List moveEstWait(int cp,int ls);
	public List moveEstConfirm(int cp,int ls);
	public int getTotalCntConfirm();
}
