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
	/**ȸ������ ���� �޼���*/
	public int userAdd(UserInfoDTO dto) {
		
		int count=sst.insert("userInsert",dto);
		return count;
	}
	
	/**���̵� �ߺ�üũ ���� �޼���*/
	public boolean idCheck(String usId) {
		int count=sst.selectOne("idCheck", usId);
		boolean result=count==1?true:false;
		System.out.println("���̵� ��ȸ ���(true==���̵� ����):"+result);
		return result;//���̵� ����

	}
	/**���� ���� ���� �޼���*/
	public String mailsendkey(String email, HttpServletRequest request) throws Exception {
		String key=getKey(false, 5);
		try {
			MimeMessage message = mailSender.createMimeMessage();
			String mailtext="<h2>ȸ������ ���������Դϴ�.</h2><br><br>"
					+"<p>������ȣ:"+key+"</p>";
			message.setSubject("[��������]�̻縸��?û�ҵ���! ����Ʈ ȸ������ ���������Դϴ�","utf-8");
			message.setText(mailtext,"utf-8", "html");
			message.addRecipient(RecipientType.TO, new InternetAddress(email));
			mailSender.send(message);
			
		} catch (Exception e) {
		
		}
		return key;
		
	}
	// �̸��� ���� ����� �޼���
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

		// ������ �̿��� Ű ����
		private boolean lowerCheck;
		private int size;

		public String getKey(boolean lowerCheck, int size) {
			this.lowerCheck = lowerCheck;
			this.size = size;
			return init();
		}
	/**�α��� ���� �޼���*/
   public String userLogin(String usId) {
   
      String Pwd=sst.selectOne("userIdSelect", usId);
      if(Pwd==null||Pwd.equals("")) {
    	  Pwd="null";
      }
      return Pwd;
   }
   /**���ǰ��� ������ ����� ���� ȣ�� �޼���*/
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
   /**ȸ������ �������� ���� �޼ҵ�*/
   public List userInfo(int uIdx) {
	List lists=sst.selectList("userInfo",uIdx);
	
	return lists;
}
   /**��й�ȣ ���� ���� �޼���*/
   public String pwdCheck(int uIdx) {
	 String Pwd= sst.selectOne("pwdCheck",uIdx);
	   if(Pwd==null||Pwd.equals("")) {
	    	  Pwd="null";
	      }
	return Pwd;
}
   /**ȸ������ ���� ���� �޼���*/
   public int userInfoSave(UserInfoDTO dto, int uIdx) {
	   dto.setuIdx(uIdx);
	   int count=sst.update("userUpdate",dto);
	   return count;
	
}
   /**�̻� ������ ���뺸�� ���� �޼ҵ�*/
   public List moveEst(int uIdx) {
	   List list=sst.selectList("userEst",uIdx);
	return list;
}
   
}
