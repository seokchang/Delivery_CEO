package order.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import common.JDBCTemplate;
import order.model.dao.OrderDao;
import order.model.vo.Order;
import order.model.vo.OrderPageData;

public class OrderService {

	public OrderPageData selectAllOrder(String ceoId, int reqPage) {
		// TODO Auto-generated method stub
		Connection conn = JDBCTemplate.getConnection();

		OrderDao dao = new OrderDao();

		int totalOrder = dao.getTotalOrder(conn, ceoId);
		int numPerPage = 10;
		int totalPage = (totalOrder / numPerPage) == 0 ? (totalOrder / numPerPage) : (totalOrder / numPerPage) + 1;
		int start = (reqPage - 1) * numPerPage + 1;
		int end = reqPage * numPerPage;

		ArrayList<Order> listOrder = dao.selectAllOrder(conn, ceoId, start, end);

		// 페이징 처리
		int pageNaviSize = 5;
		String pageNavi = "";
		int pageNo = ((reqPage - 1) / pageNaviSize) * pageNaviSize + 1;

		// 이전 버튼 만들기
		if (pageNo != 1) {
			pageNavi += "<a class='btn' href='/CEO/selectAllOrder?ceoId=" + ceoId + "&reqPage=" + (pageNo - 1)
					+ "'>이전</a>";
		}

		// 숫자 버튼 만들기
		for (int i = 0; i < pageNaviSize; i++) {
			if (reqPage == pageNo) {
				pageNavi += "<span class='selectPage'>" + pageNo + "</span>";
			} else {
				pageNavi += "<a class='btn' href='/CEO/selectAllOrder?ceoId=" + ceoId + "&reqPage=" + pageNo + "'>"
						+ pageNo + "</a>";
			}
			pageNo++;
			if (pageNo > totalPage)
				break;
		}

		// 다음 버튼 만들기
		if (pageNo <= totalPage) {
			pageNavi += "<a class='btn' href='/CEO/selectAllOrder?ceoId=" + ceoId + "&reqPage=" + pageNo + "'>다음</a>";
		}

		OrderPageData opd = new OrderPageData(listOrder, pageNavi);
		JDBCTemplate.close(conn);

		return opd;
	}
}
