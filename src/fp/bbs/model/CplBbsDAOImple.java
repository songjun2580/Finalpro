package fp.bbs.model;

import java.util.*;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;

public class CplBbsDAOImple implements CplBbsDAO {
	
	private SqlSessionTemplate sst;

	 public CplBbsDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst = sst;
	}
	
	 @Override
	public List cplSelCom(int coIdx) {
		List dto=sst.selectList("selectComCpl", coIdx);
		return dto;
	}
	 
	@Override
	public int cplWrite(CplBbsDTO dto) {
		int result=sst.insert("cplInsert", dto);
		return result;
	}
	
	@Override
	public int coCplUpdate(int coIdx) {
		int result=sst.update("coWrgUpdate", coIdx);
		return result;
	}
	
	@Override
	public List confirmList() {
		List dto = sst.selectList("selectCplConfirm");
		return dto;
	}
	
	@Override
	public List NoConfirmList() {
		List dto= sst.selectList("selectCpl");
		return dto;
	}
	
	@Override
	public CplBbsDTO cplContent(int cplIdx) {
		CplBbsDTO dto=sst.selectOne("cplContent", cplIdx);
		return dto;
	}
	
	@Override
	public List cplImgs(CplBbsDTO dto) {
		
		List imgList= new ArrayList();
		String dbName=dto.getCplImg();
         if(dbName!=null) {
            StringTokenizer tokens = new StringTokenizer(dbName, "," );
            try {
	            while(tokens.hasMoreElements()) {
	            	imgList.add(tokens.nextElement());
	            }
            }catch(Exception e) {
            	e.printStackTrace();
            }

         }
         return imgList;
	}
	@Override
	public int cplConfirm(int cplIdx) {
		int result=sst.update("cplConfirm", cplIdx);		
		return result;
	}
	@Override
	public int cplReply(int cplIdx, String cplReply) {
		Map map=new HashedMap();
		map.put("cplIdx", cplIdx);
		map.put("cplReply", cplReply);
		sst.update("cplReply", map);
		return 0;
	}
	
}
