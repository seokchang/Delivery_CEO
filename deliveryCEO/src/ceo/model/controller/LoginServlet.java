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
 * Servlet implementation class LoginServlet
 */
@WebServlet(name = "Login", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//1. 인코딩
			//2. view에서 온 데이터 저장
			Ceo ceo = new Ceo();
			ceo.setCeoId(request.getParameter("ceoId"));
			ceo.setCeoPw(request.getParameter("ceoPw"));
			//3. 비즈니스 로직
			Ceo loginCeo = new CeoService().selectOneCeo(ceo);
			//4. 결과 처리
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");
			request.setAttribute("loc", "/");
			if(loginCeo != null) {
				HttpSession session = request.getSession();
				session.setAttribute("Ceo", loginCeo);
				request.setAttribute("msg","로그인성공");
				request.setAttribute("loc", "/");
			}else {
				request.setAttribute("msg","아이디 혹은 비밀번호를 확인하세요.");
				request.setAttribute("loc", "/views/ceo/login.jsp");	
			}
			rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, `HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
