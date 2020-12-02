package order.model.vo;

public class Order {
	private int rowNum;
	private int orderNo;
	private int orderTotalPrice;
	private String orderClientId;
	private int orderStoreNo;
	private String orderAddress;
	private String orderRequest;
	private int orderCouponId;
	private String orderDate;

	public Order() {
		// TODO Auto-generated constructor stub
	}

	public Order(int rowNum, int orderNo, int orderTotalPrice, String orderClientId, int orderStoreNo,
			String orderAddress, String orderRequest, int orderCouponId, String orderDate) {
		super();
		this.rowNum = rowNum;
		this.orderNo = orderNo;
		this.orderTotalPrice = orderTotalPrice;
		this.orderClientId = orderClientId;
		this.orderStoreNo = orderStoreNo;
		this.orderAddress = orderAddress;
		this.orderRequest = orderRequest;
		this.orderCouponId = orderCouponId;
		this.orderDate = orderDate;
	}

	public int getRowNum() {
		return rowNum;
	}

	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getOrderTotalPrice() {
		return orderTotalPrice;
	}

	public void setOrderTotalPrice(int orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}

	public String getOrderClientId() {
		return orderClientId;
	}

	public void setOrderClientId(String orderClientId) {
		this.orderClientId = orderClientId;
	}

	public int getOrderStoreNo() {
		return orderStoreNo;
	}

	public void setOrderStoreNo(int orderStoreNo) {
		this.orderStoreNo = orderStoreNo;
	}

	public String getOrderAddress() {
		return orderAddress;
	}

	public void setOrderAddress(String orderAddress) {
		this.orderAddress = orderAddress;
	}

	public String getOrderRequest() {
		return orderRequest;
	}

	public void setOrderRequest(String orderRequest) {
		this.orderRequest = orderRequest;
	}

	public int getOrderCouponId() {
		return orderCouponId;
	}

	public void setOrderCouponId(int orderCouponId) {
		this.orderCouponId = orderCouponId;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
}
