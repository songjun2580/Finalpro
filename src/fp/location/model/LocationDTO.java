package fp.location.model;

public class LocationDTO {
   private String loc1;
   private String loc2;
   
   
   public LocationDTO() {
      super();
   }


   public LocationDTO(String loc1, String loc2) {
      super();
      this.loc1 = loc1;
      this.loc2 = loc2;
   }


   public String getLoc1() {
      return loc1;
   }


   public void setLoc1(String loc1) {
      this.loc1 = loc1;
   }


   public String getLoc2() {
      return loc2;
   }


   public void setLoc2(String loc2) {
      this.loc2 = loc2;
   }
   
   
   
}