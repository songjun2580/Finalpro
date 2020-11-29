package fp.bbs.model;
import java.util.*;

public interface CplBbsDAO {
	 public int cplWrite(CplBbsDTO dto);
	 public int coCplUpdate(int coIdx);
	 public List confirmList();
	 public List NoConfirmList();
	 public CplBbsDTO cplContent(int cplIdx);
	 public List cplImgs(CplBbsDTO dto);
	 public int cplConfirm(int cplIdx);
	 public int cplReply(int cplIdx, String cplReply);
	 public List cplSelCom(int coIdx);
	 
	 
}
