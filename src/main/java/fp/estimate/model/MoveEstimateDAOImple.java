package fp.estimate.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import fp.info.model.EmpInfoDTO;

public class MoveEstimateDAOImple implements MoveEstimateDAO {
	
	private SqlSessionTemplate sst;

	public MoveEstimateDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst = sst;
	}
	
	/**이사 견적서 신청*/
	public void moveestAdd(MoveEstimateDTO dto) {

		sst.insert("moveestInsert",dto);
	}
	/**moIdx 최댓값 가져오기 관련 메서드*/
	public MoveEstimateDTO moIdxMax(int uIdx) {
		MoveEstimateDTO dto=sst.selectOne("moIdxMax",uIdx);
		return dto;
	}
	/**예상가격 삽입 관련 메서드*/
	public int updateTempPrice(int motempPrice) {
		int count=sst.update("updateTemp",motempPrice);
		return count;
	}
	/**이사 견적서 신청 목록*/
	public List moveEstList(int cp,int ls) {
		
		int start=(cp-1)*ls+1;
		int end=cp*ls;
		Map map=new HashMap();
		map.put("start",start);
		map.put("end",end);
		
		List lists=sst.selectList("moveEstList",map);
		return lists;
	}
	
	public int getTotalCnt() {
		int count=sst.selectOne("totalCnt");
		return count==0?1:count;
	}
	
	/**이사 견적서 승인대기 목록*/
	public List moveEstWait(int cp,int ls) {
		
		int start=(cp-1)*ls+1;
		int end=cp*ls;
		Map map=new HashMap();
		map.put("start",start);
		map.put("end",end);
		
		List moveEstWait=sst.selectList("moveEstWait",map);
		return moveEstWait;
	}
	
	public int getTotalCntwait() {
	int count=sst.selectOne("totalCntwait");
	return count==0?1:count;
	}

	/**이사 견적서 승인완료 목록*/
	public List moveEstConfirm(int cp, int ls) {
	int start=(cp-1)*ls+1;
	int end=cp*ls;
	Map map=new HashMap();
	map.put("start",start);
	map.put("end",end);
	
	List moveEstConfirm=sst.selectList("moveEstConfirm",map);
	
	return moveEstConfirm;
}

	public int getTotalCntConfirm() {
	int count=sst.selectOne("totalCntConfirm");
	return count==0?1:count;
	}
	
	/**이사 견적서 보기*/
	public MoveEstimateDTO moveEstimate(int moIdx) {
		MoveEstimateDTO dto=sst.selectOne("moveEstimate",moIdx);
		return dto;
	}
	
	/**이사 견적서 승인하기*/
	public int moveEstimateAccept(int moIdx) {
		int count=sst.update("moveEstimateAccept", moIdx);
		System.out.println(count);
		return count;
	}
	
	/**매칭사원 목록보기*/
	public List admEmpList() {
		List admEmpList=sst.selectList("admEmpList");
		return admEmpList;
	}	
	
	/**사원 매칭하기*/
	public int moveEstimateMatch(int empIdx,int moIdx) {
		Map map=new HashMap();
		map.put("empIdx",empIdx);
		map.put("moIdx",moIdx);				
		int count=sst.update("moveEstimateMatch", map);
		System.out.println(count);
		return count;
	}
	
	/**사원 이름가져오기*/
	public EmpInfoDTO empName(int empIdx) {
		EmpInfoDTO dto=sst.selectOne("empName",empIdx);
		return dto;
	}
	
	public int comConfirm(int coIdx, int moIdx) {
		Map map=new HashMap();
		map.put("coIdx", coIdx);
		map.put("moIdx", moIdx);
		int count=sst.update("updateCoidx",map);
		return count;
	}
	public int selectCoidx(int moIdx) {
		int coIdx=sst.selectOne("selectCoidx",moIdx);
		return coIdx;
	}
}
