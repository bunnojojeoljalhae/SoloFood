<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeContent(우상)</title>
</head>
<body>
	
	<a href="${contextPath }/oper/deleteNoticeContent">글삭제 버튼</a>
	<a href="${contextPath }/oper/updateNoticeContent">글수정 버튼</a>

	
</body>
</html>