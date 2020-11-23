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
 * Servlet implementation class JoinServlet
 */
@WebServlet(name = "Join", urlPatterns = { "/join" })
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//1.인코딩(생략가능)
			//2.view에서 온 데이터 저장
			Ceo ceo = new Ceo();
			ceo.setCeoId(request.getParameter("ceoId"));
			ceo.setCeoPw(request.getParameter("ceoPw"));
			ceo.setCeoName(request.getParameter("ceoName"));
			ceo.setCeoTel(request.getParameter("ceoTel"));
			ceo.setCeoAddr(request.getParameter("ceoAddr"));
			//3.비즈니스 로직
			int result = new CeoService().insertCeo(ceo);
			//4.결과처리
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");
			request.setAttribute("loc", "/");
			if(result>0) {
				request.setAttribute("msg", "회원가입 축하드립니다.");
			}else {
				request.setAttribute("msg", "회원가입을 다시해주세요.");
			}
			rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
