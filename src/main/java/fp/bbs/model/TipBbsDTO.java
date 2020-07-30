package fp.bbs.model;

import java.sql.*;

public class TipBbsDTO {

	private int tIdx;
	private String tSubject;
	private String tContents;
	private String tImg;
	private Date tDate;
	private int tRef;
	private int tType;
	
	public TipBbsDTO() {
		// TODO Auto-generated constructor stub
	}

	public TipBbsDTO(int tIdx, String tSubject, String tContents, String tImg, Date tDate, int tRef, int tType) {
		super();
		this.tIdx = tIdx;
		this.tSubject = tSubject;
		this.tContents = tContents;
		this.tImg = tImg;
		this.tDate = tDate;
		this.tRef = tRef;
		this.tType = tType;
	}

	public int gettIdx() {
		return tIdx;
	}

	public void settIdx(int tIdx) {
		this.tIdx = tIdx;
	}

	public String gettSubject() {
		return tSubject;
	}

	public void settSubject(String tSubject) {
		this.tSubject = tSubject;
	}

	public String gettContents() {
		return tContents;
	}

	public void settContents(String tContents) {
		this.tContents = tContents;
	}

	public String gettImg() {
		return tImg;
	}

	public void settImg(String tImg) {
		this.tImg = tImg;
	}

	public Date gettDate() {
		return tDate;
	}

	public void settDate(Date tDate) {
		this.tDate = tDate;
	}

	public int gettRef() {
		return tRef;
	}

	public void settRef(int tRef) {
		this.tRef = tRef;
	}

	public int gettType() {
		return tType;
	}

	public void settType(int tType) {
		this.tType = tType;
	}
	
	
}
