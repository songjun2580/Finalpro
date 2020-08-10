package fp.estimate.model;

import java.util.*;

import fp.info.model.EmpInfoDTO;
import fp.manage.model.MoveContractDTO;
import fp.manage.model.MoveContractWriteDTO;

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
	public int comConfirm(int mbIdx, int mctPrice);
	public int selectCoidx(int moIdx);
	public MoveContractDTO contract(int mbIdx);
	public int contractWrite(MoveContractWriteDTO dto);
	public MoveContractWriteDTO getContract(int mbIdx);
	public int zeroSet(MoveContractWriteDTO dto);
}
