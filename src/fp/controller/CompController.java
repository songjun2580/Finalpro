package fp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import fp.info.model.*;
import fp.util.UploadFileUtils;
import fp.company.model.*;

@Controller
public class CompController {
	
	@Autowired
	private ComInfoDAO comInfoDao;
	
	@Autowired
	private MoveBidDAO movebidDao;
	
    @Autowired
	BlogContentDAOImple blogContentDao;
	   
	/**업체회원가입 관련 메서드*/
	@RequestMapping("/compSign.do")
	public String compSign() {
		return "com/compSign";
	}
	
	@RequestMapping("/comSignSubmit.do")
	   public ModelAndView compSignSubmit(ComInfoDTO dto) {
	      ModelAndView mav=new ModelAndView();
	      int result=comInfoDao.coAdd(dto);
	      int coIdx=blogContentDao.getCoIdx();
	      int insert_result=blogContentDao.defaultBlogContent(coIdx);
	      System.out.println("업체블로그 테이블 null값으로 초기화:"+insert_result);
	      mav.addObject("msg", "회원가입 하셨습니다. 승인을 기다려주세요");
	      mav.addObject("gopage","index.do");
	      mav.setViewName("com/comMsg");
	      
	      return mav;
	   }
	
	/**업체 정보 수정 관련 메서드*/
	@RequestMapping("/compMypage.do")
	public String compMypage() {
		return "com/compMypage";
	}
	/**업체 실적 조회*/
	@RequestMapping("/compRecord.do")
	public String compRecord() {
		return "com/compRecord";
	}
	/**업체 총 실적 금액 확인*/
	@RequestMapping("/compTotalPrice.do")
	public String compTotalPrice() {
		return "com/compTotalPrice";
	}
	
    /**업체 블로그*/
    @RequestMapping("/compBlog.do")
	public ModelAndView compBlog(
	   @RequestParam("coIdx")int coIdx) {
	   ModelAndView mav=new ModelAndView();
	   BlogContentDTO dto=blogContentDao.getBlogContent(coIdx);
       ComInfoDTO com_dto=blogContentDao.getCoInfo(coIdx);//업체정보 가져오기 (블로그 출력용)
	      
       List review_lists=blogContentDao.getCompReview(coIdx);//리뷰 관련 정보 가져오기
	   BestReviewDTO best_review=blogContentDao.getBestReview(coIdx);//베스트 리뷰가져오기(평점 가장 높고 & 가장 최근 리뷰)
       double avgRate=blogContentDao.getAvgRate(coIdx);//업체 리뷰 평점 평균 가져오기
       mav.addObject("com_dto", com_dto);
       mav.addObject("dto", dto);
       mav.addObject("review_lists", review_lists);
       mav.addObject("best_review", best_review);   
       mav.addObject("avgRate", avgRate);
       mav.setViewName("com/compBlog");
       return mav;
	      
	   }
    
    /**업체 블로그 이미지 업데이트*/
    @RequestMapping("coBlogImgUpdate.do")
    public ModelAndView coBlogImgUpdate(
          BlogContentDTO dto,
          @RequestParam(value = "file1" ,defaultValue = "no" ) MultipartFile file1,
          @RequestParam(value = "file2" ,defaultValue = "no" ) MultipartFile file2,
          @RequestParam(value = "file3" ,defaultValue = "no" ) MultipartFile file3,
          HttpServletRequest req
          ) {
       
       UploadFileUtils upload=new UploadFileUtils();
       String dbName1=upload.uploadFile(file1, req);
       String dbName2=upload.uploadFile(file2, req);
       String dbName3=upload.uploadFile(file3, req);
       if(file1.isEmpty()) {
          System.out.println("file1이 없습니다");
          //System.out.println("============"+dbName1);
       }else {
          dto.setBcImg1(dbName1);
          
       }
       if(file2.isEmpty()) {
          System.out.println("file2이 없습니다");
       }else {
          dto.setBcImg2(dbName2);
       }
       if(file3.isEmpty()) {
          System.out.println("file3이 없습니다");
       }else {
          dto.setBcImg3(dbName3);
       }
       
       int result=blogContentDao.updateBlog(dto);
       String msg=result>0?"업데이트 성공":"업데이트 실패";
       
       ModelAndView mav=new ModelAndView();
       mav.addObject("msg", msg);
       mav.addObject("coIdx", dto.getCoIdx());
       mav.setViewName("redirect:compBlog.do");
       
       return mav;
    }
	   
