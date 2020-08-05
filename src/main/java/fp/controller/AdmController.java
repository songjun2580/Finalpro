package fp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.estimate.model.MoveEstimateDAO;
import fp.estimate.model.MoveEstimateDTO;
import fp.info.model.AdmInfoDAO;
import fp.info.model.ComInfoDAO;
import fp.info.model.EmpInfoDTO;

@Controller
public class AdmController {

	@Autowired
	private AdmInfoDAO admInfoDao;
	
	@Autowired
	private MoveEstimateDAO moveEstimateDao;
	
	@Autowired
	private ComInfoDAO comInfoDao;
	
	/**관리자 로그인 폼 이동 메서드*/
	@RequestMapping(value="admLogin.do", method = RequestMethod.GET)
	public String admLogin() {
		return "adm/adm_Login";
	}
	/**실적 현황 보기 관련 메서드*/
	@RequestMapping("admStatus.do")
	public String admStatus() {
		return "adm/admStatus";
	}
	
	/**총 실적금액 확인 관련 메서드*/
	@RequestMapping("admProfit.do")
	public String admProfit() {
		return "adm/admProfit";
	}
	/**업체 경고메서드*/
	@RequestMapping("/wrgUp.do")
	public ModelAndView wrgUp(int coIdx) {
		
		int result2=admInfoDao.wrgTime(coIdx);
		int result=admInfoDao.wrgUp(coIdx);
		ModelAndView mav=new ModelAndView();
		String url = "redirect:/admCoManage.do";
		return new ModelAndView(url);
	}
	
	/**업체 삭제메서드*/
	@RequestMapping("/compDelete.do")
	public ModelAndView compDelete(int coIdx) {
		int result=admInfoDao.compDelete(coIdx);
		ModelAndView mav=new ModelAndView();
		String url = "redirect:/admCoManage.do";
		return new ModelAndView(url);
	}
	
	
	/**업체관리 관련 메서드*/
	@RequestMapping("/admCoManage.do")
	public ModelAndView admCoManage(
			@RequestParam(value="cp",defaultValue = "1")int cp,
			@RequestParam(value="cp2",defaultValue = "1")int cp2) {
		
		int totalCnt=admInfoDao.getTotalCntComp();
		int totalCnt2=admInfoDao.TotalCntWrg();
		int listSize=3;
		int pageSize=3;
		int listSize2=3;
		int pageSize2=3;
		
		List admCompList=admInfoDao.admCompList(cp, listSize);
		List admWrgList=admInfoDao.admWrgList(cp2, listSize2);
		String pageStr=page.PageModule.pageMake("admCoManage.do", totalCnt, listSize, pageSize, cp);
		String pageStr2=page.PageModule2.pageMake2("admCoManage.do", totalCnt2, listSize2, pageSize2, cp2);
		ModelAndView mav=new ModelAndView();
		mav.addObject("pageStr", pageStr);
		mav.addObject("pageStr2", pageStr2);
		mav.addObject("admCompList",admCompList);
		mav.addObject("admWrgList",admWrgList);
		mav.setViewName("adm/admCoManage");
		return mav;
	}
	
	/**경고업체 관리 메서드*/
	
	
	/**업체 신청 목록 관련 메서드*/
	@RequestMapping("/admCoAdd.do")
	public ModelAndView admCoAdd(
			@RequestParam(value="cp",defaultValue = "1")int cp) {
		
		int totalCnt=admInfoDao.getTotalCntCompWait();
		int listSize=5;
		int pageSize=5;
		
		List admCompWaitList=admInfoDao.admCompWaitList(cp, listSize);
		String pageStr=page.PageModule.pageMake("admCoAdd.do", totalCnt, listSize, pageSize, cp);
		ModelAndView mav=new ModelAndView();
		mav.addObject("pageStr", pageStr);
		mav.addObject("admCompWaitList",admCompWaitList);
		mav.setViewName("adm/admCoAdd");
		return mav;
	}
	
