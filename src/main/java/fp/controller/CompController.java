package fp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.info.model.*;
import fp.company.model.*;

@Controller
public class CompController {
	
	@Autowired
	private ComInfoDAO comInfoDao;
	
	@Autowired
	private MoveBidDAO movebidDao;
	
	
	/**업체회원가입 관련 메서드*/
	@RequestMapping("/compSign.do")
	public String compSign() {
		return "com/compSign";
	}
	
	@RequestMapping("/comSignSubmit.do")
	public ModelAndView compSignSubmit(ComInfoDTO dto) {
		ModelAndView mav=new ModelAndView();
		int result=comInfoDao.coAdd(dto);
		mav.addObject("msg", "회원가입 하셨습니다. 승인을 기다려주세요");
		mav.addObject("gopage","index.do");
		mav.setViewName("com/comMsg");;
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
	public String compBlog() {
		return "com/compBlog";
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
	@RequestMapping("compConfirm.do")
	public String comConfrim() {
		return "com/compConfirm";
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
}