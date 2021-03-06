<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL的九九乘法表</title>
</head>
<body>

<c:forEach var="x" begin="1" end="9" varStatus="vs">
	<c:if test="${vs.first}">
		<c:out value='<table border="1">' escapeXml="false"/>
		<tr><th colspan="13">JSTL的九九乘法表</th></tr>
	</c:if>
	<c:choose>
		<c:when test="${vs.count % 2 == 0}">
			<c:set var="color" value="#FFFFBB"/>
		</c:when>
		<c:otherwise>
			<c:set var="color" value="#FFAA33"/>
		</c:otherwise>
	</c:choose>	
<%-- 	<c:set var="color" value="#FFAA33"/> --%>
<%-- 	<c:if test="${vs.count % 2 == 0}"> --%>
<%-- 		<c:set var="color" value="#FFFFBB"/> --%>
<%-- 	</c:if> --%>
	
	<tr bgcolor="${color}">
	<c:forEach var="y" begin="1" end="9">
		<td> ${x}*${y}=${x*y} </td>
	</c:forEach>
	<td>${vs.first}</td>
	<td>${vs.last}</td>
	<td>${vs.index}</td>
	<td>${vs.count}</td>
	</tr>
	
	<c:if test="${vs.last}">
		<c:out value='</table>' escapeXml="false"/>
	</c:if>
</c:forEach>



</body>
</html>