	/**업체 승인 관련 메서드*/
	@RequestMapping("/admCompAccept.do")
	public ModelAndView admCompAccept(int coIdx) {
		int result=admInfoDao.admCompAccept(coIdx);
		String msg=result>0?"승인이 완료되었습니다":"승인이 실패하였습니다";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("adm/admComMsg");
		return mav;
	}
	
	/**사원관리 관련 메서드*/
	@RequestMapping("admEmpSel.do")
	public String admEmpSelForm() {
		return "adm/admEmpSel";
	}
	
	/**사원수정 관련 메서드*/
	@RequestMapping("admEmpUpd.do")
	public String admEmpUpdForm() {
		return "adm/admEmpUpd";
	}
	
	/**사원등록 페이지이동 메서드*/
	@RequestMapping("admEmpAdd.do")
	public String admEmpAddForm() {
		return "adm/admEmpAdd";
	}
	
	/**사원 등록 메서드*/
	@RequestMapping("/empAdd.do")
	public ModelAndView empAdd(EmpInfoDTO dto) {
		int result=admInfoDao.empAdd(dto);
		ModelAndView mav=new ModelAndView();
		String msg=result>0?"사원등록이 완료되었습니다":"사원등록에 실패하였습니다";
		mav.addObject("msg",msg);
		mav.setViewName("adm/admMsg");
		return mav;
	}
	
	/**이사견적서 총 목록 메서드*/
	@RequestMapping("/admMest.do")
	public ModelAndView admMestForm(
			@RequestParam(value="cp",defaultValue = "1")int cp) {
		
		int totalCnt=moveEstimateDao.getTotalCnt();
		int listSize=5;
		int pageSize=5;
		
		List lists=moveEstimateDao.moveEstList(cp,listSize);
		String pageStr=page.PageModule.pageMake("admMest.do", totalCnt, listSize, pageSize, cp);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pageStr", pageStr);
		mav.addObject("lists", lists);
		mav.setViewName("adm/admMest");
		return mav;
	}
	
	/**이사견적서 승인대기목록 관련 메서드*/
	@RequestMapping("/admMest_wait.do")
	public ModelAndView admMest_waitForm(
			@RequestParam(value="cp",defaultValue = "1")int cp) {
				
		int totalCnt=moveEstimateDao.getTotalCntwait();
		int listSize=5;
		int pageSize=5;
		
		List moveEstWait=moveEstimateDao.moveEstWait(cp,listSize);
		String pageStr=page.PageModule.pageMake("admMest_wait.do", totalCnt, listSize, pageSize, cp);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("pageStr", pageStr);
		mav.addObject("moveEstWait",moveEstWait);
		mav.setViewName("adm/admMest_wait");
		return mav;
	}
	
	/**이사견적서 승인완료목록 관련 메서드*/
	@RequestMapping("/admMest_confirm.do")
	public ModelAndView admMest_confirmForm(
			@RequestParam(value="cp",defaultValue = "1")int cp) {
		int totalCnt=moveEstimateDao.getTotalCntConfirm();
		int listSize=5;
		int pageSize=5;
		
		
		List moveEstConfirm=moveEstimateDao.moveEstConfirm(cp, listSize);
		String pageStr=page.PageModule.pageMake("admMest_confirm.do", totalCnt, listSize, pageSize, cp);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("pageStr", pageStr);
		mav.addObject("moveEstConfirm", moveEstConfirm);
		mav.setViewName("adm/admMest_confirm");
		return mav;
	}
	
	/**이사 견적서 보기*/
	@RequestMapping("/admMoveEstimate")
	public ModelAndView admMoveEstimate(int moIdx) {
		
		MoveEstimateDTO dto=moveEstimateDao.moveEstimate(moIdx);
		ModelAndView mav= new ModelAndView();
		
		if(dto==null) {
			mav.addObject("msg","잘못된 접근입니다");
			mav.setViewName("user/userMsg");
		}else {
			mav.addObject("dto",dto);
			mav.setViewName("adm/admMoveEstimate");
		}
		return mav;
	}
	
