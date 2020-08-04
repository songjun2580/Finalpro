package fp.info.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import fp.company.model.MoveTotalDTO;
import fp.estimate.model.MoveEstimateDTO;

public class ComInfoDAOImple implements ComInfoDAO {

	private SqlSessionTemplate sst;
	
	public ComInfoDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst = sst;
	}

	public String comLogin(String coEmail) {
		String Pwd=sst.selectOne("comEmailSelect", coEmail);
		if(Pwd==null||Pwd.equals("")) {
	    	  Pwd="null";
	      }
		return Pwd;
	}
	
	/**세션값에 저장할 사용자 정보 호출 메서드*/
	public ComInfoDTO comInfoForSession(String usId) {
	    ComInfoDTO dto=sst.selectOne("comInfoForSession", usId);
	    return dto;
	}
	   
	/**승인완료된 모든 이사견적서 조회하기 관련 메서드*/
    public List allEstConfirm(int coIdx) {
		List lists=sst.selectList("allEstConfirm",coIdx);
    	return lists;
	}
    public List allEstConfirm2(int coIdx) {
    	List lists=sst.selectList("allEstConfirm2",coIdx);
    	return lists;
    }
    /**회사 등록*/
	   public int coAdd(ComInfoDTO dto) {
		 int result=sst.insert("coInsert", dto);
		return result;
	}
	   /**고객 맞춤 업체 리스트 출력하기 관련 메서드*/
	public List comList(int moIdx) {
		List lists=sst.selectList("comLIstSelect",moIdx);
		return lists;
	}
	 /**청소 업체 검색 관련 메서드*/
	   public List searchMoveCom(String mo_search) {
	      List lists=sst.selectList("moveCoSearch", mo_search);
	      return lists;
	   }

}
