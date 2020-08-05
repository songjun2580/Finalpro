package fp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.estimate.model.MoveEstimateDAO;
import fp.estimate.model.MoveEstimateDTO;
import fp.info.model.*;

@Controller
public class EmpController {

	@Autowired
	private EmpInfoDAO EmpInfoDao;
	
	@Autowired
	private MoveEstimateDAO moveEstimateDao;
	
	/**파견직원 로그인 관련 메서드*/
	@RequestMapping(value="empLogin.do", method = RequestMethod.GET)
	public String empLogin() {
		return "emp/emp_Login";
	}
	
	
	@RequestMapping("/emp_Mypage.do")
	public String emp_Mypage() {
		return "emp/emp_Mypage";
	}
	
	@RequestMapping("/emp_Month.do")
	public String emp_Month() {
		return "emp/emp_Month";
	}
	
	@RequestMapping("/emp_Year.do")
	public String emp_Year() {
		return "emp/emp_Year";
		
	}
	
	@RequestMapping("/emp_Contracting.do")
	public ModelAndView emp_MoveCompany(
			@RequestParam(value="cp",defaultValue = "1")int cp,
			HttpSession session
			) {
		String empName=(String)session.getAttribute("empName");
		
		int totalCnt=moveEstimateDao.getTotalCntwait();
		int listSize=5;
		int pageSize=5;
		
		List lists=EmpInfoDao.userMatch(cp, listSize,empName);
		ModelAndView mav=new ModelAndView();
		mav.addObject("lists",lists);
		mav.setViewName("emp/emp_Contracting");
		return mav;
		
	}
	
	@RequestMapping("/emp_MoveCustomerList.do")
	public String emp_MoveCustomer() {
		return "emp/emp_MoveCustomerList";
	}
	
	@RequestMapping("/emp_MoveCompanyList.do")
	public String emp_CompanyList() {
		return "emp/emp_MoveCompanyList";
	}
	/**로그인 관련 메서드*/
	@RequestMapping(value="empLogin.do", method = RequestMethod.POST)
	public ModelAndView admLogin(
			@RequestParam("empId") String empId,
			@RequestParam("empPwd") String empPwd,
			HttpSession session
			) {
		ModelAndView mav=new ModelAndView();
		String Pwd=EmpInfoDao.empLogin(empId);
		String msg=null;
		if(Pwd.equals(empPwd)) {
			EmpInfoDTO dto=EmpInfoDao.empInfoForSession(empId);
			  session.setAttribute("empIdx",dto.getEmpIdx());
	          session.setAttribute("empName", dto.getEmpName());
	          mav.setViewName("emp/emp_Year");
	          return mav;
		}else {
			msg="파견직원만 사용할 수 있습니다.";
			mav.addObject("msg",msg);
			mav.setViewName("emp/empMsg");
			return mav;
		}
	}
	
	/**로그아웃 관련 메서드*/
    @RequestMapping("empLogout.do")
    public String logout(
    		HttpSession session
    		) {
    	session.invalidate();
    	return "index";
    } 
	
}
