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
import fp.location.model.LocationDAO;
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
	
	@Autowired
    private LocationDAO locationDao;
	
    @Autowired
	private ComInfoDAO comInfoDao;
	
	
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
    
    /**이사업체검색 페이지 이동*/
    @RequestMapping("userMoveCoSearch.do")
    public String moveCoSearchView() {
       return "user/userMoveCoSearchMain";
    }
    
    /**이사업체 검색 메서드*/
    @RequestMapping("moSearchEngine.do")
    public ModelAndView moveCoSearchAction(
          @RequestParam(value="mo_search",defaultValue="")String mo_search) {
       List lists=comInfoDao.searchMoveCom(mo_search);
       ModelAndView mav=new ModelAndView();
       mav.addObject("lists", lists);
       mav.setViewName("user/userMoveCoSearch");
       return mav;
    }
    /**json메뉴바 출력 메서드*/
    @RequestMapping("getAddr.do")
   public ModelAndView studentSubmit() {
       
       List seoulList=locationDao.addrList("서울");
       List kyeongkiList=locationDao.addrList("경기");
       List IncheonList=locationDao.addrList("인천"); 
       List BusanList=locationDao.addrList("부산");
       List DaeguList=locationDao.addrList("대구");
       List GwangjuList=locationDao.addrList("광주");
       List DaejeonList=locationDao.addrList("대전");
       List UlsanList=locationDao.addrList("울산");
       List KangwonList=locationDao.addrList("강원");
       List KyeongnamList=locationDao.addrList("경남");
       List KyeongbookList=locationDao.addrList("경북");
       List JeonnamList=locationDao.addrList("전남");
       List JeonbookList=locationDao.addrList("전북");
       List ChungnamList=locationDao.addrList("충남");
       List ChungBookList=locationDao.addrList("충북");
       List JejuList=locationDao.addrList("제주");
       List SejongList=locationDao.addrList("세종");
       //System.out.println(seoulList);
       
      ModelAndView mav=new ModelAndView();
      mav.addObject("seoul", seoulList);
      mav.addObject("kyeongki", kyeongkiList);
      mav.addObject("Incheon", IncheonList);
      mav.addObject("Busan", BusanList);
      mav.addObject("Daegu", DaeguList);
      mav.addObject("Gwangju", GwangjuList);
      mav.addObject("Daejeon", DaejeonList);
      mav.addObject("Ulsan", UlsanList);
      mav.addObject("Kangwon", KangwonList);
      mav.addObject("Kyeongnam", KyeongnamList);
      mav.addObject("Kyeongbook", KyeongbookList);
      mav.addObject("Jeonnam", JeonnamList);
      mav.addObject("Jeonbook", JeonbookList);
      mav.addObject("Chungnam", ChungnamList);
      mav.addObject("ChungBook", ChungBookList);
      mav.addObject("Jeju", JejuList);
      mav.addObject("Sejong", SejongList);
      mav.setViewName("fpJson");
      return mav;
   }
    
    
    /**이사견적서 신청 주소 팝업 이동 관련 메서드*/
    @RequestMapping("/jusoPopup.do")
	public String jusoPopup() {
		return "user/jusoPopup";
	}
	
    /**견적서 제출 관련 메서드*/
	@RequestMapping("/movingEstimateWrite.do")	
	public ModelAndView moveestAdd(
			MoveEstimateDTO dto,
			HttpSession session){
		
		String uIdx_s=session.getAttribute("uIdx").toString();
		if(uIdx_s==null||uIdx_s.equals("")) {
			uIdx_s="0";
		}
		int uIdx=Integer.parseInt(uIdx_s);
		moveEstimateDao.moveestAdd(dto); 
		
		MoveEstimateDTO dto2=moveEstimateDao.moIdxMax(uIdx);
		int motempPrice=0;
		
		//가족 수 비용 계산
		int fmp=0;
		String moFamily=dto2.getMoFamily();
		if(moFamily.equals("1")) {
			fmp=100000;
		}else if(moFamily.equals("2")) {
			fmp=200000;
		}else if(moFamily.equals("3")) {
			fmp=300000;
		}else {
			fmp=400000;
		}
		//층수 비용 계산
		int flp=0;
		int moFloor=dto2.getMoSfloor();
		if(moFloor<=5) {
			flp=30000;
		}else if(moFloor<=10) {
			flp=50000;
		}else if(moFloor<=15) {
			flp=70000;
		}else if(moFloor<=20) {
			flp=90000;
		}
		//이사유형 비용 계산
		int mt=0;
		String moType=dto2.getMoType();
		if(moType.equals("가정이사")) {
			mt=200000;
		}else if(moType.equals("사무실이사")) {
			mt=150000;
		}else if(moType.equals("소형이사")) {
			mt=100000;
		}
		//평수 비용 계산
		int ms=0;
		int moSize=dto2.getMoSize();
		if(moSize==10) {
			ms=200000;
		}else if(moSize==17) {
			ms=220000;
		}else if(moSize==25) {
			ms=240000;
		}else if(moSize==35) {
			ms=260000;
		}else if(moSize==45) {
			ms=280000;
		}else if(moSize==55) {
			ms=300000;
		}else if(moSize==60) {
			ms=350000;
		}
		
		//특수 이삿짐 비용 계산
		int mz=0;
		String str=dto2.getMoZim();
		String moZim[]=str.split(",");
		for(int i=0; i<moZim.length; i++) {
			if(moZim[i].equals("피아노")) {
				mz+=50000;
			}else if(moZim[i].equals("붙박이장")) {
				mz+=70000;
			}else if(moZim[i].equals("돌침대")) {
				mz+=90000;
			}else if(moZim[i].equals("에어컨")) {
				mz+=110000;
			}else if(moZim[i].equals("벽걸이TV")) {
				mz+=130000;
			}
		}
		System.out.println(mz);
		motempPrice=fmp+flp+mt+ms+mz;
		
		int result=moveEstimateDao.updateTempPrice(motempPrice);
		
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
		System.out.println(usId);
		System.out.println(uPwd);
		System.out.println(idx);
		System.out.println(uIdx);
		String msg="";
		if(uIdx==idx) {
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
	/**이사 견적서 조회 관련 메서드*/
	@RequestMapping(value="estimatePopup.do", method = RequestMethod.GET)
	public ModelAndView estimatePopup(
			@RequestParam("moIdx") int moIdx
			) {
		
		MoveEstimateDTO dto=userInfoDao.moveEstView(moIdx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("dto",dto);
		mav.setViewName("user/estimatePopup");
		return mav;
	}
 
}