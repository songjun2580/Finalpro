package fp.estimate.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class MoveEstimateDAOImple implements MoveEstimateDAO {
	
	private SqlSessionTemplate sst;

	public MoveEstimateDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst = sst;
	}
	
	/**이사 견적서 추가*/
	public int moveestAdd(MoveEstimateDTO dto) {
		
		int count=sst.insert("moveestInsert",dto);
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
}
