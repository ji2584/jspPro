package chap12;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloHandler3 implements CommandHandler {
	
	
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
			req.setAttribute("hello2", "안녕하세요23");

				return "/WEB-INF/view/hello2.jsp";

}
	
	
	
	
	

}
