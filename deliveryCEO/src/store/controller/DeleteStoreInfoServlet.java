package store.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import store.model.service.StoreService;

/**
 * Servlet implementation class DeleteStoreInfoServlet
 */
@WebServlet(name = "DeleteStoreInfo", urlPatterns = { "/deleteStoreInfo" })
public class DeleteStoreInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteStoreInfoServlet() {
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
		int result = new StoreService().deleteStoreInfo(ceoId, storeNo);

		// 3. 결과처리
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");

		if (result > 0) {
			request.setAttribute("msg", "가게 정보 삭제 완료");
		} else {
			request.setAttribute("msg", "가게 정보 삭제 실패");
		}
		request.setAttribute("loc", "/CEO");
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
