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
					<td bgcolor="#000000" align="center" height="500">
						<table border="0" cellspacing="0" cellpadding="10">
						<form action="" method="post" name="reg_frm">
							<tr>
								<td colspan="2">
									<span class="text02">${memberDto.mid }님의 회원정보를 수정하였습니다.</span>
								</td>
							</tr>							
							<tr>
								<td>
									<span class="text01">MEMBER ID : </span> 
								</td>
								<td>
									<span class="text02">${memberDto.mid }</span>
								</td>
							</tr>
							<tr>
								<td>
									<span class="text01">PASSWORD : </span> 
								</td>
								<td>
									<span class="text02">${memberDto.mpw}</span>
								</td>
							</tr>							
							<tr>
								<td>
									<span class="text01">NAME : </span> 
								</td>
								<td>
									<span class="text02">${memberDto.mname}</span>
								</td>
							</tr>
							<tr>
								<td>
									<span class="text01">E-MAIL : </span> 
								</td>
								<td>
									<span class="text02">${memberDto.memail}</span>
								</td>
							</tr>
							<tr>
								<td>
									<span class="text01">JOIN DATE : </span> 
								</td>
								<td>
									<span class="text02">${memberDto.mdate}</span>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input class="button01" type="button" value="정보수정" onclick="location.href='infoModify'">&nbsp;&nbsp;									
									<input class="button01" type="button" value="홈바로가기" onclick="location.href='index'">
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