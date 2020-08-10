package fp.info.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class EmpInfoDAOImple implements EmpInfoDAO {

	private SqlSessionTemplate sst;
	
	
	public EmpInfoDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst = sst;
	}

	public String empLogin(String empId) {
		String Pwd=sst.selectOne("empEmailSelect",empId);
		if(Pwd==null||Pwd.equals("")) {
	    	  Pwd="null";
	      }
		return Pwd;
	}
	/**세션값에 저장할 사용자 정보 호출 메서드*/
    public EmpInfoDTO empInfoForSession(String empId) {
	     EmpInfoDTO dto=sst.selectOne("empInfoForSession", empId);
	     return dto;
	}
    
    public List getMoveest(int empIdx) {
    	List lists=sst.selectList("getMoveest",empIdx);
    	return lists;
    }
    
    /**파견매칭 관련 견적서 출력 관련 메서드*/
    public List userMatch(int cp,int ls, String empName) {
      
      int start=(cp-1)*ls+1;
      int end=cp*ls;
      Map map=new HashMap();
      map.put("start",start);
      map.put("end",end);
      map.put("empName", empName);
         
      List lists=sst.selectList("matchInfo",map);
      return lists;
   }
    /**파견사원 실적 리스트 가져오기 관련 메서드*/
    public List getPerform(int empIdx) {
    	List lists=sst.selectList("getPerform", empIdx);
    	return lists;
    }

}
