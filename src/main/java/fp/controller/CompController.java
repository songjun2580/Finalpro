package fp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.info.model.*;

@Controller
public class CompController {
	
	@Autowired
	private ComInfoDAO comInfoDao;
	
	/**업체회원가입 관련 메서드*/
	@RequestMapping("/compSign.do")
	public String compSign() {
		return "com/compSign";
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
	public String compBid() {
		return "com/compBid";
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