package fp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.estimate.model.MoveEstimateDAO;
import fp.info.model.*;

@Controller
public class EmpController {

	@Autowired
	private EmpInfoDAO EmpInfoDao;
	
	@Autowired
	private ComInfoDAO ComInfoDao;
	
	@Autowired
	private MoveEstimateDAO MoveEstimateDao;
	
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
	public String emp_MoveCompany() {
		return "emp/emp_Contracting";
		
	}
	
	/**고객조회할 시 고객리스트 가져오기 관련 메서드*/
	@RequestMapping("/emp_MoveCustomerList.do")
	public ModelAndView emp_MoveCustomer(
			
			HttpSession session
			) {
		String empIdx_s=session.getAttribute("empIdx").toString();
		int empIdx=Integer.parseInt(empIdx_s);
		List lists=EmpInfoDao.getMoveest(empIdx);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("lists",lists);
		mav.setViewName("emp/emp_MoveCustomerList");
		return mav;
	}
	
	@RequestMapping("/emp_MoveCompanyList.do")
	public ModelAndView emp_CompanyList(
			@RequestParam("moIdx") int moIdx
			) {
		List lists=ComInfoDao.comList(moIdx);
		int Idx=MoveEstimateDao.selectCoidx(moIdx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",lists);
		mav.addObject("moIdx",moIdx);
		mav.addObject("Idx",Idx);
		mav.setViewName("emp/emp_MoveCompanyList");
		return mav;
	}
	
	/**최종 업체 선정 관련 메서드*/
	@RequestMapping("comConfirm.do")
	public ModelAndView comConfirm(
			@RequestParam("moIdx") int moIdx,
			@RequestParam("coIdx") int coIdx
			) {
	
		int result=MoveEstimateDao.comConfirm(coIdx, moIdx);
		String msg=result>0?"업체선정 성공!":"업체선정 실패!";
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("gopage","emp_MoveCustomerList.do");
		mav.setViewName("emp/empMsg");
		return mav;
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
	          mav.addObject("msg","로그인 성공!");
	          mav.addObject("gopage","emp_Year.do");
	          mav.setViewName("emp/empMsg");
	          return mav;
		}else {
			mav.addObject("msg","파견직원만 사용할 수 있습니다.");
			mav.addObject("gopage","index.do");
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
