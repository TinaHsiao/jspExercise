<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="myBean" class="ch05_04.LotteryBean" scope="page"/>
<%-- 	<jsp:setProperty name="myBean" property="lowerBound" value="1" /> --%>
<%-- 	<jsp:setProperty name="myBean" property="upperBound" value="49"/> --%>
<%-- 	<jsp:setProperty name="myBean" property="ballNumber" value="6"/> --%>
<%-- </jsp:useBean> --%>
<c:set target="${myBean}" property="lowerBound" value="1" />
<c:set target="${myBean}" property="upperBound" value="49"/>
<c:set target="${myBean}" property="ballNumber" value="6"/>

<%	request.setCharacterEncoding("UTF-8");%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>報明牌</title>
</head>
<body>
<H2>卜籤求明牌ch05_04</H2>
${param.visitor}您好<br>
您的明牌為:
${myBean.luckyNumbers}<br>


</body>
</html>