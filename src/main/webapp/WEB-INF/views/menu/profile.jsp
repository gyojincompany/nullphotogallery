<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>22photo_essay_김형식</title>
<link href="${pageContext.request.contextPath }/resources/css/neul2.css" type="text/css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/javascript/jquery-1.12.3.js"></script>
<script src="${pageContext.request.contextPath }/resources/javascript/script-neul1.js" defer type="text/javascript"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/member.css">

<!-- 
<script language="javascript">
document.oncontextmenu = function(){return false;}
//마우스 오른쪽 금지
</script>
 -->
</head>
<body>
<%@ include file="../include/header.jsp" %>
<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		
		<tr>
			<table width="70%" border="0" cellspacing="0" cellpadding="10">
				<tr height="700">
					<td bgcolor="#0000000" align="center">
						<span class="content01">
							안녕하세요 Web Application 백엔드 개발자 이교진입니다.<br>
							보시고 계신 페이지는 Spring Boot Framework으로 개발되었습니다.<br>
							웹 어플리케이션 개발 관련하여 궁금하신 점은 <a href="question">question</a> 질문 게시판을 이용해주세요.
						</span>					
					</td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
<%@ include file="../include/footer.jsp" %>
</body>
</html>