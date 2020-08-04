package fp.location.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class LocationDAOImple implements LocationDAO {

   private SqlSessionTemplate sst;
   
   public LocationDAOImple(SqlSessionTemplate sst) {
      super();
      this.sst = sst;
   }

   public List addrList(String location) {
      List lists=sst.selectList("selectLocation", location);
      return lists; 
   }

}