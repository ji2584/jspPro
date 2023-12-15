package chap11;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap08.KicMember;
import chap08.MemberDao;
import chap12.CommandHandler;

@WebServlet("/memberinfo")
public class Model2Servlet implements CommandHandler{
	
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		MemberDao md = new MemberDao();
		KicMember mem = null;
		try {
			mem=md.oneMember("ddf");
			System.out.println(mem);
		} catch(SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("mem",mem);
		
		return "/chap11_servlet/memberinfo.jsp";
		
		
		
		
	}
	
}