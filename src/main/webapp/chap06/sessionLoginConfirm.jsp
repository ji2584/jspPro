<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
  	try{
  		if(session.getAttribute("id")==null)
  		{response.sendRedirect("sessionMemberLogin.jsp");}
  	}catch(Exception e){}
    %>
    <html>
<head>
<meta charset="UTF-8">
<title>쿠키를 사용한 간단한 회원인증</title>
</head>
<body>
<form method="post" action="sessionLogout.jsp" >
<table width="300" border = "1" align= "center">
<tr>
<td align="center"><b><%=session.getAttribute("id")%></b>님이 로그인하셧습니다.</td>
</tr>
<tr>
<td align="center"><input type="submit" value="로그아웃"></td>
</tr>
</table>
</form>
</body>
</html>