<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../CSS/style.css" />
</head>
<body>
	<div id="sidebar">
			<ul>
				<li class="menubar">학적부
					<ul>
						<% //교수 %>
						<li onclick="location.href='../SchoolRegister/checkProfInfo.jsp'">개인 정보 조회</li>
						
					</ul>
				</li>
				<li class="menubar">수강신청
					<ul>						
						<li onclick="location.href='../SubjectCourse/checkEvalResult.jsp'">강의 평가 결과 조회</li>
						<% //교수 %>
						<li onclick="location.href='../SubjectCourse/makeLecture.jsp'">강의 개설</li>
						
					</ul>
				</li>
				<li class="menubar">성적
					<ul>
						<%//교수 %>
						<li onclick="location.href='../Grade/registerGrade.jsp'">성적 등록</li>
						<li onclick="location.href='../Grade/checkGradeEachLecture.jsp'">강의별 성적 조회</li>
					</ul>
				</li>
				<li class="menubar">등록
					<ul>
						<%//행정업무자 %>
						<li onclick="location.href='../Register/confirmPayment.jsp'">납부 확인</li>
						
					</ul>
				</li>
			</ul>
		</div>
</body>
</html>