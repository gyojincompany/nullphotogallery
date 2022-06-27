<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
  <link href="${pageContext.request.contextPath }/resources/css/neul1.css" type="text/css" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1">	

</head>

  <body>
	<%@ include file="include/header.jsp" %>
    <div class="card">
	     <img src="${pageContext.request.contextPath }/resources/images/neul0.png" style="width:50%">  
	</div>
		 
	<div id="container">
		<div class="season">
		<a href="spring"  ><img id="blink" src="${pageContext.request.contextPath }/resources/images/spring1.png" border="0" alt=""></a>
		
		</div>
	
		<div class="season">
		<a href="summer"  ><img src="${pageContext.request.contextPath }/resources/images/summer1.png" border="0" alt=""></a>
		</div>

		<div class="season">
		<a href="autumn"  ><img src="${pageContext.request.contextPath }/resources/images/autumn1.png" border="0" alt=""></a>
		</div>

		<div class="season">
		<a href="winter"  ><img src="${pageContext.request.contextPath }/resources/images/winter1.png" border="0" alt=""></a>
		</div>

        
		<div class="season">
		<a href="video1"  ><img src="${pageContext.request.contextPath }/resources/images/no-sound1.png" border="0" alt=""></a>
		</div>

		<div class="season">
		<a href="video2"  ><img src="${pageContext.request.contextPath }/resources/images/sound1.png" border="0" alt=""></a>
		</div>
	
	</div>

    <div class="by">
	     <img src="${pageContext.request.contextPath }/resources/images/by.png" style="width:100%">  
	
	</div>

	<%@ include file="include/footer.jsp" %>
 </body>
</html>
