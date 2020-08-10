package fp.company.model;

public class BlogContentDTO {
   private int bcIdx;
   private int coIdx;
   private String bcSubject1;
   private String bcSubject2;
   private String bcSubject3;
   private String bcImg1;
   private String bcImg2;
   private String bcImg3;
   
   public BlogContentDTO() {
      super();
   }

   public BlogContentDTO(int bcIdx, int coIdx, String bcSubject1, String bcSubject2, String bcSubject3, String bcImg1,
         String bcImg2, String bcImg3) {
      super();
      this.bcIdx = bcIdx;
      this.coIdx = coIdx;
      this.bcSubject1 = bcSubject1;
      this.bcSubject2 = bcSubject2;
      this.bcSubject3 = bcSubject3;
      this.bcImg1 = bcImg1;
      this.bcImg2 = bcImg2;
      this.bcImg3 = bcImg3;
   }

   public int getBcIdx() {
      return bcIdx;
   }

   public void setBcIdx(int bcIdx) {
      this.bcIdx = bcIdx;
   }

   public int getCoIdx() {
      return coIdx;
   }

   public void setCoIdx(int coIdx) {
      this.coIdx = coIdx;
   }

   public String getBcSubject1() {
      return bcSubject1;
   }

   public void setBcSubject1(String bcSubject1) {
      this.bcSubject1 = bcSubject1;
   }

   public String getBcSubject2() {
      return bcSubject2;
   }

   public void setBcSubject2(String bcSubject2) {
      this.bcSubject2 = bcSubject2;
   }

   public String getBcSubject3() {
      return bcSubject3;
   }

   public void setBcSubject3(String bcSubject3) {
      this.bcSubject3 = bcSubject3;
   }

   public String getBcImg1() {
      return bcImg1;
   }

   public void setBcImg1(String bcImg1) {
      this.bcImg1 = bcImg1;
   }

   public String getBcImg2() {
      return bcImg2;
   }

   public void setBcImg2(String bcImg2) {
      this.bcImg2 = bcImg2;
   }

   public String getBcImg3() {
      return bcImg3;
   }

   public void setBcImg3(String bcImg3) {
      this.bcImg3 = bcImg3;
   }
   
   
   
}