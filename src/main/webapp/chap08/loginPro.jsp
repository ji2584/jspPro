<%@page import="chap08.KicMember"%>
<%@page import="chap08.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String id = request.getParameter("id");
String pass = request.getParameter("pass");
MemberDao md = new MemberDao();
KicMember mem = md.oneMember(id);
String msg = "아이디를 확인하세요";
String url = "loginForm.jsp";
if(mem !=null){
	if(pass.equals(mem.getPass())){
		session.setAttribute("id",id);
		msg = mem.getName()+"님이 로그인하셧습니다";
		url = "index.jsp";
	}else {
		msg = "비밀번호를 확인하세요 ";
	}
}

%>
<script>
alert("<%=msg%>")
location.href="<%=url%>"




</script>
</body>
</html> 