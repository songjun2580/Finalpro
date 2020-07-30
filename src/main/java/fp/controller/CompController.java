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
	
	/**��üȸ������ ���� �޼���*/
	@RequestMapping("/compSign.do")
	public String compSign() {
		return "com/compSign";
	}
	/**��ü ���� ���� ���� �޼���*/
	@RequestMapping("/compMypage.do")
	public String compMypage() {
		return "com/compMypage";
	}
	/**��ü ���� ��ȸ*/
	@RequestMapping("/compRecord.do")
	public String compRecord() {
		return "com/compRecord";
	}
	/**��ü �� ���� �ݾ� Ȯ��*/
	@RequestMapping("/compTotalPrice.do")
	public String compTotalPrice() {
		return "com/compTotalPrice";
	}
	/**��ü ��α�*/
	@RequestMapping("/compBlog.do")
	public String compBlog() {
		return "com/compBlog";
	}
	/**�̻� ������ ��ȸ*/
	@RequestMapping("/compBid.do")
	public String compBid() {
		return "com/compBid";
	}
	
	/**�α��� ���� �޼���*/
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
			msg="�̸��� �Ǵ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.";
			mav.addObject("msg",msg);
			mav.setViewName("com/comMsg");
			return mav;
		}
		
	}
	
	/**�α׾ƿ� ���� �޼���*/
    @RequestMapping("comlogout.do")
    public String logout(
    		HttpSession session
    		) {
    	session.invalidate();
    	return "index";
    } 
}