package fp.info.model;

public class AdmInfoDTO {

	private String adId;
	private String adPwd;
	
	public AdmInfoDTO() {
		// TODO Auto-generated constructor stub
	}

	public AdmInfoDTO(String adId, String adPwd) {
		super();
		this.adId = adId;
		this.adPwd = adPwd;
	}

	public String getAdId() {
		return adId;
	}

	public void setAdId(String adId) {
		this.adId = adId;
	}

	public String getAdPwd() {
		return adPwd;
	}

	public void setAdPwd(String adPwd) {
		this.adPwd = adPwd;
	}
	
	
}