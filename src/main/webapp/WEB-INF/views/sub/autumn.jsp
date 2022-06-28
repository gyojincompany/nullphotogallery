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
	
		<div class="mySlides">
			<div class="numbertext">1/6</div>
			<img    src="${pageContext.request.contextPath }/resources/images/autumn/1.jpg" style="width:100%"  style="height:100%"  >   
		</div>
    
		<div class="mySlides">
			<div class="numbertext">2/6</div>
			<img   src="${pageContext.request.contextPath }/resources/images/autumn/2.jpg" style="width:100%"  style="height:100%">   
		</div>

		<div class="mySlides">
		    <div class="numbertext">3/6</div>
			<img src="${pageContext.request.contextPath }/resources/images/autumn/3.jpg" style="width:100%"  style="height:100%">   
		</div>

		<div class="mySlides">
			<div class="numbertext">4/6</div>
			<img src="${pageContext.request.contextPath }/resources/images/autumn/4.jpg" style="width:100%"  style="height:100%">   
		</div>
	
		<div class="mySlides">
			<div class="numbertext">5/6</div>
			<img src="${pageContext.request.contextPath }/resources/images/autumn/5.jpg" style="width:100%"  style="height:100%">   
		</div> 

		<div class="mySlides">
			<div class="numbertext">6/6</div>
			<img src="${pageContext.request.contextPath }/resources/images/autumn/6.jpg" style="width:100%"  style="height:100%">   
		</div> 

			
		<a class="prev" onclick="plusSlides(-1)">❮</a>
		<a class="next" onclick="plusSlides(1)">❯</a>

		<div class="caption-container">
			<p id="caption"></p>
		</div>

			<!-- <div class="column">
				<img src="../images/b.jpg" width="100" height="100" border="0" alt="">
			</div>
			<div class="column">
				<img src="../images/b.jpg" width="100" height="100" border="0" alt="">
			</div> -->
		
		<div class="column">
			<img class="demo cursor" src="${pageContext.request.contextPath }/resources/images/autumn/1.jpg" style="width:100%"  onclick="currentSlide(1)" alt="">
		</div>
		<div class="column">
			<img class="demo cursor" src="${pageContext.request.contextPath }/resources/images/autumn/2.jpg" style="width:100%" onclick="currentSlide(2)" alt="">
		</div>
	 	<div class="column">
			 <img class="demo cursor" src="${pageContext.request.contextPath }/resources/images/autumn/3.jpg" style="width:100%" onclick="currentSlide(3)" alt="">
		</div>
		<div class="column">
			<img class="demo cursor" src="${pageContext.request.contextPath }/resources/images/autumn/4.jpg" style="width:100%" onclick="currentSlide(4)" alt="">
		</div>
		<div class="column">
			<img class="demo cursor" src="${pageContext.request.contextPath }/resources/images/autumn/5.jpg" style="width:100%" onclick="currentSlide(5)" alt="">
		</div>
		<div class="column">
			<img class="demo cursor" src="${pageContext.request.contextPath }/resources/images/autumn/6.jpg" style="width:100%" onclick="currentSlide(6)" alt="">
		</div>
		
  </div>
</div>

<!--<div class="back">-->
<!--  <a href="../index.html"  target="_blank"><img src="../images/home6.png"   border="0" alt=""></a>-->
<!--</div>-->

<div class="back">
<a href="index" ><img src="${pageContext.request.contextPath }/resources/images/home6.png"   border="0" alt=""></a>
</div>


<!-- </div> -->
<%@ include file="../include/footer.jsp" %>
</body>
</html>