package jsp.project.mvc.vo;

import java.sql.Timestamp;

public class ordersVO {
    private String order_id;
	private String user_id;
    private String product_id;
    private String user_name;
    private String user_postnum;
    private String user_address1;
    private String user_address2;
    private String product_detail;
    private String product_name;
    private String kind;
    private String payment;
    public String getProduct_imgpath() {
		return product_imgpath;
	}
	public void setProduct_imgpath(String product_imgpath) {
		this.product_imgpath = product_imgpath;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	private String quantity;
    private String paystat;
	private String product_imgpath;
	private int product_price;
	private Timestamp reg_date;
    public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_postnum() {
		return user_postnum;
	}
	public void setUser_postnum(String user_postnum) {
		this.user_postnum = user_postnum;
	}
	public String getUser_address1() {
		return user_address1;
	}
	public void setUser_address1(String user_address1) {
		this.user_address1 = user_address1;
	}
	public String getUser_address2() {
		return user_address2;
	}
	public void setUser_address2(String user_address2) {
		this.user_address2 = user_address2;
	}
	public String getProduct_detail() {
		return product_detail;
	}
	public void setProduct_detail(String product_detail) {
		this.product_detail = product_detail;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getPaystat() {
		return paystat;
	}
	public void setPaystat(String paystat) {
		this.paystat = paystat;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
}