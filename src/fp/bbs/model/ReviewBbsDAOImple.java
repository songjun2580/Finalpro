package fp.bbs.model;

import org.mybatis.spring.SqlSessionTemplate;

public class ReviewBbsDAOImple implements ReviewBbsDAO {

   private SqlSessionTemplate sst;
   
   
   public ReviewBbsDAOImple(SqlSessionTemplate sst) {
      super();
      this.sst = sst;
   }

   public int reviewWrite(ReviewBbsDTO dto) {
      int count=sst.insert("reviewInsert", dto);
      return count;
   }

}