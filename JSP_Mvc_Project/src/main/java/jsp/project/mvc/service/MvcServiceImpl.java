package jsp.project.mvc.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import jsp.project.mvc.persistence.MvcDAOImpl;
import jsp.project.mvc.vo.productVO;

@Service
public class MvcServiceImpl implements MvcService{

	@Autowired
	MvcDAOImpl dao;
	
	@Override
	public void getProductList(HttpServletRequest req, Model model) {
		//3단계, 화면으로부터 입력받은 값을 받아온다.
				//게시판 관련
				int pageSize = 4;     //한 페이지당 출력할 글 갯수
				int pageBlock = 1;	//한 블럭당 페이지 갯수
				
				int cnt = 0;			//글의 갯수
				int start = 0;		//현재 페이지의 시작글번호
				int end = 0;		//현재 페이지 마지막 글번호
				int number = 0;	// 출력용 글번호
				String pageNum = null;	//페이지 번호
				int currentPage = 0; //현재페이지
				
				int pageCount = 0; 	//페이지 갯수
				int startPage = 0;	//시작 페이지
				int endPage = 0;		//마지막 페이지
				
				
				//4단계 다형성 적용, 싱글톤방식으로 dao 객체생성
				//전체 재고의 갯수를 가져온다.
				cnt = dao.getProductCnt();
				//5단계 글 갯수 구하기
				pageNum = req.getParameter("pageNum");
				if(pageNum == null) {
					pageNum = "1"; //첫페이지를 1페이지로 설정
				}
				// 글 30건 기준
				currentPage = Integer.parseInt(pageNum);
				System.out.println("currentPage : " + currentPage);
				
				// 페이지 갯수 : 6 = (30/5) + (0)
				pageCount = (cnt / pageSize) + (cnt % pageSize>0 ? 1 : 0); // 페이지갯수 + 나머지있으면 1
				
				// 1 = (1 - 1) * 5 + 1
				start = (currentPage - 1) * pageSize + 1; //현재 페이지 시작번호1 (페이지별)
				
				// 5 = 1 + 5 - 1;
				end = start + pageSize - 1;  //현재 페이지 끝번호(페이지별)
				System.out.println("start : " + start);
				System.out.println("end : " + end);
				
				if(end > cnt) end = cnt;
				
				//30 = 30 - (1 - 1 ) * 5
				number = cnt - (currentPage - 1) * pageSize; //출력용 글번호
				
				System.out.println("cnt : " + cnt);
				if(cnt > 0) {
					//게시글 목록 조회
					Map<String, Object> map = new HashMap<String, Object>();
					map.put("start", start);
					map.put("end", end);
					ArrayList<productVO> dtos = dao.getProductList(map);
					model.addAttribute("dtos", dtos); //큰 바구니 : 게시글목록 cf)작은 바구니 : 게시글 1건
				}
				// 1 = (1 / 3) * 3 + 1
				startPage = (currentPage / pageBlock) * pageBlock + 1;
				if(currentPage % pageBlock == 0) startPage -= pageBlock;
				System.out.println("startPage : " + startPage);

				//3 = 1 + 3 - 1
				endPage = startPage + pageBlock - 1; //마지막 페이지
				if(endPage > pageCount) endPage = pageCount;
				System.out.println("endPage : " + endPage);
				//6단계 값 넘기기
				model.addAttribute("cnt",cnt);	//글갯수
				model.addAttribute("number", number); //글번호
				model.addAttribute("pageNum", pageNum); //페이지번호
				if(cnt > 0) {
					model.addAttribute("startPage", startPage);	//시작 페이지
					model.addAttribute("endPage", endPage);		//마지막 페이지
					model.addAttribute("pageBlock", pageBlock);	//출력할 페이지 갯수
					model.addAttribute("pageCount", pageCount);//페이지 갯수
					model.addAttribute("currentPage", currentPage); //현재 페이지
					
				}
	}

}
