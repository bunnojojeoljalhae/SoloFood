<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index에 보일 리뷰 페이지</title>
<link
	href="${pageContext.request.contextPath}/resources/css/best.css?ver=4"
	rel="stylesheet" />
<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Kumbh+Sans:wght@300;400;500;600;700&family=Noto+Sans+KR:wght@300;400;500;700&family=Nunito+Sans:wght@400;600;700&family=Ramabhadra&display=swap"
	rel="stylesheet">
<style type="text/css">
</style>
<script type="text/javascript">
	function upViews(writeNo){
		location.href="review/upViews?writeNo=" + writeNo;
	}
</script>
</head>
<body>
	<div class="main">
		<div class="best_wrap">
			<div class="head">REVIEW HONBAB</div>
			<aside>
				<div class="line"></div>
				<div class="text">BEST REVIEW</div>
			</aside>

			<section>
				<ul class="index" id="first">
					<li class="no">NO</li>
					<li class="title">TITLE</li>
					<li class="writer">WRITER</li>
					<li class="date">DATE</li>
					<li class="view">VIEWS</li>
				</ul>
				<c:if test="${reviewBestList.size() == 0}">
					<li class="">멋진 혼밥후기를 등록해보세요!</li>
				</c:if>
				<c:forEach var="best" items="${reviewBestList }">
					<form>
						<ul class="index">
							<li class="no">{best.writeNo}</li>
							<li class="title">
								<c:if test='${best.imgName != "None"}'>
								★
								</c:if> <a href="#" onclick="upViews(${best.writeNo}); return false">${best.title}</a>
							</li>
							<li class="writer">{best.nickName}</li>
							<li class="date">{best.writeDate}</li>
							<li class="view">{best.views}</li>
						</ul>
					</form>
				</c:forEach>

				<div class="more">
					<a href="reviewAllList">+ MORE</a>
				</div>
			</section>
		</div>
	</div>
	<%-- 	<table id="bestReview" border="1">
	<tr>
		<td>글번호</td>
		<td>닉네임</td>
		<td>제목</td>
		<td>작성일</td>
		<td>조회수</td>
		<td>추천수</td>
	</tr>	
	<c:if test="${reviewBestList.size() == 0}">
		<tr><td colspan="6">작성된 글이 없습니다.</td></tr>
	</c:if>
	<c:forEach var="review" items="${reviewBestList}">
	<tr>
		<td>${review.writeNo }</td>
		<td>${review.nickname }</td>
		<td width="200px">
			
		</td>
		<td>${review.writeDate }</td>
		<td>${review.views }</td>
		<td>${review.likes }</td>
	</tr>
	</c:forEach>
	</table> --%>
</body>
</html>
