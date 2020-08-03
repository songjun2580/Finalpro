package fp.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import fp.bbs.model.ReviewBbsDTO;
import fp.bbs.model.TipBbsDAO;
import fp.bbs.model.TipBbsDTO;
import fp.info.model.*;
import fp.util.UploadFileUtils;

@Controller
public class AdmController {

	@Autowired
	private AdmInfoDAO admInfoDao;
	@Autowired
	private TipBbsDAO bbsTipDao;

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
	
	/**업체관리 관련 메서드*/
	@RequestMapping("admCoManage.do")
	public String admCoManage() {
		return "adm/admCoManage";
	}
	
	/**업체 신청 목록 관련 메서드*/
	@RequestMapping("admCoAdd.do")
	public String admCoAdd() {
		return "adm/admCoAdd";
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
	
	/**사원등록 관련 메서드*/
	@RequestMapping("admEmpAdd.do")
	public String admEmpAddForm() {
		return "adm/admEmpAdd";
	}
	
	/**이사견적서 신청 관련 메서드*/
	@RequestMapping("admMest.do")
	public String admMestForm() {
		return "adm/admMest";
	}
	
	/**이사견적서 승인대기 관련 메서드*/
	@RequestMapping("admMest_wait.do")
	public String admMest_waitForm() {
		return "adm/admMest_wait";
	}
	
	/**이사견적서 승인완료 관련 메서드*/
	@RequestMapping("admMest_confirm.do")
	public String admMest_confirmForm() {
		return "adm/admMest_confirm";
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
	
	/**꿀팁게시판 파일업로드 관련 메서드*/
	@RequestMapping(value="/bbsTipUpload.do" )
	public String bbsTipUpload(@RequestParam(value = "uploadFile" ,required = false ) 
	MultipartFile file, HttpServletRequest request) throws Exception{
		
		UploadFileUtils upl=new UploadFileUtils();
		String dbName=upl.uploadFile(file, request);
		
		return dbName;
	}
	/**꿀팁게시판 작성완료 관련 메서드*/
	@RequestMapping("admBbsTipWriteSubmit.do")
	public ModelAndView admBbsTipWriteSubmit(TipBbsDTO dto,
			@RequestParam(value = "revImgs" ,required = false ) List<MultipartFile> file ,
			   HttpServletRequest req) {
		
		ModelAndView mav=new ModelAndView();
		
		UploadFileUtils upLoad = new UploadFileUtils();
	      String originName="";
	      String dbName="";
	      System.out.println(file.size());
	      if(file.size()!=0) {
	    	  for(int i=0;i< file.size();i++) {
	   	       originName +=file.get(i).getOriginalFilename();
	   	       dbName += upLoad.uploadFile(file.get(i), req);
		   	       if(i != file.size()-1) {
		   	          originName +=",";
		   	          dbName+=",";
		   	       }
	    	  }
	      }
	      System.out.println(dbName);
	      System.out.println(originName);
	      int result=bbsTipDao.insertTip(dto);
		String msg=result>0?"게시판을 등록하셨습니다":"게시판 등록 실패";
		mav.addObject("msg", msg);
		mav.setViewName("adm/admMsg");
		return mav;
	}
	/**게시판 작성폼 관련 메서드*/
	@RequestMapping("admBbsTipWrite.do")
	public String admBbsTipWrite() {
		return "adm/admBbsTipWrite";
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
