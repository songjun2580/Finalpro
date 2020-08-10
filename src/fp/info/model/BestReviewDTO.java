package fp.info.model;

public class BestReviewDTO {
   private String uName;
   private String revImg;
   private String revContent;
   
   public BestReviewDTO() {
      super();
   }

   public BestReviewDTO(String uName, String revImg, String revContent) {
      super();
      this.uName = uName;
      this.revImg = revImg;
      this.revContent = revContent;
   }

   public String getuName() {
      return uName;
   }

   public void setuName(String uName) {
      this.uName = uName;
   }

   public String getRevImg() {
      return revImg;
   }

   public void setRevImg(String revImg) {
      this.revImg = revImg;
   }

   public String getRevContent() {
      return revContent;
   }

   public void setRevContent(String revContent) {
      this.revContent = revContent;
   }
   
   
}