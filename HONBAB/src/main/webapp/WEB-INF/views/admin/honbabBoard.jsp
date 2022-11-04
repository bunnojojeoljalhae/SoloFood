<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동형</title>
<script type="text/javascript">
	function reviewWirte() {
		if(true){ //로그인 되어있는지 판단
			location.href="reviewWriteForm";			
		}
	}
	
	function upViews1(writeNo){
		location.href="upViews1?writeNo=" + writeNo;
	}
</script>
</head>
<body>
	
	<table border="1">
		<tr>
		<td>글번호</td>
		<td>닉네임</td>
		<td>제목</td>
		<td>작성일</td>
		<td>조회수</td>
		<td>추천수</td>
		</tr>
	
	<c:if test="${reviewAllList.size() == 0}">
		<tr><td colspan="6">작성된 글이 없습니다.</td></tr>
	</c:if>
	<c:forEach var="review" items="${reviewAllList}">
		<tr>
			<td>${review.writeNo }</td>
			<td>${review.nickname }</td>
			<td width="200px">
				<a href="#" onclick="upViews1(${review.writeNo}); return false">${review.title}</a>
				<c:if test='${review.imgName != "None"}'>
					★
				</c:if>
			</td>
			<td>${review.writeDate }</td>
			<td>${review.views }</td>
			<td>${review.likes }</td>
		</tr>
	</c:forEach>
	</table>
	
	<!--  페이징  -->
	<c:if test="${startPage > block }">
		<a href="honbabBoard?num=${startPage-1}" id="paging">◀</a>
	</c:if>
	<c:forEach var = "num" begin="${startPage}" end="${endPage }">
		<a href="honbabBoard?num=${num }">[${num }]</a>
	</c:forEach>
	<c:if test="${endPage < repeat}">
		<a href="honbabBoard?num=${endPage + 1}" id="paging">▶</a>
	</c:if>

	<c:import url="../main/footer.jsp"/>

</body>
</html>