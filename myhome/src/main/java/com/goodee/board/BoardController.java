package com.goodee.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.Data;

import org.apache.jasper.tagplugins.jstl.core.If;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants.DangerousMethod;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("/board.do")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		// BoardDao dao = new BoardDao();
		// request.setAttribute("boardList", dao.getList());
		// RequestDispatcher rd = request.getRequestDispatcher("/board/board_list.jsp");
		// rd.forward(request, response);
		// 코드가 위에 코드가 있다가 BoardDao에서 getview 메서드 생성하면 밑에 if문으로 변경해줌
		
		// 이게 mvc 기법? 나눠서 한다는 말인가?
		String cmd = request.getParameter("cmd");
		if(cmd == null || cmd.equals(""))
			cmd="list";
		if(cmd.equals("list")){
			BoardDao dao = new BoardDao();
			request.setAttribute("boardList", dao.getList());
			
			RequestDispatcher rd = request.getRequestDispatcher("/board/board_list.jsp");
			
			rd.forward(request, response);
		} //http://127.0.0.1:8080/myhome/board.do?cmd=view&id=1
		else if(cmd.equals("view")) {
			String id = request.getParameter("id");
			BoardDao dao = new BoardDao();
			request.setAttribute("boardDto", dao.getView(id));
			
			RequestDispatcher rd = request.getRequestDispatcher("/board/board_view.jsp");
			
			rd.forward(request, response);
		} else if(cmd.equals("write")){
			// 쓰기 페이지로 이동하기
			RequestDispatcher rd =
					request.getRequestDispatcher("/board/board_write.jsp");
			
			rd.forward(request, response);
		}
		else if(cmd.equals("save")) {
			
			BoardDao dao = new BoardDao();
			BoardDto dto = new BoardDto();
			dto.setTitle(request.getParameter("title"));
			dto.setWriter(request.getParameter("writer"));
			dto.setContents(request.getParameter("contents"));
			dao.insert(dto);
			response.sendRedirect(request.getContextPath()+"/board.do?cmd=list");
			
			// 서블릿에서 forward는 jsp를 호출하고 sendRedirect는 
			// 넘어온 모든 정보를 없애고 새로운 url을 호출한다.
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
