package fp.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.info.model.*;

@Controller
public class AdmController {

	@Autowired
	private AdmInfoDAO admInfoDao;

	/**������ �α��� �� �̵� �޼���*/
	@RequestMapping(value="admLogin.do", method = RequestMethod.GET)
	public String admLogin() {
		return "adm/adm_Login";
	}
	
	/**���� ��Ȳ ���� ���� �޼���*/
	@RequestMapping("admStatus.do")
	public String admStatus() {
		return "adm/admStatus";
	}
	
	/**�� �����ݾ� Ȯ�� ���� �޼���*/
	@RequestMapping("admProfit.do")
	public String admProfit() {
		return "adm/admProfit";
	}
	
	/**��ü���� ���� �޼���*/
	@RequestMapping("admCoManage.do")
	public String admCoManage() {
		return "adm/admCoManage";
	}
	
	/**��ü ��û ��� ���� �޼���*/
	@RequestMapping("admCoAdd.do")
	public String admCoAdd() {
		return "adm/admCoAdd";
	}
	
	/**������� ���� �޼���*/
	@RequestMapping("admEmpSel.do")
	public String admEmpSelForm() {
		return "adm/admEmpSel";
	}
	
	/**������� ���� �޼���*/
	@RequestMapping("admEmpUpd.do")
	public String admEmpUpdForm() {
		return "adm/admEmpUpd";
	}
	
	/**������ ���� �޼���*/
	@RequestMapping("admEmpAdd.do")
	public String admEmpAddForm() {
		return "adm/admEmpAdd";
	}
	
	/**�̻������ ��û ���� �޼���*/
	@RequestMapping("admMest.do")
	public String admMestForm() {
		return "adm/admMest";
	}
	
	/**�̻������ ���δ�� ���� �޼���*/
	@RequestMapping("admMest_wait.do")
	public String admMest_waitForm() {
		return "adm/admMest_wait";
	}
	
	/**�̻������ ���οϷ� ���� �޼���*/
	@RequestMapping("admMest_confirm.do")
	public String admMest_confirmForm() {
		return "adm/admMest_confirm";
	}
	
	/**û�Ұ����� ��û ���� �޼���*/
	@RequestMapping("admCest.do")
	public String admCestForm() {
		return "adm/admCest";
	}
	
	/**û�Ұ����� ���δ�� ���� �޼���*/
	@RequestMapping("admCest_wait.do")
	public String admCest_waitForm() {
		return "adm/admCest_wait";
	}
	
	/**û�Ұ����� ���οϷ� ���� �޼���*/
	@RequestMapping("admCest_confirm.do")
	public String admCest_confirmForm() {
		return "adm/admCest_confirm";
	}
	
	/**�Ҹ����� ��� ���� �޼���*/
	@RequestMapping("admCplList.do")
	public String admCpl() {
		return "adm/admCplList";
	}
	
	/*Ajax ����*/
	/**û�Ҿ�ü �Ҹ����� ����Ʈ*/
	
	/**�̻��ü �Ҹ����� ����Ʈ*/
	
	
	/**��ü�� �Ҹ����� ��� ���� �޼���*/
	@RequestMapping("admCplSubList.do")
	public String admCplSubList() {
		return "adm/admCplSubList";
	}
	
	/**��ü�� �Ҹ����� ���� ���� ���� �޼���*/
	@RequestMapping("admCplContent.do")
	public String admCplContent() {
		return "adm/admCplContent";
	}
	
	/**���ֹ��� ���� ���� �޼���*/
	@RequestMapping("admBbsQnA.do")
	public String admBbsQnAForm() {
		return "adm/admBbsQnA";
	}

	/**�������� ���� �޼���*/
	@RequestMapping("admBbsTip.do")
	public String admBbsTipForm() {
		return "adm/admBbsTip";
	}
	
	/**�α��� ���� �޼���*/
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
			msg="�����ڸ� ����� �� �ֽ��ϴ�.";
			mav.addObject("msg",msg);
			mav.setViewName("adm/admMsg");
			return mav;
		}
	}
	
	/**�α׾ƿ� ���� �޼���*/
    @RequestMapping("admLogout.do")
    public String logout(
    		HttpSession session
    		) {
    	session.invalidate();
    	return "index";
    } 
	
	
	
	
	
	
	
	
}
