package fp.estimate.model;

public class CleanEstimateDTO {
   
   private int clIdx;
   private int uIdx;
   private String clDate;
   private String clName;
   private String clTel;
   private String clRoadAddr;
   private String clAddrDetail;
   private String clCoAddr;
   private String clType1;
   private String clType2;
   private String clStatus;
   
   public CleanEstimateDTO() {
      super();
   }

   public CleanEstimateDTO(int clIdx, int uIdx, String clDate, String clName, String clTel, String clRoadAddr,
         String clAddrDetail, String clCoAddr, String clType1, String clType2, String clStatus) {
      super();
      this.clIdx = clIdx;
      this.uIdx = uIdx;
      this.clDate = clDate;
      this.clName = clName;
      this.clTel = clTel;
      this.clRoadAddr = clRoadAddr;
      this.clAddrDetail = clAddrDetail;
      this.clCoAddr = clCoAddr;
      this.clType1 = clType1;
      this.clType2 = clType2;
      this.clStatus = clStatus;
   }

   public int getClIdx() {
      return clIdx;
   }

   public void setClIdx(int clIdx) {
      this.clIdx = clIdx;
   }

   public int getuIdx() {
      return uIdx;
   }

   public void setuIdx(int uIdx) {
      this.uIdx = uIdx;
   }

   public String getClDate() {
      return clDate;
   }

   public void setClDate(String clDate) {
      this.clDate = clDate;
   }

   public String getClName() {
      return clName;
   }

   public void setClName(String clName) {
      this.clName = clName;
   }

   public String getClTel() {
      return clTel;
   }

   public void setClTel(String clTel) {
      this.clTel = clTel;
   }

   public String getClRoadAddr() {
      return clRoadAddr;
   }

   public void setClRoadAddr(String clRoadAddr) {
      this.clRoadAddr = clRoadAddr;
   }

   public String getClAddrDetail() {
      return clAddrDetail;
   }

   public void setClAddrDetail(String clAddrDetail) {
      this.clAddrDetail = clAddrDetail;
   }

   public String getClCoAddr() {
      return clCoAddr;
   }

   public void setClCoAddr(String clCoAddr) {
      this.clCoAddr = clCoAddr;
   }

   public String getClType1() {
      return clType1;
   }

   public void setClType1(String clType1) {
      this.clType1 = clType1;
   }

   public String getClType2() {
      return clType2;
   }

   public void setClType2(String clType2) {
      this.clType2 = clType2;
   }

   public String getClStatus() {
      return clStatus;
   }

   public void setClStatus(String clStatus) {
      this.clStatus = clStatus;
   }
   
}