<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch05_07.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSTL-c:forEach</title>
</head>
<body>
<%--
forEach01
本網頁必須印出下列圖形：
 * 
 * * 
 * * * 
 * * * * 
 * * * * * 
 * * * * * * 
 * * * * * * * 
 * * * * * * * * 
 * * * * * * * * * 
 --%>
<h2>forEach01</h2>
<c:forEach var="x" begin="1" end="9" >
	<c:forEach var="i" begin="1" end="${x}">
		<c:out value="*"/>
	</c:forEach>
	<br>
</c:forEach>
<BR>

<hr>
<h2>forEach02</h2>
<%
  Cat garfield  = new Cat(10, "嘉菲(Array)");
  Cat kitty     = new Cat(3,   "凱蒂(Array)");
  Cat pili      = new Cat(3,   "霹靂(Array)");
  Cat[] ca = {garfield, kitty, pili};
  request.setAttribute("CatArray", ca);
%>
  請於網頁內用表格的方式顯示三隻貓的姓名與年齡。
<table border="1">
<TR><TH colspan='2'>貓咪陣列</TH></TR>
	<c:forEach items="${CatArray}" var="x">
		<tr>
			<td>${x.catName}</td>
			<td>${x.weight}</td>
		</tr>	
	</c:forEach>
</table>
<BR>


<hr>
<h2>forEach03</h2>
<%
 request.setAttribute("IDKey1", "小彬彬, 小小彬,  迷你彬, 超小彬, 極小彬");
 %>
 請於網頁內用表格的方式顯示上面這五個用逗點隔開的名詞。<BR>
<table border="1">
	<c:forEach items="${IDKey1}" var="binbin">
		<tr><td>${binbin}</td></tr>
	</c:forEach> 	
</table>

<BR>


<hr>
<h2>forEach04</h2>

<P/>
<A href="index.jsp">回首頁</A>
</body>
</html>