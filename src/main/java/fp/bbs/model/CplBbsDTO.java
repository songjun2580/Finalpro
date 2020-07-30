package fp.bbs.model;

import java.sql.*;

public class CplBbsDTO {

	private int cplIdx;
	private int cplType;
	private int coIdx;
	private String cplWriter;
	private Date cplDate;
	private String cplSubject;
	private String cplContent;
	
	public CplBbsDTO() {
		// TODO Auto-generated constructor stub
	}

	public CplBbsDTO(int cplIdx, int cplType, int coIdx, String cplWriter, Date cplDate, String cplSubject,
			String cplContent) {
		super();
		this.cplIdx = cplIdx;
		this.cplType = cplType;
		this.coIdx = coIdx;
		this.cplWriter = cplWriter;
		this.cplDate = cplDate;
		this.cplSubject = cplSubject;
		this.cplContent = cplContent;
	}

	public int getCplIdx() {
		return cplIdx;
	}

	public void setCplIdx(int cplIdx) {
		this.cplIdx = cplIdx;
	}

	public int getCplType() {
		return cplType;
	}

	public void setCplType(int cplType) {
		this.cplType = cplType;
	}

	public int getCoIdx() {
		return coIdx;
	}

	public void setCoIdx(int coIdx) {
		this.coIdx = coIdx;
	}

	public String getCplWriter() {
		return cplWriter;
	}

	public void setCplWriter(String cplWriter) {
		this.cplWriter = cplWriter;
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
	
	
	
}
