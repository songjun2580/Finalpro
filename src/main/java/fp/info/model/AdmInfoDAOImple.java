package fp.info.model;

import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;

public class AdmInfoDAOImple implements AdmInfoDAO {

	private SqlSessionTemplate sst;
	
	
	public AdmInfoDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst = sst;
	}

	public String admLogin(String adId) {
		String Pwd=sst.selectOne("admIdSelect",adId);
		if(Pwd==null||Pwd.equals("")) {
	    	  Pwd="null";
	      }
		return Pwd;
	}
	/**파견사원 등록*/
	public int empAdd(EmpInfoDTO dto) {
		
		int count=sst.insert("empAdd",dto);
		return count;
	}
	
	/**업체 승인대기 목록*/
	public List admCompWaitList(int cp, int ls) {
		int start=(cp-1)*ls+1;
		int end=cp*ls;
		Map map=new HashedMap();
		map.put("start",start);
		map.put("end",end);
		
		List admCompWaitList=sst.selectList("admCompWaitList",map);
		return admCompWaitList;
	}
	
	public int getTotalCntCompWait() {
		int count=sst.selectOne("getTotalCntCompWait");
		return count==0?1:count;
	}
	
	/**업체 승인하기*/
	public int admCompAccept(int coIdx) {
		int count=sst.update("admCompAccept",coIdx);
		return count;
	}
	
	/**업체 목록보기*/
	public List admCompList(int cp, int ls) {
		int start=(cp-1)*ls+1;
		int end=cp*ls;
		Map map=new HashedMap();
		map.put("start",start);
		map.put("end",end);
		
		List admCompList=sst.selectList("admCompList",map);
		return admCompList;
	}
	public int getTotalCntComp() {
		int count=sst.selectOne("getTotalCntComp");
		return count==0?1:count;
	}
	public int wrgUp(int coIdx) {
		int count=sst.update("wrgUp",coIdx);
		return count;
	}
	
	/**경고 업체 목록보기*/
	public List admWrgList(int cp2, int ls2) {
		int start=(cp2-1)*ls2+1;
		int end=cp2*ls2;
		Map map=new HashedMap();
		map.put("start",start);
		map.put("end",end);
		
		List admWrgList=sst.selectList("admWrgList",map);
		return admWrgList;
	}
	
	public int TotalCntWrg() {
		int count=sst.selectOne("TotalCntWrg");
		return count==0?1:count;
	}
	
	/**업체 삭제*/
	public int compDelete(int coIdx) {
		int count=sst.delete("compDelete",coIdx);
		return count;
	}
	
	/**경고3개일시 현재시간 입력*/
	public int wrgTime(int coIdx) {
		int count=sst.update("wrgTime",coIdx);
		return count;
	}
}
