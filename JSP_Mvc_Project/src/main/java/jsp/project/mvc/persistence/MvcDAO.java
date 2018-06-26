package jsp.project.mvc.persistence;

import java.util.ArrayList;
import java.util.Map;

import jsp.project.mvc.vo.productVO;



public interface MvcDAO {
	//제품 갯수
	public int getProductCnt();
	
	//제품목록
	public ArrayList<productVO> getProductList(Map<String, Object> map);

}