	/**이사 견적서 승인하기*/
	@RequestMapping("/admMoveEstimateAccept.do")
	public ModelAndView admMoveEstimateAccept(HttpServletRequest req) {
		String moIdx_s=req.getParameter("moIdx");
		int moIdx=Integer.parseInt(moIdx_s);
		int result=moveEstimateDao.moveEstimateAccept(moIdx);
		String msg=result>0?"승인이 완료되었습니다":"승인이 실패되었습니다";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("adm/admPopupMsg");
		return mav;
	}
	/**이사 매칭 사원보기*/
	@RequestMapping("/admEmpList.do")
	public ModelAndView admEmpList(int moIdx) {
		
		List admEmpList=moveEstimateDao.admEmpList();
		ModelAndView mav=new ModelAndView();
		mav.addObject("moIdx",moIdx);
		mav.addObject("admEmpList",admEmpList);
		mav.setViewName("adm/admEmpList");
		return mav;		
	}
	
	/**이사 견적서 사원 매칭하기*/
	@RequestMapping("/moveEstimateMatch.do")
	public ModelAndView moveEstimateMatch(int empIdx,int moIdx) {
		int result=moveEstimateDao.moveEstimateMatch(empIdx,moIdx);
		String msg=result>0?"매칭이 완료되었습니다":"매칭에 실패하였습니다";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.setViewName("adm/admPopupMsg");
		return mav;
	}
	
	/**청소견적서 신청 관련 메서드*/
	@RequestMapping("admCest.do")
	public String admCestForm() {
		return "adm/admCest";
	}
	
	/**청소견적서 승인대기 관련 메서드*/
	@RequestMapping("admCest_wait.do")
	public String admCest_waitForm() {
		return "adm/admCest_wait";
	}
	
	/**청소견적서 승인완료 관련 메서드*/
	@RequestMapping("admCest_confirm.do")
	public String admCest_confirmForm() {
		return "adm/admCest_confirm";
	}
	
	/**불만사항 목록 관련 메서드*/
	@RequestMapping("admCplList.do")
	public String admCpl() {
		return "adm/admCplList";
	}
	
	/*Ajax 구현*/
	/**청소업체 불만사항 리스트*/
	
	/**이사업체 불만사항 리스트*/
	
	
	/**업체별 불만사항 목록 관련 메서드*/
	@RequestMapping("admCplSubList.do")
	public String admCplSubList() {
		return "adm/admCplSubList";
	}
	
	/**업체별 불만사항 내역 보기 관련 메서드*/
	@RequestMapping("admCplContent.do")
	public String admCplContent() {
		return "adm/admCplContent";
	}
	
	/**자주묻는 질문 관련 메서드*/
	@RequestMapping("admBbsQnA.do")
	public String admBbsQnAForm() {
		return "adm/admBbsQnA";
	}
		
	/**꿀팁관리 관련 메서드*/
	@RequestMapping("admBbsTip.do")
	public String admBbsTipForm() {
		return "adm/admBbsTip";
	}	
	/**로그인 관련 메서드*/
	@RequestMapping(value="admLogin.do", method = RequestMethod.POST)
	public ModelAndView admLogin(
			@RequestParam("adId") String adId,
			@RequestParam("adPwd") String adPwd,
			HttpSession session
			) {
		System.out.println("dfs");
		ModelAndView mav=new ModelAndView();
		String Pwd=admInfoDao.admLogin(adId);
		String msg=null;
		if(Pwd.equals(adPwd)) {
	          session.setAttribute("adId",adId);
	          mav.setViewName("adm/admStatus");
	          return mav;
		}else {
			msg="관리자만 사용할 수 있습니다.";
			mav.addObject("msg",msg);
			mav.setViewName("adm/admMsg");
			return mav;
		}
	}
	
	/**로그아웃 관련 메서드*/
    @RequestMapping("admLogout.do")
    public String logout(
    		HttpSession session
    		) {
    	session.invalidate();
    	return "index";
    } 

}
