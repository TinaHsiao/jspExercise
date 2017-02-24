<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="ch05_07.*, java.util.*"%>
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

<hr><%--------------------------------------------------------------------------%>
<h2>forEach02</h2>
<%
  Cat garfield  = new Cat(10, "嘉菲(Array)");
  Cat kitty     = new Cat(3,   "凱蒂(Array)");
  Cat pili      = new Cat(3,   "霹靂(Array)");
  Cat[] ca = {garfield, kitty, pili};
  request.setAttribute("CatArray", ca);
%>
  請於網頁內用表格的方式顯示三隻貓的姓名與體重。
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


<hr><%--------------------------------------------------------------------------%>
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


<hr><%--------------------------------------------------------------------------%>
<h2>forEach04</h2>
 <%
    Cat garfield2       = new Cat(10, "嘉菲(Collection)");
    Cat kitty2          = new Cat(3  , "凱蒂(Collection)");
    Cat pili2           = new Cat(3  ,  "霹靂(Collection)");
    Collection<Cat> cc = new ArrayList<Cat>();
    cc.add(garfield2);
    cc.add(kitty2);
    cc.add(pili2);
    request.setAttribute("CatCollection", cc);
 %>
  請於網頁內用表格的方式顯示三隻貓的姓名與體重。<BR>
 <table border="1">
 	<tr><th colspan="2">貓咪集合</th></tr>
 	<c:forEach items="${CatCollection}" var="x">
		<tr>
			<td>${x.catName}</td>
			<td>${x.weight}</td>
		</tr> 	
 	</c:forEach>
 </table>
<BR>

<hr><%--------------------------------------------------------------------------%>
<h2>forEach05</h2>
 <%
   Cat garfield3 = new Cat(10, "嘉菲(Map)");
   Cat kitty3     = new Cat(3,   "凱蒂(Map)");
   Cat pili3       = new Cat(3,    "霹靂(Map)");
   Map<String, Cat> aMap = new HashMap<String, Cat>();
   aMap.put("Garf_key", garfield);
   aMap.put("Kitt_key", kitty);
   aMap.put("Pili_key", pili);
   request.setAttribute("CatMap", aMap);
 %>
 請於網頁內用表格的方式顯示三隻貓的姓名與體重。<BR>
 <table border="1">
 	<tr><th colspan="3">貓咪Map</th></tr>
 	<c:forEach items="${CatMap}" var="x">
 		<tr>
 			<td>${x.key}</td>
 			<td>${x.value.catName}</td>
 			<td>${x.value.weight}</td>
 		</tr>
 	</c:forEach>
 
 </table>
 
<P/>
<A href="index.jsp">回首頁</A>
</body>
</html>