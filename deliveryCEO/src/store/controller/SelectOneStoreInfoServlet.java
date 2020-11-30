package store.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import store.model.service.StoreService;
import store.model.vo.Store;

/**
 * Servlet implementation class SelectOneStoreInfoServlet
 */
@WebServlet(name = "SelectOneStoreInfo", urlPatterns = { "/selectOneStoreInfo" })
public class SelectOneStoreInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SelectOneStoreInfoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1. view에서 받은 데이터 저장
		String ceoId = request.getParameter("ceoId");
		int storeNo = Integer.parseInt(request.getParameter("storeNo"));

		// 2. 비즈니스 로직
		Store store = new StoreService().selectOneStore(ceoId, storeNo);

		// 3. 결과처리
		RequestDispatcher rd = request.getRequestDispatcher("/CEO/WEB-INF/views/store/updateStore.jsp");

		request.setAttribute("store", store);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
