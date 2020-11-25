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
 * Servlet implementation class FindPwServlet
 */
@WebServlet(name = "FindPw", urlPatterns = { "/findPw" })
public class FindPwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindPwServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				//1. 인코딩 생략
				//2. view 에서 온데이터저장	
					String ceoId = request.getParameter("id");
					String ceoTel = request.getParameter("phone");
					String ceoName = request.getParameter("name");
				//3.비즈니스 로직쓰
				Ceo ceo = new CeoService().searchPw(ceoId,ceoTel,ceoName);
				//4. 결과처리
					if(ceo !=null) {
						RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/ceo/findPw.jsp");
						request.setAttribute("ceo",ceo );
						rd.forward(request,response);
					}else {
						request.setAttribute("msg", "정확한 정보를 입력해 주세요.!");
						request.setAttribute("loc", "/");
						RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/common/msg.jsp");
						rd.forward(request,response);
					}
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
