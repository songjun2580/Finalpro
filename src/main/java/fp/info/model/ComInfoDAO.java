package fp.info.model;

public interface ComInfoDAO {
	public String comLogin(String coEmail);
	public ComInfoDTO comInfoForSession(String usId);
}
