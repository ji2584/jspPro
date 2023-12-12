<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String passwd  = request.getParameter("passwd");

if(id.equals(passwd)){
session.setAttribute("id",id);
response.sendRedirect("sessionLoginConfirm.jsp");
}else{%>
<script>
alert("아이디와 비밀번호가 맞지 않습니다.");
history.go(-1);
</script>
<%}
%>
<%= id %> 로 입력되었습니다.