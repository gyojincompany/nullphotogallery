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
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/board.js"></script>

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
						<form action="write" method="post" name="question_frm">
							<tr>
								<td>
									<span class="text01">ID : </span> 
								</td>
								<td>
									<input class="type01" type="text" name="qid" value="<% if(session.getAttribute("id") != null) { out.print(session.getAttribute("id")); } else { out.print("GUEST");} %>" readonly>
								</td>
							</tr>							
							<tr>
								<td>
									<span class="text01">NAME : </span> 
								</td>
								<td>
									<input class="type01" type="text" name="qname" value="<% if(session.getAttribute("name") != null) { out.print(session.getAttribute("name")); } else { out.print("");} %>">
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
							<tr>
								<td>
									<span class="text01">QUESTION : </span> 
								</td>
								<td>
									<textarea id="textarea01" rows="8" cols="25" name="qcontent"></textarea>
								</td>
							</tr>
							
							<tr>
								<td>
									<span class="text01">E-MAIL : </span> 
								</td>
								<td>
									<input class="type01" type="text" name="qemail">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<input class="button01" type="button" value="글쓰기" onclick="boardConfirm()">&nbsp;
									<input class="button01" type="button" value="글목록" onclick="location.href='list'">
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