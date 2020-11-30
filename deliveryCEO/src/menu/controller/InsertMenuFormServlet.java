package menu.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertMenuFormServlet
 */
@WebServlet(name = "InsertMenuForm", urlPatterns = { "/insertMenuForm" })
public class InsertMenuFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InsertMenuFormServlet() {
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
		// 1. view에서 보낸 데이터 저장
		int storeNo = Integer.parseInt(request.getParameter("storeNo"));
		String storeName = request.getParameter("storeName");
		// 2. 비즈니스 로직
		// 3. 결과처리
		RequestDispatcher rd = request.getRequestDispatcher("/CEO/WEB-INF/views/menu/insertMenu.jsp");

		request.setAttribute("storeNo", storeNo);
		request.setAttribute("storeName", storeName);

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
