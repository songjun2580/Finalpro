package fp.company.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import fp.bbs.model.ReviewBbsDTO;
import fp.info.model.BestReviewDTO;
import fp.info.model.ComInfoDTO;
import fp.info.model.ReviewDTO;

public interface BlogContentDAO {
   public int updateBlog(BlogContentDTO dto);
   
   public BlogContentDTO getBlogContent(int coIdx);
   
   public ComInfoDTO getCoInfo(int coIdx);
   
   public int defaultBlogContent(int coIdx);
   
   public int getCoIdx();
   
   public List getCompReview(int coIdx);
   
   public BestReviewDTO getBestReview(int coIdx);
   
   public double getAvgRate(int coIdx);
}