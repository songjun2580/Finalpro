package fp.bbs.model;

import java.sql.*;

public class ReviewBbsDTO {

   private int revIdx;
   private int moIdx;
   private String uName;
   private String revDate;
   private String revSubject;
   private String revContent;
   private String revImg;
   private int revRate;
   
   public ReviewBbsDTO() {
      // TODO Auto-generated constructor stub
   }

   public ReviewBbsDTO(int revIdx, int moIdx, String uName, String revDate, String revSubject, String revContent,
         String revImg, int revRate) {
      super();
      this.revIdx = revIdx;
      this.moIdx = moIdx;
      this.uName = uName;
      this.revDate = revDate;
      this.revSubject = revSubject;
      this.revContent = revContent;
      this.revImg = revImg;
      this.revRate = revRate;
   }

   public int getRevIdx() {
      return revIdx;
   }

   public void setRevIdx(int revIdx) {
      this.revIdx = revIdx;
   }

   public int getMoIdx() {
      return moIdx;
   }

   public void setMoIdx(int moIdx) {
      this.moIdx = moIdx;
   }

   public String getuName() {
      return uName;
   }

   public void setuName(String uName) {
      this.uName = uName;
   }

   public String getRevDate() {
      return revDate;
   }

   public void setRevDate(String revDate) {
      this.revDate = revDate;
   }

   public String getRevSubject() {
      return revSubject;
   }

   public void setRevSubject(String revSubject) {
      this.revSubject = revSubject;
   }

   public String getRevContent() {
      return revContent;
   }

   public void setRevContent(String revContent) {
      this.revContent = revContent;
   }

   public String getRevImg() {
      return revImg;
   }

   public void setRevImg(String revImg) {
      this.revImg = revImg;
   }

   public int getRevRate() {
      return revRate;
   }

   public void setRevRate(int revRate) {
      this.revRate = revRate;
   }

   
   
}