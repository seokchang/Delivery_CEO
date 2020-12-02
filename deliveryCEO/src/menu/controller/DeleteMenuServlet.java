package menu.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import menu.model.service.MenuService;

/**
 * Servlet implementation class DeleteMenuServlet
 */
@WebServlet(name = "DeleteMenu", urlPatterns = { "/deleteMenu" })
public class DeleteMenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteMenuServlet() {
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
		int menuNo = Integer.parseInt(request.getParameter("menuNo"));
		int storeNo = Integer.parseInt(request.getParameter("storeNo"));
		String storeName = request.getParameter("storeName");

		// 2. 비즈니스 로직
		int result = new MenuService().deleteMenu(menuNo);

		// 3. 결과처리
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");

		if (result > 0) {
			request.setAttribute("msg", "메뉴 삭제 성공");
		} else {
			request.setAttribute("msg", "메뉴 삭제 실패");
		}
		request.setAttribute("loc", "/CEO/selectAllMenu?storeNo=" + storeNo + "&storeName=" + storeName + "&reqPage=1");
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
