package fp.company.model;

import org.mybatis.spring.SqlSessionTemplate;

public class MoveBidDAOImple implements MoveBidDAO {

	private SqlSessionTemplate sst;
	
	
	public MoveBidDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst = sst;
	}


	public int bidAdd(MoveBidDTO dto) {
		int count=sst.insert("bidAdd",dto);
		return count;
	}

}
