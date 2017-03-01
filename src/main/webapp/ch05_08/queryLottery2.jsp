<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="subTitle" value="查詢明牌(Lab05_08)" scope="session"/>

<%-- <c:if test="${empty LoginOK}"> --%>
<%-- 	<c:set var="target" value="${pageContext.request.servletPath}" scope="session"/> --%>
<%-- 	<c:redirect url="/ch06_01/login.jsp"/> --%>
<%-- </c:if> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${subTitle}</title>
</head>
<body> 
<h2>${subTitle}</h2> 
<Form  action="goodLuck.jsp" method="POST">
      訪客姓名:<input type="text" name="visitor"  size="10"><BR><P/>
   <input type="radio" name="numberType" value="BIG" CHECKED="">大樂透(六個介於1-49的數字)<br>
   <input type="radio" name="numberType" value="MID">中樂透(六個介於1-42的數字)<br>
   <input type="radio" name="numberType" value="SMALL">小樂透(五個介於1-39的數字)<br>
   <input type="radio" name="numberType" value="FOURSTARS">四星彩(四個可重複，介於0-9的數字)<br>   
   <P/>
   <input type="submit" value="確定">  
</Form>
</body>
</html>