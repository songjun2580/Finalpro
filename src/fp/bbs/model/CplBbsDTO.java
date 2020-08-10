package fp.bbs.model;

import java.sql.*;

public class CplBbsDTO {

	private int cplIdx;
	private int moIdx;
	private String uName;
	private Date cplDate;
	private String cplSubject;
	private String cplContent;
	private String cplImg;
	private int cplConfirm;
	private String cplReply;
	private int coIdx;
	private String coName;
	
	public CplBbsDTO() {
		// TODO Auto-generated constructor stub
	}

	public CplBbsDTO(int cplIdx, int moIdx, String uName, Date cplDate, String cplSubject, String cplContent,
			String cplImg, int cplConfirm, String cplReply, int coIdx, String coName) {
		super();
		this.cplIdx = cplIdx;
		this.moIdx = moIdx;
		this.uName = uName;
		this.cplDate = cplDate;
		this.cplSubject = cplSubject;
		this.cplContent = cplContent;
		this.cplImg = cplImg;
		this.cplConfirm = cplConfirm;
		this.cplReply = cplReply;
		this.coIdx = coIdx;
		this.coName = coName;
	}

	public int getCplIdx() {
		return cplIdx;
	}

	public void setCplIdx(int cplIdx) {
		this.cplIdx = cplIdx;
	}

	public int getMoIdx() {
		return moIdx;
	}

	public void setMoIdx(int moIdx) {
		this.moIdx = moIdx;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public Date getCplDate() {
		return cplDate;
	}

	public void setCplDate(Date cplDate) {
		this.cplDate = cplDate;
	}

	public String getCplSubject() {
		return cplSubject;
	}

	public void setCplSubject(String cplSubject) {
		this.cplSubject = cplSubject;
	}

	public String getCplContent() {
		return cplContent;
	}

	public void setCplContent(String cplContent) {
		this.cplContent = cplContent;
	}

	public String getCplImg() {
		return cplImg;
	}

	public void setCplImg(String cplImg) {
		this.cplImg = cplImg;
	}

	public int getCplConfirm() {
		return cplConfirm;
	}

	public void setCplConfirm(int cplConfirm) {
		this.cplConfirm = cplConfirm;
	}

	public String getCplReply() {
		return cplReply;
	}

	public void setCplReply(String cplReply) {
		this.cplReply = cplReply;
	}

	public int getCoIdx() {
		return coIdx;
	}

	public void setCoIdx(int coIdx) {
		this.coIdx = coIdx;
	}

	public String getCoName() {
		return coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
	}

	

	
}
