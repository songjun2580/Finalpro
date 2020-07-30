package fp.info.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import fp.estimate.model.MoveEstimateDTO;

import org.mybatis.spring.SqlSessionTemplate;


public class UserInfoDAOImple implements UserInfoDAO {
	
	private SqlSessionTemplate sst;
	
	public UserInfoDAOImple(SqlSessionTemplate sst) {
		super();
		this.sst=sst;
	}
	@Autowired
	private JavaMailSender mailSender;
	/**회원가입 관련 메서드*/
	public int userAdd(UserInfoDTO dto) {
		
		int count=sst.insert("userInsert",dto);
		return count;
	}
	
	/**아이디 중복체크 관련 메서드*/
	public boolean idCheck(String usId) {
		int count=sst.selectOne("idCheck", usId);
		boolean result=count==1?true:false;
		System.out.println("아이디 조회 결과(true==아이디 있음):"+result);
		return result;//아이디 없음

	}
	/**메일 인증 관련 메서드*/
	public String mailsendkey(String email, HttpServletRequest request) throws Exception {
		String key=getKey(false, 5);
		try {
			MimeMessage message = mailSender.createMimeMessage();
			String mailtext="<h2>회원가입 인증메일입니다.</h2><br><br>"
					+"<p>인증번호:"+key+"</p>";
			message.setSubject("[본인인증]이사만해?청소도해! 사이트 회원가입 인증메일입니다","utf-8");
			message.setText(mailtext,"utf-8", "html");
			message.addRecipient(RecipientType.TO, new InternetAddress(email));
			mailSender.send(message);
			
		} catch (Exception e) {
		
		}
		return key;
		
	}
	// 이메일 난수 만드는 메서드
		public String init() {
			Random ran = new Random();
			StringBuffer sb = new StringBuffer();
			int num = 0;
			do {
				num = ran.nextInt(75) + 48;
				if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
					sb.append((char) num);
				} else {
					continue;
				}
			} while (sb.length() < size);
			if (lowerCheck) {
				return sb.toString().toLowerCase();
			}
			return sb.toString();
		}

		// 난수를 이용한 키 생성
		private boolean lowerCheck;
		private int size;

		public String getKey(boolean lowerCheck, int size) {
			this.lowerCheck = lowerCheck;
			this.size = size;
			return init();
		}
	/**로그인 관련 메서드*/
   public String userLogin(String usId) {
   
      String Pwd=sst.selectOne("userIdSelect", usId);
      if(Pwd==null||Pwd.equals("")) {
    	  Pwd="null";
      }
      return Pwd;
   }
   /**세션값에 저장할 사용자 정보 호출 메서드*/
   public UserInfoDTO userInfoForSession(String usId) {
      UserInfoDTO dto=sst.selectOne("userInfoForSession", usId);
      return dto;
   }
   public int infoCheck(String usId, String uPwd) {
	   Map map=new HashMap();
	   map.put("usId", usId);
	   map.put("uPwd", uPwd);
	   try {
		   int idx=sst.selectOne("infoCheck",map);
		   return idx;
	} catch (Exception e) {
		return -1;
	}
}
   /**회원정보 가져오기 관련 메소드*/
   public List userInfo(int uIdx) {
	List lists=sst.selectList("userInfo",uIdx);
	
	return lists;
}
   /**비밀번호 수정 관련 메서드*/
   public String pwdCheck(int uIdx) {
	 String Pwd= sst.selectOne("pwdCheck",uIdx);
	   if(Pwd==null||Pwd.equals("")) {
	    	  Pwd="null";
	      }
	return Pwd;
}
   /**회원정보 저장 관련 메서드*/
   public int userInfoSave(UserInfoDTO dto, int uIdx) {
	   dto.setuIdx(uIdx);
	   int count=sst.update("userUpdate",dto);
	   return count;
	
}
   /**이사 견적서 내용보기 관련 메소드*/
   public List moveEst(int uIdx) {
	   List list=sst.selectList("userEst",uIdx);
	return list;
}
   
}
