<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的第一個Servlet</title>
<style>
	a{
		text-decoration: none;
		font-size:18px;
	}
</style>
</head>
<body>
<h2>一.明確對應:urlPatterns={"servletPath"}</h2>
<a href="http://localhost:8080/jspExercise/ch02/kitty/FirstSimpleProgram">我的第一個Servlet程式:http+sever+專案名+url-pattern</a><br>
<a href="/jspExercise/ch02/kitty/FirstSimpleProgram">我的第一個Servlet程式:專案名+url-pattern</a><br> 
<a href="ch02/kitty/FirstSimpleProgram">我的第一個Servlet程式:url-pattern</a><br>
<h2>二.前路徑對應:urlPatterns={"servletPath+PathInfo"}</h2>
<a href="ch11/123546aa">二之1: url-pattern="/ch11/*",  servlet=/ch02, pathInfo=/123546aa</a><br>
<a href="ch02/snoopy/489478bb">二之2: url-pattern="/ch02/snoopy/*",  servlet=/ch02/snoopy, pathInfo=/489478bb</a><br>
<h2>三.延伸檔名對應:urlPatterns={"servletPath"="*.abc"}</h2>
<a href="aaa.abc">我的第一個Servlet程式:"*.abc"</a><br>
<a href="notdothis.jsp">我的第一個Servlet程式: "*.jsp"(不建議)</a><br>
<h2>四.預設對應:urlPatterns="/","/*"不可使用</h2>

<hr>
<a href="ShowPicture.do">普普的圖-1</a><br>
<a href="ShowPicture.jsp">普普的圖-2</a><br>
</body>
</html>