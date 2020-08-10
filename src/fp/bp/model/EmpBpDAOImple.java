package fp.bp.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class EmpBpDAOImple implements EmpBpDAO {

	private SqlSessionTemplate sst;
	
	
	public EmpBpDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst = sst;
	}

	/**파견사원 실적관리 관련메서드*/
	public List empBpSelect(int empIdx) {
		List lists=sst.selectList("empBpSelect",empIdx);
		return lists;
	}
	/**파견사원 실적관리 진행중인 계약 */
    public int empBpCountingSelect(int empIdx) {
    	int count=sst.selectOne("empBpCountingSelect",empIdx);
    	return count;
    }
    
    /**파견사원 실적관리 거래완료 */
    public int empBpCountedSelect(int empIdx) {
    	int count=sst.selectOne("empBpCountedSelect",empIdx);
    	return count;
    }
    
    /**총 거래금액 관련 메서드*/
    public int empBpSumMoney(int empIdx) {
    	int count=sst.selectOne("empBpSumMoney",empIdx);
    	return count;
    }
}
