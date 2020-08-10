package fp.info.model;

import java.sql.*;

public class ReviewDTO {
   private int coIdx;
   private String uName;
   private String revSubject;
   private String revContent;
   private String revImg;
   private int revRate;
   private Date revDate;
   private String moSaddr;
   private String moEaddr;
   
   public ReviewDTO() {
      super();
   }

   public ReviewDTO(int coIdx, String uName, String revSubject, String revContent, String revImg, int revRate,
         Date revDate, String moSaddr, String moEaddr) {
      super();
      this.coIdx = coIdx;
      this.uName = uName;
      this.revSubject = revSubject;
      this.revContent = revContent;
      this.revImg = revImg;
      this.revRate = revRate;
      this.revDate = revDate;
      this.moSaddr = moSaddr;
      this.moEaddr = moEaddr;
   }

   public int getCoIdx() {
      return coIdx;
   }

   public void setCoIdx(int coIdx) {
      this.coIdx = coIdx;
   }

   public String getuName() {
      return uName;
   }

   public void setuName(String uName) {
      this.uName = uName;
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

   public Date getRevDate() {
      return revDate;
   }

   public void setRevDate(Date revDate) {
      this.revDate = revDate;
   }

   public String getMoSaddr() {
      return moSaddr;
   }

   public void setMoSaddr(String moSaddr) {
      this.moSaddr = moSaddr;
   }

   public String getMoEaddr() {
      return moEaddr;
   }

   public void setMoEaddr(String moEaddr) {
      this.moEaddr = moEaddr;
   }
   
}