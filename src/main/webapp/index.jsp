<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html ; charset=UTF-8">
<title>JSP 課堂作業</title>
</head>
<body>
	<h2>JSP 課堂作業</h2>
<!-- 	<a href="ch01/queryLottery.jsp">問單一明牌</a><P/> -->
		<a href="<c:url value='ch01/queryLottery2.jsp'/>">ch01-問多種名牌</a><P/>
		<a href="<c:url value='qwe/asd/queryLottery.jsp'/>">ch01-問單一明牌</a><P/>
		<hr>
		<a href="<c:url value='ch02/InsertMemberForm.jsp'/>">ch02-輸入會員資料</a><P/>
		<hr>
		<a href="<c:url value='ch04_01/InsertMemberForm.jsp'/>">ch04_01-輸入會員資料MVC(FileIO)</a><P/>
		<a href="<c:url value='ch04_02/InsertMemberForm.jsp'/>">ch04_02-輸入會員資料MVC(DAO)</a><P/>
		<hr>
		<a href="<c:url value='ch05_03/InsertMemberForm.jsp'/>">ch05_03-輸入會員資料MVC(DAO)-顯示錯誤訊息</a><P/>
		<a href="<c:url value='ch05_04/queryLottery.jsp'/>">ch05_04-問單一明牌(jsp:useBean)</a><P/>
		<a href="<c:url value='ch05_05/queryLottery.jsp'/>">ch05_05-問單一明牌(jsp:useBean&JSTL:set)</a><P/>
		<a href="<c:url value='ch05_06/ch05_06PracticeOut.jsp'/>">ch05_06-JSTL:out </a><P/>
		<a href="<c:url value='ch05_07/forEach.jsp'/>">ch05_07-JSTL:forEach </a><P/>
		
		
		<a href="<c:url value='ch05_08/queryLottery2.jsp'/>">ch05_08-JSTL:條件判斷練習 </a><P/>
		<a href="<c:url value='ch05_09/ShowMember.jsp'/>">ch05_09-顯示會員資料 </a><P/>
		
		<a href="<c:url value='ch06_02/InsertMemberForm.jsp'/>">ch06_02-輸入會員資料MVC(DAO)-顯示錯誤訊息 </a><P/>
		<br>
		<br>
		<a href="<c:url value='ch06_01/login.jsp'/>">ch06_01-登入 </a><P/>
		<a href="<c:url value='ch06_01/logout.jsp'/>">ch06_01-登出 </a><P/>
</body>
</html>

