

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--отправление страницы на index.jsp-->
<%--<jsp:forward page="index.jsp" />--%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>First Page</title>
        <!--прописание подсветки страницы на которой находимся-->
        <link rel="stylesheet" href="css/styles.css" />
    </head>
    <body>
        <!--text-->
        <%--<%="text"%>--%>
        <table border="1" width="100%">        

            <tbody>   
                <tr>
                    <td height="150" colspan="3" id="header">
                        <%@include file="WEB-INF/jspf/header.jspf" %>
                         <h1> Это четвёртая !!! </h1>
                    </td>
                       <!--вставка директивов -->     
                      <!--существуют ограничения в том что нет возможности
                   написать ни чего динамического!!!
                      -->                  
                </tr>
                <tr>
                    <!--Left column -->
                    <td height="600" width="20%" valign="top">
                    <!---директива-->
                        <%@include file="WEB-INF/jspf/menu.jspf" %>
                       
                    <!--2-ой способ, команда.
                    Здесь можно написать любое выражение-->
                     <jsp:include page="WEB-INF/jspf/menu.jsp" />
                     </td>
                   <!--Center column -->
                   <td>                 
                         <h1> <%= pf %> </h1>
                     s =<%=s1%>
                   </td>
                    <!--Right column -->
                    <td width="20%"></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
