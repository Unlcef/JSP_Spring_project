package jsp.project.mvc.persistence;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jsp.project.mvc.vo.productVO;

@Repository
public class MvcDAOImpl implements MvcDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int getProductCnt() {
		int selectCnt=0;
		MvcDAO dao = sqlSession.getMapper(MvcDAO.class);
		selectCnt = dao.getProductCnt();
		return selectCnt;
	}

	@Override
	public ArrayList<productVO> getProductList(Map<String, Object> map) {
		ArrayList<productVO> dtos = new ArrayList<productVO>();
		MvcDAO dao = sqlSession.getMapper(MvcDAO.class);
		dtos = dao.getProductList(map);
		return dtos;
	}

	
/*	@Override
	public ArrayList<productVO> getProductList(Map<String, Object> map) {
		ArrayList<productVO> dtos = new ArrayList<productVO>();
		MvcDAO dao = sqlSession.getMapper(MvcDAO.class);
		dtos = dao.getProductList(map);
		return dtos;
	}*/

}
