package fp.bp.model;

import java.util.List;

public interface EmpBpDAO {
	public List empBpSelect(int empIdx);
	public int empBpCountedSelect(int empIdx);
	public int empBpCountingSelect(int empIdx);
	public int empBpSumMoney(int empIdx);
}
