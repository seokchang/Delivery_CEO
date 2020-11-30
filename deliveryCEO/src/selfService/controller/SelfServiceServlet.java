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
import notice.model.service.NoticeService;
import notice.model.vo.Notice;
import review.model.service.ReviewService;
import review.model.vo.Review;
import review.model.vo.ReviewPageData;
import store.model.service.StoreService;
import store.model.vo.Store;
import store.model.vo.StorePageData;

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
			ArrayList<Notice> listNotice = new NoticeService().selectAllNotice();
			int reqPage = Integer.parseInt(request.getParameter("reqPage"));
			StorePageData spd = new StoreService().selectAllStore(loginCEO.getCeoId(), reqPage);
			ReviewPageData rpd = new ReviewService().selectAllReview(loginCEO.getCeoId(), reqPage);

			rd = request.getRequestDispatcher("/WEB-INF/views/pageSelfService/selfService.jsp");
			request.setAttribute("Ceo", loginCEO);
			request.setAttribute("listNotice", listNotice);
			request.setAttribute("listStore", spd.getListStore());
			request.setAttribute("listReview", rpd.getListReview());
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
