package fp.estimate.model;

import java.util.List;

public interface CleanEstimateDAO {
   public int insertCleanEst(CleanEstimateDTO dto);
   public List selectCleanEst();
   public CleanEstimateDTO estPopup(int clIdx);
   public int CleanEstCount();
   public List CleanEstList(int cp, int ls);
}