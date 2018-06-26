package jsp.project.mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jsp.project.mvc.service.MvcServiceImpl;

@Controller
public class MvcController {
	
	@Autowired
	MvcServiceImpl service;
	
	@RequestMapping("main")
	public String main(HttpServletRequest req, Model model) {
		System.out.println("main");
		model.addAttribute("listnum", 1);
		service.getProductList(req, model);
		
		return "common/main";
			
	}
	
	@RequestMapping("guest_login")
	public String guest_login(HttpServletRequest req, Model model) {
		
		System.out.println("guest_login.cu로 이동");

		return "guest/guest_loginForm";
	}
	
	/*//로그인 폼
			}else if(url.equals("/guest_login.cu")) {
				System.out.println("guest_login.cu로 이동");
				
				viewPage="/guest/guest_loginForm.jsp";
				
				
				//게스트 로그인 처리
			}else if(url.equals("/guest_loginPro.cu")) {
				System.out.println("guest_loginPro.cu");
				guestService service = new guestServiceImpl();
				//로그인 폼에서 입력받은  값들을 받아와서 DB에서 비교한다.
				service.loginPro(req, res);
				
				viewPage="/guest/guest_loginPro.jsp";
				//로그아웃 세션삭제
			}else if(url.equals("/logout.cu")) {
				System.out.println("로그아웃");
				req.getSession().invalidate();
				//메인에서 해당 페이지를 include 하기위해 메인에 listnum값을 넘겨준다.
				req.setAttribute("listnum", 1);
				guestService service = new guestServiceImpl();
				service.getProductList(req, res);
				viewPage="/common/main.jsp";
				//회원가입 폼 페이지
			}else if(url.equals("/guest_register.cu")) {
				System.out.println("회원가입 폼으로 이동");
				
				viewPage="/guest/guest_register.jsp";
				//회원가입 처리 페이지
			}else if(url.equals("/guest_registerPro.cu")) {
				System.out.println("회원가입 처리");
				
				guestService service = new guestServiceImpl();
				service.guest_registerPro(req, res);
				
				
				viewPage="/guest/guest_registerPro.jsp";
				//회원가입 아이디 중복처리
			}else if(url.equals("/confirmId.cu")) {
				System.out.println("회원가입 중복확인 처리");
				guestService service = new guestServiceImpl();
				service.confirmId(req, res);
				viewPage = "/guest/confirmId.jsp";
			//메인페이지 뷰
			}else if(url.equals("/myPage.cu")) {
				System.out.println("/myPage.cu");
				int pageNum = Integer.parseInt(req.getParameter("pageNum"));
				req.setAttribute("pageNum", pageNum);
				
				
				viewPage ="/guest/myPage.jsp";
				//회원정보수정 비밀번호 체크
			}else if(url.equals("/myPageModifyForm.cu")) {
				System.out.println("myPageModifyForm.cu 이동");
				guestService service = new guestServiceImpl();
				service.pwdCheck(req, res);
				viewPage="/guest/myPageModifyForm.jsp";
				//회원정보 수정 처리
			}else if(url.equals("/myPageModifyView.cu")) {
				System.out.println("modifyPro.cu로 이동");
				
				guestService service = new guestServiceImpl();
				service.pwdCheck(req, res);
				
				viewPage="/guest/myPageModifyView.jsp";
				//오시는길
			}else if(url.equals("/waytoCome.cu")) {
				System.out.println("오시는길");
				viewPage="/include/mapApi.jsp";
				//회원수정 처리
			}else if(url.equals("/myPageModifyPro.cu")) {
				System.out.println("/myPageModifyPro.cu 로 이동");
				
				guestService service = new guestServiceImpl();
				service.modifyForm(req, res);
				
				viewPage="/guest/myPageModifyPro.jsp";
				//이메일인증 팝업(이메일 인증메일 발송)
			}else if(url.equals("/confirmEmail.cu")) {
				System.out.println("이메일 인증 팝업 띄움");
				
				guestService service = new guestServiceImpl();
				service.smtp(req, res);
				
				viewPage="/guest/confirmEmail.jsp";
				
				//회원탈퇴 처리
			}else if(url.equals("/myPageGuestDelete.cu")) {
				guestService service = new guestServiceImpl();
				service.deletePro(req, res);
				viewPage="/guest/myPageGuestDeletePro.jsp";
			//비로그인 구분
			}else if(url.equals("/myPageDisting.cu")) {
				System.out.println("myPageDisting.cu");
				viewPage="/guest/myPageDisting.jsp";
				//농구탭 제품리스트
			}else if(url.equals("/basketballList.cu")) {
				System.out.println("basketballList.cu");
				req.setAttribute("listnum", 2);
				guestService service = new guestServiceImpl();
				service.getListCategory(req,res);
				
				viewPage="/common/main.jsp";
				//축구 탭 제품리스트
			}else if(url.equals("/soccerList.cu")) {
				System.out.println("soccerList.cu");
				
				req.setAttribute("listnum", 3);
				guestService service = new guestServiceImpl();
				service.getListCategory(req,res);
				viewPage="/common/main.jsp";
				//배드민턴 탭 제품리스트
			}else if(url.equals("/badmintonList.cu")) {
				System.out.println("badmintonList.cu");
				
				req.setAttribute("listnum", 4);
				guestService service = new guestServiceImpl();
				service.getListCategory(req,res);
				viewPage="/common/main.jsp";
				//야구 탭 제품리스트
			}else if(url.equals("/baseballList.cu")) {
				System.out.println("badmintonList.cu");
				
				req.setAttribute("listnum", 5);
				guestService service = new guestServiceImpl();
				service.getListCategory(req,res);
				viewPage="/common/main.jsp";
				//제품 상세페이지
			}else if(url.equals("/productView.cu")) {
				req.setAttribute("listnum", 6);
				adminService service = new adminServiceImpl();
				service.getProduct(req, res);
				guestService service = new guestServiceImpl();
				service.getProductInfo(req,res);
				viewPage="/common/main.jsp";
				//장바구니로 이동
			}else if(url.equals("/guestCartList.cu")) {
				System.out.println("/guestCartList.cu");
				req.setAttribute("listnum", 7);
				guestService service = new guestServiceImpl();
				service.getCartList(req, res);
				
				viewPage="/common/main.jsp";
				//장바구니 추가
			}else if(url.equals("/getCart.cu")) {
				
				guestService service = new guestServiceImpl();
				service.cartInput(req, res);
				viewPage="/common/getCartPro.jsp";
				//장바구니 삭제처리
			}else if(url.equals("/deleteCart.cu")) {
				req.setAttribute("listnum", 7);
				guestService service = new guestServiceImpl();
				service.deleteCart(req, res);
				viewPage="/guest/deleteCartPro.jsp";
				//결제폼
			}else if(url.equals("/purchaseForm.cu")) {
				System.out.println("purchase");
				req.setAttribute("listnum", 8);
				guestService service = new guestServiceImpl();
				service.purchaseForm(req, res);
				
				viewPage="/common/main.jsp";
				//구매 처리
			}else if(url.equals("/orderPro.cu")) {
				System.out.println("/orderPro.cu");
				
				guestService service = new guestServiceImpl();
				service.purchasePro(req,res);
				
				viewPage="/common/purchasePro.jsp";
				// 주문/배송정보 조회
			}else if(url.equals("/orderList.cu")) {
				System.out.println("/orderList.cu");
				req.setAttribute("listnum", 9);
				guestService service = new guestServiceImpl();
				service.getOrderList(req, res);
				
				viewPage="/common/main.jsp";
				//즉시구매 창
			}else if(url.equals("/Immediate.cu")) {
				System.out.println("/Immediate.cu");
				guestService service = new guestServiceImpl();
				service.Immediate(req, res);
				req.setAttribute("listnum", 10);
				viewPage="/common/main.jsp";
				//바로구매처리
			}else if(url.equals("/ImmediatePro.cu")) {
				System.out.println("/ImmediatePro.cu");
				guestService service = new guestServiceImpl();
				service.ImmediatePro(req, res);
				viewPage="/common/purchasePro.jsp";
				//환불 승인 처리
			}else if(url.equals("/Receiptconfirm.cu")) {
				System.out.println("/Receiptconfirm.cu");
				req.setAttribute("listnum", 9);
				guestService service = new guestServiceImpl();
				service.Receiptconfirm(req, res);
				viewPage="orderList.cu";
			}*/
}
