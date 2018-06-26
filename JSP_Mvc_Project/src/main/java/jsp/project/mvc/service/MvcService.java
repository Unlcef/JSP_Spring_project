package jsp.project.mvc.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface MvcService {
	//메인 아이템 목록
		public void getProductList(HttpServletRequest req, Model model);
		
}
