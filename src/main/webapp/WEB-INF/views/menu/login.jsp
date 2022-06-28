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


</head>
<body>
<%@ include file="../include/header.jsp" %>
<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">		
		<tr>
			<table width="70%" border="0" cellspacing="0" cellpadding="10">
				<tr height="700">
					<td bgcolor="#000000" align="center" height="500">
						<table border="0" cellspacing="0" cellpadding="10">
						<form action="loginOk" method="post">
							<tr>
								<td>
									<span class="text01">MEMBER ID : </span> 
								</td>
								<td>
									<input class="type01" type="text" name="mid">
								</td>
							</tr>
							<tr>
								<td>
									<span class="text01">PASSWORD : </span> 
								</td>
								<td>
									<input class="type01" type="password" name="mpw">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input class="button01" type="submit" value="로그인">&nbsp;
									<input class="button01" type="button" value="회원가입" onclick="location.href='join'">
								</td>
							</tr>
						</form>
						</table>				
					</td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
<%@ include file="../include/footer.jsp" %>
</body>
</html>