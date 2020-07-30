package fp.manage.model;

import java.sql.*;

public class MoveContractDTO {

	private int mctIdx;
	private int mbIdx;
	private String mctClient;
	private int mctPrice;
	private Date mctDate;
	
	public MoveContractDTO() {
		// TODO Auto-generated constructor stub
	}

	public MoveContractDTO(int mctIdx, int mbIdx, String mctClient, int mctPrice, Date mctDate) {
		super();
		this.mctIdx = mctIdx;
		this.mbIdx = mbIdx;
		this.mctClient = mctClient;
		this.mctPrice = mctPrice;
		this.mctDate = mctDate;
	}

	public int getMctIdx() {
		return mctIdx;
	}

	public void setMctIdx(int mctIdx) {
		this.mctIdx = mctIdx;
	}

	public int getMbIdx() {
		return mbIdx;
	}

	public void setMbIdx(int mbIdx) {
		this.mbIdx = mbIdx;
	}

	public String getMctClient() {
		return mctClient;
	}

	public void setMctClient(String mctClient) {
		this.mctClient = mctClient;
	}

	public int getMctPrice() {
		return mctPrice;
	}

	public void setMctPrice(int mctPrice) {
		this.mctPrice = mctPrice;
	}

	public Date getMctDate() {
		return mctDate;
	}

	public void setMctDate(Date mctDate) {
		this.mctDate = mctDate;
	}
	
	
}
