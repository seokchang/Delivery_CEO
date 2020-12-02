package order.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCTemplate;
import order.model.vo.Order;
import order.model.vo.OrderPageData;

public class OrderDao {
	public int getTotalOrder(Connection conn, String ceoId) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		int result = 0;
		String query = "SELECT count(*) cnt FROM ord_db WHERE ord_store_no IN (SELECT store_no FROM store_db WHERE store_ceo=?)";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceoId);
			rset = pstmt.executeQuery();

			if (rset.next())
				result = rset.getInt("cnt");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}

		return result;
	}

	public ArrayList<Order> selectAllOrder(Connection conn, String ceoId, int start, int end) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		ArrayList<Order> listOrder = new ArrayList<Order>();
		String query = "SELECT * FROM ( SELECT ROWNUM AS rnum, o.* FROM (SELECT * FROM ord_db WHERE ord_store_no IN (SELECT store_no FROM store_db WHERE store_ceo=?) ORDER BY 1 DESC) o) WHERE rnum BETWEEN ? AND ?";

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ceoId);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Order order = new Order();

				order.setRowNum(rset.getInt("rnum"));
				order.setOrderNo(rset.getInt("ord_no"));
				order.setOrderTotalPrice(rset.getInt("ord_t_price"));
				order.setOrderClientId(rset.getString("ord_cli_id"));
				order.setOrderStoreNo(rset.getInt("ord_store_no"));
				order.setOrderAddress(rset.getString("ord_addr"));
				order.setOrderRequest(rset.getString("ord_sub"));
				order.setOrderCouponId(rset.getInt("ord_cp_id"));
				order.setOrderDate(rset.getString("ord_date"));

				listOrder.add(order);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCTemplate.close(rset);
			JDBCTemplate.close(pstmt);
		}
		return listOrder;
	}
}
