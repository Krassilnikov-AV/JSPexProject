

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html" xmlns:f="http://xmlns.jcp.org/jsf/core">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>First Page</title>
        <!--прописание подсветки страницы на которой находимся-->
        <link rel="stylesheet" href="css/styles.css" />
    </head>
    <body>
        <!--text-->
        <%--<%="text"%>--%>
        <table border="1" width="100%" cellpadding='10'>        

            <tbody>   
                <tr>
                    <td height="150" colspan="3" id="header">
                        <%@include file="WEB-INF/jspf/header.jspf" %>
                        <h1> index </h1>
                    </td>
                       <!--вставка директивов -->     
                      <!--существуют ограничения в том что нет возможности
                   написать ни чего динамического!!!-->                  
                </tr>
                <tr>
                    <!--Left column -->
                    <td height="600" width="20%" valign="top">
                    <!---директива->
                        <%@include file="WEB-INF/jspf/menu.jspf" %>
                    
                    <!--2-ой способ, команда.
                    Здесь можно написать любое выражение-->
                     <jsp:include page="WEB-INF/jspf/menu.jsp" />
                     </td>
                   <!--Center column -->
                   <td valign="top">    
                       <h2>Studen's data</h2>
                       <form name="f" action="page2.jsp" method="POST">
                           Name: <input type="text" name="name" value="" /><br/>
                           Year of birth: <input type='text' name="yearOfBirth" value="" /><br/>
                            Email: <input type="text" name="email" value="" /><br/>
                            <input type="submit" value="Submit" name="send" />                       
                       </form>

                       
                     s =<%=s1%>
                       <h1> <%= pf %> </h1>
                   </td>
                    <!--Right column -->
                    <td width="20%"></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
