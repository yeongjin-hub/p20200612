<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	index 페이지 입니다.hello
	<!-- eq는 같느냐 -->
	<c:if test="${sessionScope.SESSION_ID eq null }">
		<a href="/member/login">로그인</a>
		<a href="/member/join">회원가입</a>
	</c:if>
	<!-- ne는 같지 않느냐 -->
	<c:if test="${sessionScope.SESSION_ID ne null }">
		<a href="/member/logout">로그아웃</a>
		<a href="/member/edit">회원정보수정</a>
		<a href="/board/list">게시판</a>
		<a href="/board/insert">글쓰기</a>
	</c:if>
	
	
</body>
</html>