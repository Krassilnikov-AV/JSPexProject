

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exception</title>
    </head>
    <body>
        <h1>
        As error took place: <%=exception.toString() %>
        </h1>
    </body>
</html>
