package fp.info.model;

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

}
