<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ddd</title>
</head>
<body>


<%
Enumeration attr = application.getAttributeNames();
while(attr.hasMoreElements()){
String attrName = (String)attr.nextElement();
String attrValue = (String)session.getAttribute(attrName);
out.println("세션의 속성명은" + attrName + "이고");
out.println("세션의 속성값은" + attrValue + "이다<br>");
}

%>





</body>
</html>