package fp.bbs.model;

import java.sql.*;

public class ReviewBbsDTO {

	private int revIdx;
	private int revType;
	private int coIdx;
	private Date revDate;
	private String revMoveType;
	private String revService;
	private String revWriter;
	private String revSubject;
	private String revContent;
	private String revImg;
	private int revRate;
	
	public ReviewBbsDTO() {
		// TODO Auto-generated constructor stub
	}

	public ReviewBbsDTO(int revIdx, int revType, int coIdx, Date revDate, String revMoveType, String revService,
			String revWriter, String revSubject, String revContent, String revImg, int revRate) {
		super();
		this.revIdx = revIdx;
		this.revType = revType;
		this.coIdx = coIdx;
		this.revDate = revDate;
		this.revMoveType = revMoveType;
		this.revService = revService;
		this.revWriter = revWriter;
		this.revSubject = revSubject;
		this.revContent = revContent;
		this.revImg = revImg;
		this.revRate = revRate;
	}

	public int getRevIdx() {
		return revIdx;
	}

	public void setRevIdx(int revIdx) {
		this.revIdx = revIdx;
	}

	public int getRevType() {
		return revType;
	}

	public void setRevType(int revType) {
		this.revType = revType;
	}

	public int getCoIdx() {
		return coIdx;
	}

	public void setCoIdx(int coIdx) {
		this.coIdx = coIdx;
	}

	public Date getRevDate() {
		return revDate;
	}

	public void setRevDate(Date revDate) {
		this.revDate = revDate;
	}

	public String getRevMoveType() {
		return revMoveType;
	}

	public void setRevMoveType(String revMoveType) {
		this.revMoveType = revMoveType;
	}

	public String getRevService() {
		return revService;
	}

	public void setRevService(String revService) {
		this.revService = revService;
	}

	public String getRevWriter() {
		return revWriter;
	}

	public void setRevWriter(String revWriter) {
		this.revWriter = revWriter;
	}

	public String getRevSubject() {
		return revSubject;
	}

	public void setRevSubject(String revSubject) {
		this.revSubject = revSubject;
	}

	public String getRevContent() {
		return revContent;
	}

	public void setRevContent(String revContent) {
		this.revContent = revContent;
	}

	public String getRevImg() {
		return revImg;
	}

	public void setRevImg(String revImg) {
		this.revImg = revImg;
	}

	public int getRevRate() {
		return revRate;
	}

	public void setRevRate(int revRate) {
		this.revRate = revRate;
	}
	
	
}