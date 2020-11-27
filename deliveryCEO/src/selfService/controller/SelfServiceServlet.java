package selfService.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ceo.model.vo.Ceo;
import review.model.service.ReviewService;
import review.model.vo.Review;
import store.model.service.StoreService;
import store.model.vo.Store;

/**
 * Servlet implementation class SelfServiceServlet
 */
@WebServlet(name = "SelfService", urlPatterns = { "/selfService" })
public class SelfServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SelfServiceServlet() {
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
		HttpSession session = request.getSession(false);

		Ceo loginCEO = (Ceo) session.getAttribute("Ceo");

		RequestDispatcher rd = null;

		if (loginCEO == null) {
			rd = request.getRequestDispatcher("/views/ceo/login.jsp");
		} else {
			ArrayList<Store> listStore = new StoreService().selectAllStore(loginCEO.getCeoId());
			ArrayList<Review> listReview = new ReviewService().selectAllReview(loginCEO.getCeoId());

			rd = request.getRequestDispatcher("/WEB-INF/views/pageSelfService/selfService.jsp");
			request.setAttribute("Ceo", loginCEO);
			request.setAttribute("listStore", listStore);
			request.setAttribute("listReview", listReview);
		}
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
