<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="subTitle" value="查詢名牌ch05_05" scope="session"/>

<%-- <c:if test="${empty LoginOK}"> --%>
<%-- 	<c:set var="target" value="${pageContext.request.servletPath}" scope="session"/> --%>
<%-- 	<c:redirect url="/ch06_01/login.jsp"/> --%>
<%-- </c:if> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${subTitle}</title>
</head>
<body>
<h2>${subTitle}</h2>
<!--action="應用系統根目錄" 幫忙補齊網址(專案名/資料夾名)，但到servlet.java那又只加專案名，所以對應檔的urlPatterns要再加上資料夾名-->
<form action="goodLuck.jsp" method="post">		
	訪客姓名:<input type="text" name="visitor" size="10"><p/>
		  <input type="submit" value="確定"><p/>

</form>
</body>
</html>