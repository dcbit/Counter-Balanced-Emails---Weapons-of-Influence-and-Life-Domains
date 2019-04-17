<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>UFL Online Survey - email 12 - interested</title>
	<link rel="stylesheet" href="<c:url value="/styling/style.css" />">

	<div id='top-line' class='line'></div>
	<div id='header'>
		<img id='top-logo' src="<c:url value="/styling/uf-logo_white.png" />">
	</div>
</head>
<body>
	<div id='content'>

		<form id="hidden_form" method="POST" action="http://merlin.ece.ufl.edu:8088/merlinUserApp/survey">

			<div name="email" id='email'>
				<div name="subject" class='question'>Subject: Fairpoint Retirement</div>
				<br>
				
				<div name="greeting">Dear Xavier,</div>
				
				<div name="mail-body">
					<p>You can save 20 percent on your next electric bill by filling out our online survey within the next three days. Your participation will allow us to provide Regional Utilities with accurate information as to how they can improve their services.</p>
					
					<p>Take advantage of this limited-time opportunity by clicking the link below:</p>
					
					<p>http://www.harperkellerservices.com/retirement-financial/ </p>
					
					
					<div name="signature">
						Mike Williams<br>
						PowerHouse Associates<br>
						65a SW 122nd St.<br>
						Ocala, Florida<br>
					</div>
				
				</div>
			</div>
			
			<%
				String 	emailAddr 		= request.getParameter("emailAddr");
				String 	userStudyDayNo 	= request.getParameter("userStudyDayNo");
				int 	surveySet 		= Integer.parseInt(request.getParameter("surveySet"));
				int 	stateNo 		= (Integer) request.getAttribute("stateNo");
				
				String displayQuestion = "How interested are you in what this email has to say?";
				
				if (stateNo == 417)
					displayQuestion = "How interested are you in what this email has to say?";
				else if (stateNo == 439)
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