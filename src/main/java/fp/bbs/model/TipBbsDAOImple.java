package fp.bbs.model;

import org.mybatis.spring.SqlSessionTemplate;

public class TipBbsDAOImple implements TipBbsDAO {
	
	
private SqlSessionTemplate sst;
	
	
	public TipBbsDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst = sst;
	}
	
	
	
	public int insertTip(TipBbsDTO dto) {
		int result=sst.insert("TipInsert", dto);
		return result;
	}
	

}
