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
	
	private String key;

	
	@RequestMapping("/userJoin.do")//ȸ������ ������ �̵� ���� �޼���
	public String userJoin() {
		
		return "user/userJoin";
	}
	
	@RequestMapping("/userCleanChoice.do")//û�Ҿ�ü���� ������ �̵� ���� �޼���
	public String userCleanChoice() {
		
		return "user/userCleanChoice";
	}
	
	@RequestMapping("/userCleanEstimateWrite.do")//û�Ұ����� �ۼ� ������ �̵� ���� �޼���
	public String userCleanEstimateWrite() {
		
		return "user/userCleanEstimateWrite";
	}
	
	@RequestMapping("/userMoveEstimateWrite.do")//�̻������ �ۼ� ������ �̵� ���� �޼���
	public String userMoveEstimateWrite() {
		
		return "user/userMoveEstimateWrite";
	}

	@RequestMapping("/userCleanList.do")//û�ҳ��� ��ȸ ������ �̵� ���� �޼���
	public String userCleanList() {
		
		return "user/userCleanList";
	}
	
	@RequestMapping("/userCompWrite.do")//������� �Ű� ������ �̵� ���� �޼���
	public String userCompWrite() {
		
		return "user/userCompWrite";
	}
	
	@RequestMapping("/userEmailCheck.do")//�������� ������ �̵� ���� �޼���
	public ModelAndView userEmailCheck() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/userEmailCheck");
		return mav;
	}
	
	@RequestMapping("/userEstimateView.do")//������ ��ȸ ������ �̵� ���� �޼���
	public String userEstimateView() {
		
		return "user/userEstimateView";
	}
	
	@RequestMapping(value="/userInfoCheck.do", method = RequestMethod.GET)//ȸ������ Ȯ�� ������ �̵� ���� �޼���
	public String userInfoCheck() {
		
		return "user/userInfoCheck";
		
	}
	
	@RequestMapping("/userInfoModi.do")//ȸ������ ���� ������ �̵� ���� �޼���
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

	
	@RequestMapping("/userMoveList.do")//�̻系�� ��ȸ ������ �̵� ���� �޼���
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
	
	/**�����ۼ� ������ �̵� ���� �޼���*/
	@RequestMapping("/userReviewWrite.do")//�����ۼ� ������ �̵� ���� �޼���
	   public String userReviewWrite() {
	      
	      return "user/userReviewWrite";
	   }
	
	/**�����ۼ� ���� �޼���*/
	@RequestMapping(value="/userReviewWriteSubmit.do")
	   public ModelAndView userReviewWriteSubmit(
			   @RequestParam(value = "revImgs" ,required = false ) List<MultipartFile> file , 
			   ReviewBbsDTO dto,
			   HttpServletRequest req) {
		System.out.println("�����ۼ� �޼��� ����!");
		
		 
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
	    	  mav.addObject("msg","����");
	      }else {
	    	  mav.addObject("msg","����");
	      }
	      mav.addObject("gopage", "userMoveList.do");
	      mav.setViewName("user/userMsg");
	      return mav;
	   }
	
	@RequestMapping("/userTermsOfService.do")//�̿��� ���� ������ �̵� ���� �޼���
	public String userTermsOfService() {
		
		return "user/userTermsOfService";
	}
	
	/**ȸ������ ���� �޼ҵ�*/
	@RequestMapping(value="/userAdd.do", method = RequestMethod.POST)
	public ModelAndView UserAdd(UserInfoDTO dto, HttpServletRequest request) {
		int result=userInfoDao.userAdd(dto);
		ModelAndView mav=new ModelAndView();
		String msg=result>0?"ȸ������ ����":"ȸ������ ����";
		mav.addObject("msg",msg);
		mav.addObject("gopage","index.do");
		mav.setViewName("user/userMsg");
		
		return mav;
	}
	  /**�̸��� ������ȣ ���� ���� �޼ҵ� */
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
		   mav.addObject("msg","������ȣ�� ���½��ϴ�.");
		   mav.setViewName("user/userEmailMsg");
		   return mav;
	   }
	   
	   /**�̸��� ������ȣ ��ġ ���� �޼���*/
	   @RequestMapping(value="emailNumAuth.do",method = RequestMethod.GET)
	   public ModelAndView emailNumAuth(
			   @RequestParam("userkey") String userkey
			   ) {
		   String msg="";
		   ModelAndView mav=new ModelAndView();
		   
		   if(userkey.equals(key)) {
			   msg="<span style='color:blue'>������ȣ�� ��ġ�մϴ�.</span>";
		   }else {
			   msg="<span style='color:red'>������ȣ�� ��ġ���� �ʽ��ϴ�.</span>";
		   }
		   mav.addObject("msg",msg);
		   
		   mav.setViewName("user/userEmailMsg");
		   return mav;
	   }
	
	/**���̵� �ߺ�üũ ���� �޼���*/
	@RequestMapping("/idCheck.do")
	public ModelAndView idCheck(
			@RequestParam(value="usId")String usId) {
		boolean result=userInfoDao.idCheck(usId);
		String msg=result==true?"�ߺ��� ���̵� �Դϴ�":"��밡���� ���̵� �Դϴ�.";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("user/idCheck");
		return mav;
	}
	
	/**�α��� ���� �޼���*/
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
          msg="���̵� �Ǵ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�~";
          mav.addObject("msg",msg);
          mav.setViewName("user/userMsg");
          mav.addObject("gopage","index.do");
          return mav;
       }

    }
    
    /**�α׾ƿ� ���� �޼���*/
    @RequestMapping("userlogout.do")
    public String logout(
    		HttpSession session
    		) {
    	session.invalidate();
    	return "index";
    } 
    
    /**�̻������ ��û �ּ� �˾� �̵� ���� �޼���*/
    @RequestMapping("/jusoPopup.do")
	public String jusoPopup() {
		return "user/jusoPopup";
	}
	
    /**������ ���� ���� �޼���*/
	@RequestMapping("/movingEstimateWrite.do")	
	public ModelAndView moveestAdd(MoveEstimateDTO dto){
		int result=moveEstimateDao.moveestAdd(dto);
		String msg=result>0?"������ ������ �Ϸ�Ǿ����ϴ�":"������ ���⿡ �����Ͽ����ϴ�";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("gopage","index.do");
		mav.setViewName("user/userMsg");
		return mav;
	}
	
	/**ȸ������ Ȯ�� ���� �޼���*/
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
		
		String msg="";
		if(idx==uIdx) {
			msg="ȸ������ ��������!";
			mav.addObject("msg",msg);
			mav.addObject("gopage","userInfoModi.do");
			mav.setViewName("user/userMsg");
			return mav;
		}else {
			msg="ȸ������ Ʋ���̽��ϴ�.";
			mav.addObject("msg",msg);
			mav.addObject("gopage","userInfoCheck.do");
			mav.setViewName("user/userMsg");
			return mav;
		}

	}
	
	/**ȸ���������� ��й�ȣ Ȯ�� ���� �޼���*/
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
	
	/**ȸ���������� ������Ʈ ���� �޼���*/
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
			mav.addObject("msg","ȸ���������� �Ϸ�");
			mav.addObject("gopage","userInfoModi.do");
			mav.setViewName("user/userMsg");
		}else {
			mav.addObject("msg","ȸ���������� ����!");
			mav.addObject("gopage","userInfoModi.do");
			mav.setViewName("user/userMsg");
		}
		return mav;
	}
 
}