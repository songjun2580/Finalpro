package fp.estimate.model;

import java.sql.*;

public class CleanEstimateDTO {
	
	private int clIdx;
	private int uIdx;
	private Date clDate;
	private String clAddr;
	private String clType1;
	private int clType2;
	private int moStatus;
	
	public CleanEstimateDTO() {
		// TODO Auto-generated constructor stub
	}

	public CleanEstimateDTO(int clIdx, int uIdx, Date clDate, String clAddr, String clType1, int clType2,
			int moStatus) {
		super();
		this.clIdx = clIdx;
		this.uIdx = uIdx;
		this.clDate = clDate;
		this.clAddr = clAddr;
		this.clType1 = clType1;
		this.clType2 = clType2;
		this.moStatus = moStatus;
	}

	public int getClIdx() {
		return clIdx;
	}

	public void setClIdx(int clIdx) {
		this.clIdx = clIdx;
	}

	public int getuIdx() {
		return uIdx;
	}

	public void setuIdx(int uIdx) {
		this.uIdx = uIdx;
	}

	public Date getClDate() {
		return clDate;
	}

	public void setClDate(Date clDate) {
		this.clDate = clDate;
	}

	public String getClAddr() {
		return clAddr;
	}

	public void setClAddr(String clAddr) {
		this.clAddr = clAddr;
	}

	public String getClType1() {
		return clType1;
	}

	public void setClType1(String clType1) {
		this.clType1 = clType1;
	}

	public int getClType2() {
		return clType2;
	}

	public void setClType2(int clType2) {
		this.clType2 = clType2;
	}

	public int getMoStatus() {
		return moStatus;
	}

	public void setMoStatus(int moStatus) {
		this.moStatus = moStatus;
	}
	
	
	

}