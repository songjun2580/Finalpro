package fp.bp.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class AdmBpDAOImple implements AdmBpDAO {

	@Autowired
    private SqlSessionTemplate sst;
	
	
	public AdmBpDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst = sst;
	}

	public List admBpSelect() {
		List lists=sst.selectList("admBpSelect");
		return lists;
	}
	public int admBpCountingSelect() {
		int count=sst.selectOne("admBpCountingSelect");
		return count;
	}
	public int admBpCountedSelect() {
		int count=sst.selectOne("admBpCountedSelect");
		return count;
	}
	public int admBpSumMoney() {
		int count=sst.selectOne("admBpSumMoney");
		return count;
	}

}
