<html>

<head>
	<title>Confirmation</title>
</head>

<%
	//read the data
	String favLang=request.getParameter("favoriteLanguage");

	//create cookie
	Cookie cookie=new Cookie("myApp.favoriteLanguage",favLang);
	cookie.setMaxAge(60*60*24*365);
	
	//send cookie to browser
	response.addCookie(cookie);
%>
<blockquote>
	Thanks! We have set your favorite language to : ${param.favoriteLanguage}
</blockquote>

<br><br>
<a href="cookies-homepage.jsp">Return to homepage.</a>
</html>