package ceo.model.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ceo.model.service.CeoService;
import ceo.model.vo.Ceo;

/**
 * Servlet implementation class MypageServlet
 */
@WebServlet(name = "Mypage", urlPatterns = { "/mypage" })
public class MypageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MypageServlet() {
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
		// 2.view에서 온데이터값 저장
		String ceoId = request.getParameter("ceoId");
		// 3.비지니스 로직
		System.out.println("값" + ceoId);

		Ceo ceo = new CeoService().selectOneCeo(ceoId);
		// 4. 뷰처리
		if (ceo != null) {
			request.setAttribute("ceo", ceo);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/ceo/mypage.jsp");
			rd.forward(request, response);
		} else {
			response.sendRedirect("/CEO");
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