	/**이사 견적서 조회*/
	@RequestMapping("/compBid.do")
	public ModelAndView compBid(
			HttpSession session
			) {
		String coIdx_s=session.getAttribute("coIdx").toString();
		int coIdx=Integer.parseInt(coIdx_s);
		
		MoveTotalDTO dto=new MoveTotalDTO();
		dto.setCoIdx(coIdx);
		List lists=comInfoDao.allEstConfirm(coIdx);
		List lists2=comInfoDao.allEstConfirm2(coIdx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",lists);
		mav.addObject("list2",lists2);
		mav.setViewName("com/compBid");
		return mav;
	}
	/**입찰 팝업 관련 메서드*/
	@RequestMapping("bidpop.do")
	public ModelAndView bidpop(
			@RequestParam("moIdx") int moIdx
			) {
		ModelAndView mav=new ModelAndView();
		mav.addObject("moIdx",moIdx);
		mav.setViewName("com/compBidPop");
		return mav;
	}
	/**입찰 삽입 관련 메서드*/
	@RequestMapping("bidInsert.do")
	public ModelAndView bidInsert(
			@RequestParam("moIdx") int moIdx,
			@RequestParam("mbMoney") int mbMoney,
			HttpSession session
			) {
		
		String coIdx_s=session.getAttribute("coIdx").toString();
		int coIdx=Integer.parseInt(coIdx_s);
		
		MoveBidDTO dto2=new MoveBidDTO();
		dto2.setMoIdx(moIdx);
		dto2.setMbMoney(mbMoney);
		dto2.setCoIdx(coIdx);
		
		int count=movebidDao.bidAdd(dto2);
		String msg=count>0?"입찰가격 등록되었습니다.":"입찰가격 등록하지 못하였습니다.";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("gopage","compBid.do");
		mav.setViewName("com/comPopupMsg");
		return mav;
	}
	/**확정 이사견적서 조회 관련 메서드*/
	@RequestMapping("comContract.do")
	public ModelAndView comConfrim(
	    	HttpSession session
			) {
		String coIdx_s=session.getAttribute("coIdx").toString();
		int coIdx=Integer.parseInt(coIdx_s);
		List list=comInfoDao.confirmMoveest(coIdx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("com/comContract");
		return mav;
	}
	/**로그인 관련 메서드*/
	   @RequestMapping("comLogin.do")
	   public ModelAndView comLogin(
	         @RequestParam("email_1") String email_1,
	         @RequestParam("email_2") String email_2,
	         @RequestParam("coPwd") String coPwd,
	         HttpSession session
	         ) {
	      ModelAndView mav=new ModelAndView();
	      String coEmail= email_1+"@"+email_2;
	      String Pwd=comInfoDao.comLogin(coEmail);
	      String msg=null;
	      if(Pwd.equals(coPwd)) {
	         ComInfoDTO dto=comInfoDao.comInfoForSession(coEmail);
	         if(dto.getCoVerify()==0) {
	            msg="아직 승인되지 않았습니다.";
	            mav.addObject("msg", msg);
	            mav.addObject("gopage","index.do" );
	            mav.setViewName("com/comMsg");
	            return mav;
	         }
	             session.setAttribute("coIdx", dto.getCoIdx());
	             session.setAttribute("coEmail", coEmail);
	             session.setAttribute("coName", dto.getCoName());
	             
	             mav.setViewName("index");
	             return mav;
	      }else {
	         msg="이메일 또는 비밀번호가 일치하지 않습니다.";
	         mav.addObject("msg",msg);
	         mav.addObject("gopage","index.do");
	         mav.setViewName("com/comMsg");
	         return mav;
	      }
	      
	   }
	
	/**로그아웃 관련 메서드*/
    @RequestMapping("comlogout.do")
    public String logout(
    		HttpSession session
    		) {
    	session.invalidate();
    	return "index";
    } 
    /**이메일 중복체크 관련 메서드*/
	@RequestMapping("/emailCheck.do")
	public ModelAndView emailCheck(
			@RequestParam("uEmail1") String email_1,
			@RequestParam("uEmail2") String email_2) {
		ModelAndView mav = new ModelAndView();
		String coEmail= email_1+"@"+email_2;
		String Pwd=comInfoDao.comLogin(coEmail);
		boolean Emailresult=true;
		if(Pwd.equals("null")) {
			Emailresult=true;
		}else {
			Emailresult=false;
		}
		mav.addObject("Emailresult", Emailresult);
		mav.setViewName("fpJson");
		return mav;
	}
}