package fp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import fp.info.model.*;
import fp.util.UploadFileUtils;
import fp.bbs.model.*;
import fp.estimate.model.*;


@Controller
public class UserController {

	@Autowired
	private UserInfoDAO userInfoDao;
	
	@Autowired
	private ReviewBbsDAO reviewDao;
	
	@Autowired
	private MoveEstimateDAO moveEstimateDao;
	
	private String key;

	
	@RequestMapping("/userJoin.do")//회원가입 페이지 이동 관련 메서드
	public String userJoin() {
		
		return "user/userJoin";
	}
	
	@RequestMapping("/userCleanChoice.do")//청소업체선택 페이지 이동 관련 메서드
	public String userCleanChoice() {
		
		return "user/userCleanChoice";
	}
	
	@RequestMapping("/userCleanEstimateWrite.do")//청소견적서 작성 페이지 이동 관련 메서드
	public String userCleanEstimateWrite() {
		
		return "user/userCleanEstimateWrite";
	}
	
	@RequestMapping("/userMoveEstimateWrite.do")//이사견적서 작성 페이지 이동 관련 메서드
	public String userMoveEstimateWrite() {
		
		return "user/userMoveEstimateWrite";
	}

	@RequestMapping("/userCleanList.do")//청소내역 조회 페이지 이동 관련 메서드
	public String userCleanList() {
		
		return "user/userCleanList";
	}
	
	@RequestMapping("/userCompWrite.do")//불편사항 신고 페이지 이동 관련 메서드
	public String userCompWrite() {
		
		return "user/userCompWrite";
	}
	
