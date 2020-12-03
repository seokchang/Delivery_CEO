package menu.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import menu.model.service.MenuService;
import menu.model.vo.Menu;

/**
 * Servlet implementation class InsertMenuServlet
 */
@WebServlet(name = "InsertMenu", urlPatterns = { "/insertMenu" })
public class InsertMenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InsertMenuServlet() {
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
		if (!ServletFileUpload.isMultipartContent(request)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");

			request.setAttribute("msg", "사진 작성 오류[enctype]");
			request.setAttribute("loc", "/CEO/WEB-INF/views/pageSelfService/selfService.jsp");
			rd.forward(request, response);

			return;
		}

		String root = "C:\\Resources";
		String saveDirectory = root + "\\02_menu";
		int maxSize = 10 * 1024 * 1024;

		MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8",
				new DefaultFileRenamePolicy());

		String storeName = mRequest.getParameter("storeName");
		Menu menu = new Menu();

		menu.setMenuStoreNo(Integer.parseInt(mRequest.getParameter("storeNo")));
		menu.setMenuName(mRequest.getParameter("menuName"));
		menu.setMenuPrice(Integer.parseInt(mRequest.getParameter("menuPrice")));
		menu.setMenuFileName(mRequest.getOriginalFileName("fileName"));
		menu.setMenuFilePath(mRequest.getFilesystemName("fileName"));
		menu.setMenuDetail(mRequest.getParameter("menuDetail"));

		// 2. 비즈니스 로직
		int result = new MenuService().insertMenu(menu);

		// 3. 결과처리
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");

		if (result > 0) {
			request.setAttribute("msg", "메뉴 등록 성공");
		} else {
			request.setAttribute("msg", "메뉴 등록 실패");
		}
		request.setAttribute("loc", "/CEO/selectAllMenu?storeNo=" + menu.getMenuStoreNo() + "&storeName=" + storeName + "&reqPage=1");
		// response.sendRedirect("/CEO/selectAllMenu");
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
