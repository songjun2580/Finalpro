package fp.company.model;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;

import fp.info.model.BestReviewDTO;
import fp.info.model.ComInfoDTO;
import fp.info.model.ReviewDTO;

public class BlogContentDAOImple implements BlogContentDAO {
   
   private SqlSessionTemplate sst;
   
   public BlogContentDAOImple(SqlSessionTemplate sst) {
      super();
      this.sst=sst;
   }

   public int updateBlog(BlogContentDTO dto) {
      int result=sst.update("blogContentUpdate", dto);
      return result;
   }
   /**청소 업체 현장사진 가져오는 메서드*/
   public BlogContentDTO getBlogContent(int coIdx) {
      BlogContentDTO dto =sst.selectOne("blogContentGet", coIdx);
      
      return dto;
   }
   /**청소 업체 정보 가져오는 메서드*/
   public ComInfoDTO getCoInfo(int coIdx) {
      ComInfoDTO dto=sst.selectOne("selectCoInfo",coIdx);
      return dto;
   }

   public int defaultBlogContent(int coIdx) {
      int result=sst.insert("defaultBlogContent",coIdx);
      return result;
   }
   
   public int getCoIdx() {
      int coIdx=sst.selectOne("getCoIdx");
      return coIdx;
   }
   
   public List getCompReview(int coIdx) {
      List lists=sst.selectList("getReview", coIdx);
      return lists;
   }
   
   public BestReviewDTO getBestReview(int coIdx) {
      BestReviewDTO dto=sst.selectOne("getBestReview",coIdx);
      return dto;
   }
   
   public double getAvgRate(int coIdx) {
      double avgRate=sst.selectOne("getAvgRate", coIdx);
      return avgRate;
   }
}