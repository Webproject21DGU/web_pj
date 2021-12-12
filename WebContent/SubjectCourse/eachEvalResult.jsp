<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강의 평가 결과 조회</title>
<%
	String name = (String)session.getAttribute("name");
	String id =session.getAttribute("id").toString();
%>
<link rel="stylesheet" type="text/css" href="../CSS/style.css" />
<link rel="stylesheet" type="text/css" href="./evalLecture.css" />
</head>
<body>
<%
	String driver = "";
	Connection con = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	String sql = null;
	ResultSet rs = null;
	
	String st_name = "";
	
    int lec_num = Integer.parseInt(request.getParameter("button_eval"));
    int st_num = 0;
    int pro_num = 0;
    try {
    	Class.forName("com.mysql.jdbc.Driver");
    	driver = "jdbc:mysql://localhost:3306/web_pj?serverTimezone=UTC";
    	con = DriverManager.getConnection(driver, "root", "0000");
    	sql = "select name from student where st_num"+id;
		pstmt = con.prepareStatement(sql);
    	rs = pstmt.executeQuery(sql);
    	while (rs.next()) {
    		st_name = rs.getString("name");
    		pstmt.close();
    	}
    	rs.close();
		con.close();
    } catch (ClassNotFoundException e) { 
		System.out.println("드라이버 로드 실패");
	} catch (SQLException e) {
        System.out.println("DB 접속 실패");
        e.printStackTrace();
    }
%>
	<div id="container">
		<div id="header">
			<img id="image" alt="error" src="../elephant.png" align="left">
			<div id="header_in">
				<p font-size:32px><%=name %>님 환영합니다</p>
				<button background-color:"#FFFFFF", font-color:"#000000",align:"right" onclick="location.href='../Logout.jsp'">로그아웃</button>
        		</div>
			<p>강의 평가</p>
		</div>
		<!-- 메뉴 바 include -->
		<%@ include file="../Common/menuBar_st.jsp" %>
		
		<div id="content">
			<!-- main content -->
			<div id="title">강의 평가</div>
			<div id="innerContent">
			<form method="post" action="saveEvalLecture.jsp">
				<div>
					<div class="question" id="q1">1. 강의계획서가 충실하게 구성되어 강좌선택에 도움이 되었다.</div>
					매우 그렇다. : 
					그렇다. : 
					보통이다. : 
					그렇지 않다. : 
					매우 그렇지 않다. : 
				</div>
				<div>
					<div class="question" id="q2">2. 강의자료가 적절히 활용되어 학습에 도움이 되었다.</div>
					매우 그렇다. : 
					그렇다. : 
					보통이다. : 
					그렇지 않다. : 
					매우 그렇지 않다. : 
				</div>
				<div>
					<div class="question" id="q3">3. 교수님은 학생들의 참여와 소통을 독려하였다.</div>
					매우 그렇다. : 
					그렇다. : 
					보통이다. : 
					그렇지 않다. : 
					매우 그렇지 않다. : 
				</div>
				<div>
					<div class="question" id="q4">4. 시험, 과제 등 성적평가의 기준이 적절하며 공정하였다.</div>
					매우 그렇다. : 
					그렇다. : 
					보통이다. : 
					그렇지 않다. : 
					매우 그렇지 않다. : 
				</div>
				<div>
					<div class="question" id="q5">5. 강의 내용이 효과적으로 전달되어 이해하기 쉬웠다.</div>
					매우 그렇다. : 
					그렇다. : 
					보통이다. : 
					그렇지 않다. : 
					매우 그렇지 않다. : 
				</div>
			</form>
			</div>
		</div>
		<div id="footer">
			<p>Dongguk University Web_Programming Project</p>
		</div>
	</div>
</body>
</html>