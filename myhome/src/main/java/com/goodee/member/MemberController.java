package com.goodee.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/member")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
  //http://localhost:8080/myhome/member?cmd=insert&userid=test&pwd=1234&username=Tom&phone=1111&email=44444
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글처리
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String cmd = request.getParameter("cmd");
		if(cmd==null || cmd.equals(""))
			cmd="insert";
		
		if(cmd.equals("insert"))
		{
			doInsert(request, response);
		}
		else if(cmd.equals("write")) {   //   /myhome/member?cmd=write
			
			String page = "/member/member_register.jsp";
			RequestDispatcher rd = request.getRequestDispatcher(page);
			rd.forward(request, response);
		} else if(cmd.equals("idcheck")) {
			
			doIdCheck(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected void doInsert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDto dto = new MemberDto();
		dto.setUserid(request.getParameter("userid"));
		dto.setPwd(request.getParameter("pwd"));
		dto.setUsername(request.getParameter("username"));
		dto.setPhone(request.getParameter("phone"));
		dto.setEmail(request.getParameter("email"));
		
		
		MemberDao memberDao = new MemberDao();
		memberDao.insert(dto);
		
		PrintWriter out = response.getWriter();
		// {"result":success}
		out.println("{\"result\":\"success\"}");
	}
	
	
	protected void doIdCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("userid");
		
		MemberDao memberDao = new MemberDao();
		String check = memberDao.isUse(userid);
		// 사용가능하면 Y 반환, 불가능하면 N반환하는 함수를 만들어야함
		
		PrintWriter out= response.getWriter();
		out.println("{\"check\":\"" + check + "\"}");
		
	}
	
	
	
	
}
