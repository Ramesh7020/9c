<%@ page language="java" %>
<html>
<head>
    <title>Session Created</title>
</head>
<body>

<%
    String name = request.getParameter("username");
    String timeStr = request.getParameter("time");

    int time = Integer.parseInt(timeStr);

    // Store name in session
    session.setAttribute("username", name);

    // Set session expiry (convert minutes to seconds)
    session.setMaxInactiveInterval(time * 60);
%>

<h2>Hello <%= name %>!</h2>
<p>Session expiry time set to <%= time %> minute(s).</p>

<a href="checkSession.jsp">Click here to check session status</a>

</body>
</html>