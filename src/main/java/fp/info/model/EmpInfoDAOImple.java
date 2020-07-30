package fp.info.model;

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
	/**���ǰ��� ������ ����� ���� ȣ�� �޼���*/
	   public EmpInfoDTO empInfoForSession(String empId) {
	      EmpInfoDTO dto=sst.selectOne("empInfoForSession", empId);
	      return dto;
	   }

}
