<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/menu.css">

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
	<table width="90%" border="0" cellspacing="0" cellpadding="20">
		
		<tr>
			<table width="90%" border="0" cellspacing="0" cellpadding="10">
				<tr>
					<td bgcolor="#000000" align="center">
						<br><br>						
						<table border="0" cellspacing="0" cellpadding="10">
							<tr>
								<td class="board01">NO</td>
								<td class="board01">ID</td>
								<td class="board01" width="600">QUESTION</td>
								<td class="board01">NAME</td>
								<td class="board01">DATE</td>
							</tr>
							<c:forEach items="${qlist }" var="qdto">
							<tr height="50">
								<td class="board02">${qdto.qnum }</td>
								<td class="board02">${qdto.qid }</td>
								<td class="board03">
								<a href="qview?qnum=${qdto.qnum }">
									<c:choose>
										<c:when test="${fn:length(qdto.qcontent) > 26}">
											<c:out value="${fn:substring(qdto.qcontent,0,25) }" /> ......
										</c:when> 
										<c:otherwise>
											<c:out value="${qdto.qcontent}" />
										</c:otherwise>
									</c:choose>
								</a>
								</td>
								<td class="board02">${qdto.qname }</td>
								<td class="board02">
									<c:out value="${fn:substring(qdto.qdate,0,16) }" /> 
								</td>
							</tr>
							</c:forEach>
							<tr>
								<td colspan="5" align="right">
									<input type="button" class="button01" value="질문하기" onclick="location.href='question'">
								</td>
							</tr>
						</table>	
						<br>			
					</td>
				</tr>
			</table>
		</tr>
	</table>
	</center>
<%@ include file="../include/footer.jsp" %>
</body>
</html>