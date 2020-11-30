package store.controller;

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

import store.model.service.StoreService;
import store.model.vo.Store;

/**
 * Servlet implementation class UpdateStoreInfoServlet
 */
@WebServlet(name = "UpdateStoreInfo", urlPatterns = { "/updateStoreInfo" })
public class UpdateStoreInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateStoreInfoServlet() {
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
		// 파일 업로드 형식이 맞는지 검사
		if (!ServletFileUpload.isMultipartContent(request)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");

			request.setAttribute("msg", "사진 작성 오류[enctype]");
			request.setAttribute("loc", "/CEO/WEB-INF/views/pageSelfService/selfService.jsp");
			rd.forward(request, response);

			return;
		}

		// 파일 업로드
		String root = getServletContext().getRealPath("/");
		String saveDirectory = root + "/upload/photo";
		int maxSize = 10 * 1024 * 1024;

		MultipartRequest mRequest = new MultipartRequest(request, saveDirectory, maxSize, "UTF-8",
				new DefaultFileRenamePolicy());

		Store store = new Store();

		store.setStoreCateId(Integer.parseInt(mRequest.getParameter("storeCateId")));
		store.setStoreCEO(mRequest.getParameter("storeCEO"));
		store.setStoreNo(Integer.parseInt(mRequest.getParameter("storeNo")));
		store.setStoreName(mRequest.getParameter("storeName"));
		store.setStoreAddr(mRequest.getParameter("storeAddr"));
		store.setStoreTel(mRequest.getParameter("storeTel"));
		store.setStoreStartTime(mRequest.getParameter("storeStartTime"));
		store.setStoreEndTime(mRequest.getParameter("storeEndTime"));
		store.setStoreRest(mRequest.getParameter("storeRest"));
		store.setStoreFileName(mRequest.getOriginalFileName("fileName"));
		store.setStoreFilePath(mRequest.getFilesystemName("fileName"));
		store.setStoreDet(mRequest.getParameter("storeDetail"));

		// 2. 비즈니스 로직
		int result = new StoreService().updateStoreInfo(store);

		// 3. 결과처리
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/msg.jsp");

		if (result > 0) {
			request.setAttribute("msg", "가게 정보 수정 성공");
		} else {
			request.setAttribute("msg", "가게 정보 수정 실패");
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
