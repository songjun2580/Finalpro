package fp.info.model;

import java.util.List;

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

}
