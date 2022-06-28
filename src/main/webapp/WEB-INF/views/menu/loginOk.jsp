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
					<td bgcolor="#000000" align="center">
						<%
							int checkId = Integer.parseInt(request.getAttribute("checkId").toString());
							int checkPw = Integer.parseInt(request.getAttribute("checkPw").toString());
							if(checkId == 0) {
						%>
						<script type="text/javascript">
							alert("입력하신 아이디는 존재하지 않는 아이디입니다. 아이디를 확인해 주세요.");
							history.go(-1);
							document.reg_frm.mid.focus();
						</script>
						<%
							} else if (checkPw == 0){
						%>
						<script type="text/javascript">
							alert("입력하신 비밀번호가 틀립니다. 다시 확인해 주세요.");
							history.go(-1);
							document.reg_frm.mpw.focus();
						</script>
						<% 
							} else {
								session.setAttribute("ValidMem", "yes");								
							}
						%>
												
						<span class="content01">
							${mname }님 안녕하세요!<br>
							아이디 ${mid }로 로그인에 성공하셨습니다.
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