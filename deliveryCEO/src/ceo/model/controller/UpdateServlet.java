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
 * Servlet implementation class UpdateServlet
 */
@WebServlet(name = "Update", urlPatterns = { "/update" })
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateServlet() {
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
		// 2.view에서 온값 저장
		String ceoId = request.getParameter("ceoId");
		String ceoPw = request.getParameter("ceoPw");
		String ceoName = request.getParameter("ceoName");
		String ceoTel = request.getParameter("ceoTel");
		String ceoAddr = request.getParameter("ceoAddr");
		String ceoEnroll = request.getParameter("ceoEnroll");
		// 3.비즈니스 로직
		Ceo ceo = new Ceo(ceoId, ceoPw, ceoName, ceoTel, ceoAddr, ceoEnroll);
		int result = new CeoService().updateCeo(ceo);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");

		if (result > 0) {
			request.setAttribute("msg", "회원 정보 수정 성공");
		} else {
			request.setAttribute("msg", "회원 정보 수정 실패");
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
