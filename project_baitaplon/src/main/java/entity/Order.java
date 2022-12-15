package entity;

public class Order extends Product{
	private int orderId;
	private int aid;
	private int qunatity;
	private String date;
	
	public Order() {
	}
	
	public Order(int orderId, int aid, int qunatity, String date) {
		super();
		this.orderId = orderId;
		this.aid = aid;
		this.qunatity = qunatity;
		this.date = date;
	}

	public Order(int aid, int qunatity, String date) {
		super();
		this.aid = aid;
		this.qunatity = qunatity;
		this.date = date;
	}

	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	
	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}

	public int getQunatity() {
		return qunatity;
	}
	public void setQunatity(int qunatity) {
		this.qunatity = qunatity;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
}
