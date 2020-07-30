package fp.info.model;

import org.mybatis.spring.SqlSessionTemplate;

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
	
	/**���ǰ��� ������ ����� ���� ȣ�� �޼���*/
	   public ComInfoDTO comInfoForSession(String usId) {
	      ComInfoDTO dto=sst.selectOne("comInfoForSession", usId);
	      return dto;
	   }

}
