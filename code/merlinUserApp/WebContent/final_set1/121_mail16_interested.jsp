<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>UFL Online Survey - email 16 - interested</title>
	<link rel="stylesheet" href="<c:url value="/styling/style.css" />">

	<div id='top-line' class='line'></div>
	<div id='header'>
		<<img id='top-logo' src="<c:url value="/styling/uf-logo_white.png" />">
	</div>
</head>
<body>
	<div id='content'>

		<form id="hidden_form" method="POST" action="http://merlin.ece.ufl.edu:8088/merlinUserApp/survey">

			<div name="email" id='email'>
				<div name="subject" class='question'>Subject: Donate for Obesity Research</div>
				<br>
				
				<div name="greeting">Hello Penny,</div>
				
				<div name="mail-body">
					<p>Millions of Americans are currently considered to be overweight. According to the World Health Organization, this condition implicates many health complications. Help us to reverse this trend! Researchers at the University of Florida have been studying ways to develop drugs to metabolize fats quicker, hopefully alleviating the high percentage of obesity by offering a safe weight-loss program. Any donation would help. Please visit the link below for more information about this wonderful project.</p>
					
					<a href="http://www.spectrehealth.com/obesityresearch-health/">http://www.spectrehealth.com/obesityresearch-health/</a>
					
					<p>Melanie Taylor</p>
					
					<div name="signature">
					Nutrition Lab primary investigator<br>
					University of Florida<br>
					3453 34th st. Gainesville, FL
					</div>
				
				</div>
			</div>
			
			<%
				String 	emailAddr 		= request.getParameter("emailAddr");
				String 	userStudyDayNo 	= request.getParameter("userStudyDayNo");
				int 	surveySet 		= Integer.parseInt(request.getParameter("surveySet"));
				int 	stateNo 		= (Integer) request.getAttribute("stateNo");
				
				String displayQuestion = "How interested are you in what this email has to say?";
				
				if (stateNo == 121)
					displayQuestion = "How interested are you in what this email has to say?";
				else if (stateNo == 143)
					displayQuestion = "How likely are you to click on a link in this email?";
				else
					displayQuestion = "How convincing is the content of this email?";
			%>
			
			<div name="question">
				<h4 class='question'><%=displayQuestion %></h4>
					<input class='visible-elements' type="radio" name="interested" value="1">Not At All
					<input class='visible-elements' type="radio" name="interested" value="2">A Little
					<input class='visible-elements' type="radio" name="interested" value="3">Somewhat
					<input class='visible-elements' type="radio" name="interested" value="4">Quite a Bit
					<input class='visible-elements' type="radio" name="interested" value="5">Very Much
			</div>

			<br><br>

		<input type="submit" value="Next >>" onclick="return form_submit_function()">
				<input type="hidden" name="emailAddr" value=<%=emailAddr %>></input>
				<input type="hidden" name="userStudyDayNo" value=<%=userStudyDayNo %>></input>
				<input type="hidden" name="surveySet" value=<%=surveySet %>>
				<input type="hidden" name="stateNo" value=<%=stateNo%>>
				
		</form>
	</div> <!-- closes content -->

	<div id='footer'>
		<div id='bottom-line' class='line'></div><br>
		<div id='contact-us'>Questions? Call 352-273-2134 or email projmerlin0@gmail.com<br>&copy; <a href="http://www.ufl.edu/" target="_blank" title="University of Florida">University of Florida</a>, Gainesville, FL 32611</div>
		<img id='bottom-logo' src="<c:url value="/styling/uf-logo_blue.png" />">
	</div>

</body>

<script src="<c:url value="jquery-2.1.4.js" />"></script>
<script src="<c:url value="/js/formsubmit.js" />"></script>
<!-- <script language="javascript" type="text/javascript">

	function form_submit_function() { 
		var formElement = document.getElementById('hidden_form');
		console.log(formElement);
		$(formElement).submit();
		return false; 
	};

</script> -->

</html>