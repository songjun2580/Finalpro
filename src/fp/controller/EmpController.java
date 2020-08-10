package fp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.maven.model.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import fp.bp.model.EmpBpDAO;
import fp.company.model.BlogContentDAO;
import fp.company.model.BlogContentDTO;
import fp.estimate.model.MoveEstimateDAO;
import fp.info.model.*;
import fp.manage.model.MoveContractDTO;
import fp.manage.model.MoveContractWriteDTO;

@Controller
public class EmpController {

	@Autowired
	private EmpInfoDAO EmpInfoDao;
	
	@Autowired
	private ComInfoDAO ComInfoDao;
	
	@Autowired
	private MoveEstimateDAO MoveEstimateDao;
	
	@Autowired
	private EmpBpDAO EmpBpDao;
	
	@Autowired
	private BlogContentDAO blogContentDao;
	
	/**파견직원 로그인 관련 메서드*/
	@RequestMapping(value="empLogin.do", method = RequestMethod.GET)
	public String empLogin() {
		return "emp/emp_Login";
	}
	
	 /**업체 블로그 조회(by 파견직원)*/
	   @RequestMapping("empBlogView.do")
	   public ModelAndView userBlogView(int coIdx) {
	      ModelAndView mav=new ModelAndView();
	      
	      BlogContentDTO dto=blogContentDao.getBlogContent(coIdx);//현장스토리 이미지 가져오기
	      ComInfoDTO com_dto=blogContentDao.getCoInfo(coIdx);//업체정보 가져오기 (블로그 출력용)
	      
	      List review_lists=blogContentDao.getCompReview(coIdx);//리뷰 관련 정보 가져오기
	      BestReviewDTO best_review=blogContentDao.getBestReview(coIdx);//베스트 리뷰가져오기(평점 가장 높고 & 가장 최근 리뷰)
	      double avgRate=blogContentDao.getAvgRate(coIdx);//업체 리뷰 평점 평균 가져오기
	      mav.addObject("dto", dto);
	      mav.addObject("com_dto", com_dto);
	      mav.addObject("review_lists", review_lists);
	      mav.addObject("best_review", best_review);   
	      mav.addObject("avgRate", avgRate);
	      
	      mav.setViewName("emp/empBlogView");
	      return mav;
	   }
	   
	@RequestMapping("/emp_Mypage.do")
	public String emp_Mypage() {
		return "emp/emp_Mypage";
	}
	
	@RequestMapping("/emp_Month.do")
	public ModelAndView emp_Month(
			HttpSession session
			) {
		String empIdx_s=session.getAttribute("empIdx").toString();
		int empIdx=Integer.parseInt(empIdx_s);
		System.out.println(empIdx);
		int counting=EmpBpDao.empBpCountingSelect(empIdx);
		int counted=EmpBpDao.empBpCountedSelect(empIdx);
		int money=EmpBpDao.empBpSumMoney(empIdx);
		List lists=EmpBpDao.empBpSelect(empIdx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("list",lists);
		mav.addObject("counting",counting);
		mav.addObject("counted",counted);
		mav.addObject("money",money);
		mav.setViewName("emp/emp_Month");
		return mav;
	}
	
	@RequestMapping("/emp_Contracting.do")
	public ModelAndView emp_MoveCompany(
			@RequestParam(value="cp",defaultValue = "1")int cp,
			HttpSession session
			) {
		String empName=(String)session.getAttribute("empName");
		
		int totalCnt=MoveEstimateDao.getTotalCntwait();
		int listSize=3;
		int pageSize=3;
		String pageStr=page.PageModule.pageMake("emp_Contracting.do", totalCnt, listSize, pageSize, cp);
		
		List lists=EmpInfoDao.userMatch(cp, listSize,empName);
		ModelAndView mav=new ModelAndView();
		mav.addObject("lists",lists);
		mav.addObject("pageStr",pageStr);
		mav.setViewName("emp/emp_Contracting");
		return mav;
		
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
	
	@RequestMapping("emp_MoveCompanyList.do")
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
	
	/**최종 계약서 작성폼 관련 메서드*/
	@RequestMapping("comConfirmForm.do")
	public ModelAndView comConfirmForm(
			@RequestParam("mbIdx") int mbIdx)
	{
		MoveContractDTO dto=MoveEstimateDao.contract(mbIdx);
		MoveContractWriteDTO dto1=new MoveContractWriteDTO();
		dto1.setMbIdx(mbIdx);
		MoveEstimateDao.zeroSet(dto1);
		MoveContractWriteDTO dto2=MoveEstimateDao.getContract(mbIdx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("dto",dto);
		mav.addObject("dto2",dto2);
		mav.setViewName("emp/emp_Confirm");
		return mav;
	}
	
	/**계약서 작성 관련 메서드*/
	@RequestMapping(value="comConfirmSubmit.do", method = RequestMethod.GET)
	public ModelAndView comConfirmSubmit(
			MoveContractWriteDTO mdto,
			@RequestParam("mbIdx")int mbIdx
			) {
		int result=MoveEstimateDao.contractWrite(mdto);
		ModelAndView mav=new ModelAndView();
		if(result>0) {
			int count=MoveEstimateDao.comConfirm(mdto.getMbIdx(),mdto.getMctPrice());
			if(count>0) {
				MoveContractDTO dto=MoveEstimateDao.contract(mbIdx);
				MoveContractWriteDTO dto2=MoveEstimateDao.getContract(mbIdx);
				mav.addObject("dto",dto);
				mav.addObject("dto2",dto2);
				mav.addObject("mbIdx",mbIdx);
				mav.setViewName("emp/emp_Confirm");
			}
		}else {
			String msg="계약서 작성 실패";
			mav.addObject("msg",msg);
			mav.addObject("gopage","emp_Mypage.do");
			mav.setViewName("emp/empMsg");
		}
		return mav;
	}
	@RequestMapping("contractPopup.do")
	public ModelAndView contractPopup(
			@RequestParam("mbIdx") int mbIdx
			) {
		System.out.println(mbIdx);
		MoveContractDTO dto=MoveEstimateDao.contract(mbIdx);
		MoveContractWriteDTO dto2=MoveEstimateDao.getContract(mbIdx);
		ModelAndView mav=new ModelAndView();
		mav.addObject("dto",dto);
		mav.addObject("dto2",dto2);
		mav.setViewName("emp/contractPopup");
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
	          mav.addObject("gopage","emp_Month.do");
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
