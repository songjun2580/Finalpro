package fp.estimate.model;

import java.util.*;

import fp.info.model.EmpInfoDTO;

public interface MoveEstimateDAO {

	public void moveestAdd(MoveEstimateDTO dto); 
	public List moveEstList(int cp,int ls);
	public int getTotalCnt();
	public int getTotalCntwait();
	public List moveEstWait(int cp,int ls);
	public List moveEstConfirm(int cp,int ls);
	public int getTotalCntConfirm();
	public MoveEstimateDTO moveEstimate(int moIdx);
	public int moveEstimateAccept(int moIdx);
	public List admEmpList();
	public int moveEstimateMatch(int empIdx,int moIdx);
	public MoveEstimateDTO moIdxMax(int uIdx);
	public int updateTempPrice(int motempPrice);
	public int comConfirm(int coIdx, int moIdx);
	public int selectCoidx(int moIdx);
}
