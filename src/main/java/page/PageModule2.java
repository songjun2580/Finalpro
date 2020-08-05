package page;

public class PageModule2 {

   public static String pageMake2(String pagename2,int totalCnt2,int listSize2,int pageSize2,int cp2) {
      
      StringBuffer sb=new StringBuffer();
            
      int pageCnt2=totalCnt2/listSize2+1;
      if(totalCnt2%listSize2==0)pageCnt2--;

      int userGroup2=cp2/pageSize2;
      if(cp2%pageSize2==0)userGroup2--;
      
      
      if(userGroup2!=0){
         sb.append("<a href='");
         sb.append(pagename2);
         sb.append("?cp2=");
         int temp=(userGroup2-1)*pageSize2+pageSize2;
         sb.append(temp);
         sb.append("'>&lt;&lt;</a>");
      }
         
      for(int i=userGroup2*pageSize2+1;i<=userGroup2*pageSize2+pageSize2;i++){   
         sb.append("&nbsp;&nbsp;<a href='");
         sb.append(pagename2);
         sb.append("?cp2=");
         sb.append(i);
         sb.append("'>");
         sb.append(i);
         sb.append("</a>&nbsp;&nbsp;");
         if(i==pageCnt2)break;                     
      }

      if(userGroup2!=(pageCnt2/pageSize2-(pageCnt2%pageSize2==0?1:0))){         
         sb.append("<a href='");
         sb.append(pagename2);
         sb.append("?cp2=");
         int temp=(userGroup2+1)*pageSize2+1;
         sb.append(temp);
         sb.append("'>&gt;&gt;</a>");
      }
      return sb.toString();
   
   }
}