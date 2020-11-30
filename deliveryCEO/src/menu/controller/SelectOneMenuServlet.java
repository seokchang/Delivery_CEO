package menu.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import menu.model.service.MenuService;
import menu.model.vo.Menu;

/**
 * Servlet implementation class SelectOneMenuServlet
 */
@WebServlet(name = "SelectOneMenu", urlPatterns = { "/selectOneMenu" })
public class SelectOneMenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SelectOneMenuServlet() {
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
		int menuNo = Integer.parseInt(request.getParameter("menuNo"));

		// 2. 비즈니스 로직
		Menu menu = new MenuService().selectOneMenu(menuNo);

		// 3. 결과처리
		RequestDispatcher rd = request.getRequestDispatcher("/CEO/WEB-INF/views/menu/updateMenu.jsp");

		request.setAttribute("menu", menu);
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
