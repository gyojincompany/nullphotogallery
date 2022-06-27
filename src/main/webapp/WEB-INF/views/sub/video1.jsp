<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<title>22photo_essay_김형식</title>
<link href="${pageContext.request.contextPath }/resources/css/neul3.css" type="text/css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/resources/javascript/jquery-1.12.3.js"></script>
<script src="${pageContext.request.contextPath }/resources/javascript/script-neul1.js" defer type="text/javascript"></script>

<script language="javascript">
document.oncontextmenu = function(){return false;}
//마우스 오른쪽 금지
</script>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false"onkeydown="return false">


<div id="wrapper1"> 
	<div class="container">
	
       <video src="${pageContext.request.contextPath }/resources/images/media/no-audio1.mp4" width="100%"   autoplay  controls ></video>
	
  </div>
</div>

<div class="back">
  <a href="index"><img src="${pageContext.request.contextPath }/resources/images/home6.png"   border="0" alt=""></a>
</div>

<!-- </div> -->
<%@ include file="../include/footer.jsp" %>
</body>
</html>