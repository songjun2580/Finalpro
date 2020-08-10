package fp.estimate.model;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;

public class CleanEstimateDAOImple implements CleanEstimateDAO {
   
   private SqlSessionTemplate sst;
   
   public CleanEstimateDAOImple(SqlSessionTemplate sst) {
      super();
      this.sst=sst;
   }
   /**청소 견적서 작성 메서드*/
   public int insertCleanEst(CleanEstimateDTO dto) {
      int count=sst.insert("cleanEstInsert",dto);
      return count;
   }
   /**청소 견적서 출력 메서드*/
   public List selectCleanEst() {
      List lists=sst.selectList("cleanEstSelect");
      return lists;
   }
   /**청소 견적서 팝업 내용 출력*/
   public CleanEstimateDTO estPopup(int clIdx) {
      CleanEstimateDTO dto=sst.selectOne("cleanEstPopup",clIdx);
      return dto;
   }
   /**청소 견적서 총 갯수 구하는 메서드*/
   public int CleanEstCount() {
      int result=sst.selectOne("cleanEstCount");
      return result==0?1:result;
   }
   /**페이징 적용된 본문 출력 메서드*/
   public List CleanEstList(int cp, int ls) {
      int start=(cp-1)*ls+1;
      int end=cp*ls;
      Map map=new HashMap();
      map.put("start",start);
      map.put("end",end);
      List lists=sst.selectList("cleanEstList", map);
      return lists;
      
   }
}