	@RequestMapping("/userEmailCheck.do")//메일인증 페이지 이동 관련 메서드
	public ModelAndView userEmailCheck() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/userEmailCheck");
		return mav;
	}
	
	@RequestMapping("/userEstimateView.do")//견적서 조회 페이지 이동 관련 메서드
	public String userEstimateView() {
		
		return "user/userEstimateView";
	}
	
	@RequestMapping(value="/userInfoCheck.do", method = RequestMethod.GET)//회원정보 확인 페이지 이동 관련 메서드
	public String userInfoCheck() {
		
		return "user/userInfoCheck";
		
	}
	
	@RequestMapping("/userInfoModi.do")//회원정보 수정 페이지 이동 관련 메서드
	public ModelAndView userInfoModi(
			HttpSession session
			) {
		String uIdx_s=session.getAttribute("uIdx").toString();
		int uIdx=Integer.parseInt(uIdx_s);
		List list=userInfoDao.userInfo(uIdx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",list);
		mav.setViewName("user/userInfoModi");
		return mav;
	}

	
	@RequestMapping("/userMoveList.do")//이사내역 조회 페이지 이동 관련 메서드
	public String userMoveList(
			HttpSession session
			) {
		String uIdx_s=session.getAttribute("uIdx").toString();
		if(uIdx_s==null||uIdx_s.equals("")) {
			uIdx_s="0";
		}
		int uIdx=Integer.parseInt(uIdx_s);
		List lists=userInfoDao.moveEst(uIdx);
		session.setAttribute("list", lists);
		return "user/userMoveList";
	}
	
	/**리뷰작성 페이지 이동 관련 메서드*/
	@RequestMapping("/userReviewWrite.do")//리뷰작성 페이지 이동 관련 메서드
	   public String userReviewWrite() {
	      
	      return "user/userReviewWrite";
	   }
	
	/**리뷰작성 관련 메서드*/
	@RequestMapping(value="/userReviewWriteSubmit.do")
	   public ModelAndView userReviewWriteSubmit(
			   @RequestParam(value = "revImgs" ,required = false ) List<MultipartFile> file , 
			   ReviewBbsDTO dto,
			   HttpServletRequest req) {
		System.out.println("리뷰작성 메서드 들어옴!");
		
		 
	      UploadFileUtils upLoad = new UploadFileUtils();
	      String originName="";
	      String dbName="";
	      
	      for(int i=0;i< file.size();i++) {
	       originName +=file.get(i).getOriginalFilename();
	       dbName += upLoad.uploadFile(file.get(i), req);
	       if(i != file.size()-1) {
	          originName +=",";
	          dbName+=",";
	       }
	       
	      }
	      System.out.println(dbName);
	      System.out.println(originName);

	      dto.setRevImg(dbName);
	      int count=reviewDao.reviewWrite(dto);
	      ModelAndView mav=new ModelAndView();
	      if(count>0) {
	    	  mav.addObject("msg","성공");
	      }else {
	    	  mav.addObject("msg","실패");
	      }
	      mav.addObject("gopage", "userMoveList.do");
	      mav.setViewName("user/userMsg");
	      return mav;
	   }
	
	@RequestMapping("/userTermsOfService.do")//이용약관 동의 페이지 이동 관련 메서드
	public String userTermsOfService() {
		
		return "user/userTermsOfService";
	}
	
	/**회원가입 관련 메소드*/
	@RequestMapping(value="/userAdd.do", method = RequestMethod.POST)
	public ModelAndView UserAdd(UserInfoDTO dto, HttpServletRequest request) {
		int result=userInfoDao.userAdd(dto);
		ModelAndView mav=new ModelAndView();
		String msg=result>0?"회원가입 성공":"회원가입 실패";
		mav.addObject("msg",msg);
		mav.addObject("gopage","index.do");
		mav.setViewName("user/userMsg");
		
		return mav;
	}
	  /**이메일 인증번호 전송 관련 메소드 */
	   @RequestMapping(value="emailAuth.do",method = RequestMethod.GET)
	   public ModelAndView emailAuth(
		@RequestParam("uEmail1") String uEmail1,
		@RequestParam("uEmail2") String uEmail2,
		UserInfoDTO dto,
		HttpServletRequest request,
		HttpSession session
		 ) throws Exception {
		   String email=uEmail1+"@"+uEmail2;
		   key=userInfoDao.mailsendkey(email, request);
		   session.setAttribute("email", email);
		   ModelAndView mav=new ModelAndView();
		   mav.addObject("msg","인증번호를 보냈습니다.");
		   mav.setViewName("user/userEmailMsg");
		   return mav;
	   }
	   
	   /**이메일 인증번호 일치 관련 메서드*/
	   @RequestMapping(value="emailNumAuth.do",method = RequestMethod.GET)
	   public ModelAndView emailNumAuth(
			   @RequestParam("userkey") String userkey
			   ) {
		   String msg="";
		   ModelAndView mav=new ModelAndView();
		   
		   if(userkey.equals(key)) {
			   msg="<span style='color:blue'>인증번호가 일치합니다.</span>";
		   }else {
			   msg="<span style='color:red'>인증번호가 일치하지 않습니다.</span>";
		   }
		   mav.addObject("msg",msg);
		   
		   mav.setViewName("user/userEmailMsg");
		   return mav;
	   }
	
	/**아이디 중복체크 관련 메서드*/
	@RequestMapping("/idCheck.do")
	public ModelAndView idCheck(
			@RequestParam(value="usId")String usId) {
		boolean result=userInfoDao.idCheck(usId);
		String msg=result==true?"중복된 아이디 입니다":"사용가능한 아이디 입니다.";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("user/idCheck");
		return mav;
	}
	
	/**로그인 관련 메서드*/
    @RequestMapping("/userLogin.do")
    public ModelAndView userLogin(
          @RequestParam(value="usId", required=false, defaultValue="") String usId,
          @RequestParam(value="uPwd", required=false, defaultValue="") String uPwd,
          HttpSession session
          ) {
       ModelAndView mav= new ModelAndView();
       String pwd=userInfoDao.userLogin(usId);
       String msg=null;
       if(pwd.equals(uPwd)) {
          UserInfoDTO dto=userInfoDao.userInfoForSession(usId);
          session.setAttribute("uIdx", dto.getuIdx());
          session.setAttribute("uName", dto.getuName());
          mav.setViewName("index");
          return mav;
       }else {
          msg="아이디 또는 비밀번호가 일치하지 않습니다~";
          mav.addObject("msg",msg);
          mav.setViewName("user/userMsg");
          mav.addObject("gopage","index.do");
          return mav;
       }

    }
    
    /**로그아웃 관련 메서드*/
    @RequestMapping("userlogout.do")
    public String logout(
    		HttpSession session
    		) {
    	session.invalidate();
    	return "index";
    } 
    
    /**이사견적서 신청 주소 팝업 이동 관련 메서드*/
    @RequestMapping("/jusoPopup.do")
	public String jusoPopup() {
		return "user/jusoPopup";
	}
	
    /**견적서 제출 관련 메서드*/
	@RequestMapping("/movingEstimateWrite.do")	
	public ModelAndView moveestAdd(MoveEstimateDTO dto){
		int result=moveEstimateDao.moveestAdd(dto);
		String msg=result>0?"견적서 제출이 완료되었습니다":"견적서 제출에 실패하였습니다";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("gopage","index.do");
		mav.setViewName("user/userMsg");
		return mav;
	}
	
	/**회원정보 확인 관련 메서드*/
	@RequestMapping("infoCheck.do")
	public ModelAndView infoCheck(
			@RequestParam("usId") String usId,
			@RequestParam("uPwd") String uPwd,
			HttpSession session
			) {
		ModelAndView mav=new ModelAndView();
		int idx=userInfoDao.infoCheck(usId, uPwd);
		
		String uIdx_s=session.getAttribute("uIdx").toString();
		if(uIdx_s==null||uIdx_s.equals("")) {
			uIdx_s="0";
		}
		int uIdx=Integer.parseInt(uIdx_s);
		
		String msg="";
		if(idx==uIdx) {
			msg="회원정보 인증성공!";
			mav.addObject("msg",msg);
			mav.addObject("gopage","userInfoModi.do");
			mav.setViewName("user/userMsg");
			return mav;
		}else {
			msg="회원정보 틀리셨습니다.";
			mav.addObject("msg",msg);
			mav.addObject("gopage","userInfoCheck.do");
			mav.setViewName("user/userMsg");
			return mav;
		}

	}
	
	/**회원정보수정 비밀번호 확인 관련 메서드*/
	@RequestMapping("infoModi.do")
	public ModelAndView infoModi(
			@RequestParam("uPwd") String uPwd,
			HttpSession session
			) {
		String uIdx_s=session.getAttribute("uIdx").toString();
		int uIdx=Integer.parseInt(uIdx_s);
		
		String pwd=userInfoDao.pwdCheck(uIdx);
		String msg="";
		if(pwd.equals(uPwd)) {
			msg="1";
		}else {
			msg="2";
		}
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("user/userAjax");
		return mav;
	}
	
	/**회원정보수정 업데이트 관련 메서드*/
	@RequestMapping("infoUpdate.do")
	public ModelAndView infoUpdate(
			UserInfoDTO dto,
			HttpSession session
			) {
		ModelAndView mav=new ModelAndView();
		
		String uIdx_s=session.getAttribute("uIdx").toString();
		int uIdx=Integer.parseInt(uIdx_s);
		
		int count=userInfoDao.userInfoSave(dto, uIdx);
		if(count>0) {
			mav.addObject("msg","회원정보수정 완료");
			mav.addObject("gopage","userInfoModi.do");
			mav.setViewName("user/userMsg");
		}else {
			mav.addObject("msg","회원정보수정 실패!");
			mav.addObject("gopage","userInfoModi.do");
			mav.setViewName("user/userMsg");
		}
		return mav;
	}
 
}