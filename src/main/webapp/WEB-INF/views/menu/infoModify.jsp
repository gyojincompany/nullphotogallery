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
					<td bgcolor="#0000000" align="center" height="500">
						<table border="0" cellspacing="0" cellpadding="10">
						<form action="infoModifyOk" method="post" name="reg_frm">
							<tr>
								<td>
									<span class="text01">MEMBER ID : </span> 
								</td>
								<td>
									<input class="type01" type="text" name="mid" value="${memberDto.mid }" readonly>
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
								<td>
									<span class="text01">PW CHECK : </span> 
								</td>
								<td>
									<input class="type01" type="password" name="mpw_check">
								</td>
							</tr>
							<tr>
								<td>
									<span class="text01">NAME : </span> 
								</td>
								<td>
									<input class="type01" type="text" name="mname" value="${memberDto.mname }">
								</td>
							</tr>
							<tr>
								<td>
									<span class="text01">E-MAIL : </span> 
								</td>
								<td>
									<input class="type01" type="text" name="memail" value="${memberDto.memail }">
								</td>
							</tr>
							<tr>
								<td>
									<span class="text01">JOIN DATE : </span> 
								</td>
								<td>
									<input class="type01" type="text" name="mdate" value="${memberDto.mdate }">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input class="button01" type="button" value="정보수정" onclick="joinCheck()">&nbsp;&nbsp;									
									<input class="button01" type="button" value="수정취소" onclick="location.href='index'">
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