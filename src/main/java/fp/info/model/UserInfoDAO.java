package fp.info.model;

import javax.servlet.http.HttpServletRequest;
import java.util.*;
import fp.estimate.model.MoveEstimateDTO;

public interface UserInfoDAO {
	public int userAdd(UserInfoDTO dto);
	public boolean idCheck(String usId);
	public String mailsendkey(String email, HttpServletRequest request )throws Exception;
	public String userLogin(String usId);
	public UserInfoDTO userInfoForSession(String usId);
	public int infoCheck(String usId, String uPwd);
	public List moveEst(int uIdx);
	public List userInfo(int uIdx);
	public String pwdCheck(int uIdx);
	public int userInfoSave(UserInfoDTO dto, int uIdx);
}
