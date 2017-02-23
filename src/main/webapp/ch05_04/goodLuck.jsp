<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<<jsp:useBean id="myBean" class="ch05_04.LotteryBean" scope="page">
	<jsp:setProperty name="myBean" property="lowerBound" value="1">
	<jsp:setProperty name="myBean" property="upperBound" value="49">
	<jsp:setProperty name="myBean" property="ballNumber" value="6">
</jsp:useBean>
<%
request.setCharacterEncoding("UTF-8");
%>
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
<jsp:getProperty name="myBean" property="luckyNumbers"/><br>


<br>
<br>
<br>
<br>
<br>
<br>
<hr>
<H2>卜籤求明牌</H2>
${visitName}，您好-1<br>
您的明牌為:${luckyNumber}<br>

<hr>
<%
String name = (String)request.getAttribute("visitName");
java.util.Collection coll = (java.util.Collection)request.getAttribute("luckyNumber");

out.println(name+"，您好-2<br>");
out.println("您的明牌為:"+coll+"<br>");
%>



<hr>
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