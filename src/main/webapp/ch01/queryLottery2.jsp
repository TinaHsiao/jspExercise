<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查詢明牌</title>
</head>
<body>
	<h2>查詢明牌</h2>
	<form action="LotteryServlet2" method="post">
	訪客姓名:<input type="text" name="visitor" size="10"><P/>
		   <input type="radio" name="numberType" value="BIG" checked="">大樂透(六個介於1-49的數字)<P/>
		   <input type="radio" name="numberType" value="MID">中樂透(六個介於1-42的數字)<P/>
		   <input type="radio" name="numberType" value="SMALL">小樂透(五個介於1-39的數字)<P/>
		   <input type="radio" name="numberType" value="FOURSTAR">四星彩(四個可重複，介於0-9的數字)<P/>
		   <input type="submit" value="確定"><P/>
	</form>
</body>
</html>