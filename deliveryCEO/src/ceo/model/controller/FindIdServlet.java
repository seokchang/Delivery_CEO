package ceo.model.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ceo.model.service.CeoService;
import ceo.model.vo.Ceo;

/**
 * Servlet implementation class FindIdServlet
 */
@WebServlet(name = "FindId", urlPatterns = { "/findId" })
public class FindIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FindIdServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.인코딩
		// 2.view에서 온 데이터 저장

		String ceoName = request.getParameter("name");
		String ceoTel = request.getParameter("phone");
		System.out.println("view >" + ceoName);
		System.out.println("view >" + ceoTel);
		// 3.비즈니스로직
		Ceo ceo = new CeoService().searchId(ceoName, ceoTel);
		System.out.println("ceos : " + ceo);
		
		// System.out.println("findServlet>"+ceo.getCeoId());
		// 4. 뷰처리
		if (ceo != null) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/ceo/findId.jsp");
			request.setAttribute("ceo", ceo);
			rd.forward(request, response);
		} else {					
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/ceo/findId.jsp");
			rd.forward(request, response);
		}
		
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
