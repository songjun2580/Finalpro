package fp.estimate.model;

import java.sql.*;

public class MoveEstimateDTO {
   
   private int mbIdx;
   private int mbMoney;
   private int moIdx;
   private int uIdx;
   private String moDate;
   private String moName;
   private String moTel;
   private String moConsult;
   private String moFamily;
   private String szipNo;
   private String moSaddr;
   private int moSfloor;
   private String moZim;
   private String moType;
   private int moSize;
   private String ezipNo;
   private String  moEaddr;
   private int moEfloor;
   private String moService1;
   private String moService2;
   private String moStatus;
   private int empIdx;
   private int coIdx;
   private int motempPrice;
   private int moconfirmPrice;
   private String empName;
   private int final2;
   private int realfinal;
   
   public MoveEstimateDTO() {
   // TODO Auto-generated constructor stub
   }


public MoveEstimateDTO(int mbIdx, int mbMoney, int moIdx, int uIdx, String moDate, String moName, String moTel,
      String moConsult, String moFamily, String szipNo, String moSaddr, int moSfloor, String moZim, String moType,
      int moSize, String ezipNo, String moEaddr, int moEfloor, String moService1, String moService2, String moStatus,
      int empIdx, int coIdx, int motempPrice, int moconfirmPrice, String empName, int final2,int realfinal) {
   super();
   this.mbIdx = mbIdx;
   this.mbMoney = mbMoney;
   this.moIdx = moIdx;
   this.uIdx = uIdx;
   this.moDate = moDate;
   this.moName = moName;
   this.moTel = moTel;
   this.moConsult = moConsult;
   this.moFamily = moFamily;
   this.szipNo = szipNo;
   this.moSaddr = moSaddr;
   this.moSfloor = moSfloor;
   this.moZim = moZim;
   this.moType = moType;
   this.moSize = moSize;
   this.ezipNo = ezipNo;
   this.moEaddr = moEaddr;
   this.moEfloor = moEfloor;
   this.moService1 = moService1;
   this.moService2 = moService2;
   this.moStatus = moStatus;
   this.empIdx = empIdx;
   this.coIdx = coIdx;
   this.motempPrice = motempPrice;
   this.moconfirmPrice = moconfirmPrice;
   this.empName = empName;
   this.final2 = final2;
   this.realfinal=realfinal;
}


public int getMbIdx() {
   return mbIdx;
}


public void setMbIdx(int mbIdx) {
   this.mbIdx = mbIdx;
}


public int getMbMoney() {
   return mbMoney;
}


public void setMbMoney(int mbMoney) {
   this.mbMoney = mbMoney;
}


public int getMoIdx() {
   return moIdx;
}


public void setMoIdx(int moIdx) {
   this.moIdx = moIdx;
}


public int getuIdx() {
   return uIdx;
}


public void setuIdx(int uIdx) {
   this.uIdx = uIdx;
}


public String getMoDate() {
   return moDate;
}


public void setMoDate(String moDate) {
   this.moDate = moDate;
}


public String getMoName() {
   return moName;
}


public void setMoName(String moName) {
   this.moName = moName;
}


public String getMoTel() {
   return moTel;
}


public void setMoTel(String moTel) {
   this.moTel = moTel;
}


public String getMoConsult() {
   return moConsult;
}


public void setMoConsult(String moConsult) {
   this.moConsult = moConsult;
}


public String getMoFamily() {
   return moFamily;
}


public void setMoFamily(String moFamily) {
   this.moFamily = moFamily;
}


public String getSzipNo() {
   return szipNo;
}


public void setSzipNo(String szipNo) {
   this.szipNo = szipNo;
}


public String getMoSaddr() {
   return moSaddr;
}


public void setMoSaddr(String moSaddr) {
   this.moSaddr = moSaddr;
}


public int getMoSfloor() {
   return moSfloor;
}


public void setMoSfloor(int moSfloor) {
   this.moSfloor = moSfloor;
}


public String getMoZim() {
   return moZim;
}


public void setMoZim(String moZim) {
   this.moZim = moZim;
}


public String getMoType() {
   return moType;
}


public void setMoType(String moType) {
   this.moType = moType;
}


public int getMoSize() {
   return moSize;
}


public void setMoSize(int moSize) {
   this.moSize = moSize;
}


public String getEzipNo() {
   return ezipNo;
}


public void setEzipNo(String ezipNo) {
   this.ezipNo = ezipNo;
}


public String getMoEaddr() {
   return moEaddr;
}


public void setMoEaddr(String moEaddr) {
   this.moEaddr = moEaddr;
}


public int getMoEfloor() {
   return moEfloor;
}


public void setMoEfloor(int moEfloor) {
   this.moEfloor = moEfloor;
}


public String getMoService1() {
   return moService1;
}


public void setMoService1(String moService1) {
   this.moService1 = moService1;
}


public String getMoService2() {
   return moService2;
}


public void setMoService2(String moService2) {
   this.moService2 = moService2;
}


public String getMoStatus() {
   return moStatus;
}


public void setMoStatus(String moStatus) {
   this.moStatus = moStatus;
}


public int getEmpIdx() {
   return empIdx;
}


public void setEmpIdx(int empIdx) {
   this.empIdx = empIdx;
}


public int getCoIdx() {
   return coIdx;
}


public void setCoIdx(int coIdx) {
   this.coIdx = coIdx;
}


public int getMotempPrice() {
   return motempPrice;
}


public void setMotempPrice(int motempPrice) {
   this.motempPrice = motempPrice;
}


public int getMoconfirmPrice() {
   return moconfirmPrice;
}


public void setMoconfirmPrice(int moconfirmPrice) {
   this.moconfirmPrice = moconfirmPrice;
}


public String getEmpName() {
   return empName;
}


public void setEmpName(String empName) {
   this.empName = empName;
}


public int getFinal2() {
   return final2;
}


public void setFinal2(int final2) {
   this.final2 = final2;
}


public int getRealfinal() {
   return realfinal;
}


public void setRealfinal(int realfinal) {
   this.realfinal = realfinal;
}



   
  }