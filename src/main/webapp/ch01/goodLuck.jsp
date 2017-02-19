<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>報明牌</title>
</head>
<body>
<H2>卜籤求明牌</H2>
${visitName}，您好<br>
您的名牌為:${luckyNumber}
<table border="1">
	<tr>
		<td>
			1
		</td>
		<td>
			2
		</td>
		<td>
			3
		</td>
		<td>
			4
		</td>
		<td>
			5
		</td>
		<td>
			6
		</td>
	</tr>
	<tr>
		<c:forEach items="${luckyNumber}" var="item" >
			<td>
				<c:out value="${item}" />
			</td>
		</c:forEach>
	</tr>
	<tr>
		<c:forEach items="${luckyNumber}" var="item" >
			<td>
				<c:choose>
					<c:when test="${item <=15}">
				       	<span style="color:red;">
				       		<c:out value="${item}" />
				       	</span>
				    </c:when>
				    <c:when test="${item >=30}">
				       	<span style="color:blue;"><c:out value="${item}" /></span>
				    </c:when>
				    <c:otherwise>
				        <span ><c:out value="${item}" /></span>
				    </c:otherwise>
				</c:choose>
			</td>
		</c:forEach>
	</tr>
	<tr>
		<% 
			java.util.Collection<Integer> luckyNumber = (java.util.Collection<Integer>)request.getAttribute("luckyNumber");
			for(Integer ball:luckyNumber){
				out.print("<td style='color:green'>"+ball+"</td>");
			}
		%>
	</tr>
	<tr>
		<c:forEach items="${luckyNumber}" var="ball">
			<td>
				<c:if test="${ ball > 30 }">
					<span style="color:blue">
						<c:out value="${ball}"/>
					</span>
				</c:if>
				<c:if test="${ball <=30 }">
					<span style="color:red">
						<c:out value="${ball}"/>
					</span>
				</c:if>
				
			</td>
		</c:forEach>
	</tr>
</table>
</body>
</html>