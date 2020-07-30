package fp.manage.model;

import java.sql.*;

public class CleanContractDTO {

	private int cctIdx;
	private int cbIdx;
	private String cctClient;
	private int cctPrice;
	private Date cctDate;

	public CleanContractDTO() {
		// TODO Auto-generated constructor stub
	}

	public CleanContractDTO(int cctIdx, int cbIdx, String cctClient, int cctPrice, Date cctDate) {
		super();
		this.cctIdx = cctIdx;
		this.cbIdx = cbIdx;
		this.cctClient = cctClient;
		this.cctPrice = cctPrice;
		this.cctDate = cctDate;
	}

	public int getCctIdx() {
		return cctIdx;
	}

	public void setCctIdx(int cctIdx) {
		this.cctIdx = cctIdx;
	}

	public int getCbIdx() {
		return cbIdx;
	}

	public void setCbIdx(int cbIdx) {
		this.cbIdx = cbIdx;
	}

	public String getCctClient() {
		return cctClient;
	}

	public void setCctClient(String cctClient) {
		this.cctClient = cctClient;
	}

	public int getCctPrice() {
		return cctPrice;
	}

	public void setCctPrice(int cctPrice) {
		this.cctPrice = cctPrice;
	}

	public Date getCctDate() {
		return cctDate;
	}

	public void setCctDate(Date cctDate) {
		this.cctDate = cctDate;
	}
	
	
}
