

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>First Page</title>
        <!--прописание подсветки страницы на которой находимся-->
        <link rel="stylesheet" href="css/styles.css" />
    </head>
    <body>
        <!--text-->
        <jsp:useBean id="student1" scope="session" class="home.work.Student" />
        <jsp:setProperty name="student1" property="*" />

        <%--<%="text"%>--%>
        <table border="1" width="100%">        

            <tbody>   
                <tr>
                    <td height="150" colspan="3" id="header">
                        <%@include file="WEB-INF/jspf/header.jspf" %>

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
                    <td valign='top'>        
                        <h2>Student's data:</h2>
                        Name: <%= student1.getName()%><br/>
                       Year of birth: <jsp:getProperty name="student1" property="yearOfBirth" /><br/> 
                        <!-- другой вариант вывода с увелтчением на 10 лет: --> 
                        Year of birth + 10Year: <%=student1.getYearOfBirth() + 10%><br/>
                        Email:<%= student1.getEmail()%><br/> 
                        <hr>
     <!--активная ссылка на перенаправление, на сервлет-->
                        <a href="BeanInfo" >Servlet</a>
                        <h1> <%= pf%> </h1>
                        s =<%=s1%>                   
                    </td>
                    <!--Right column -->
                    <td width="20%"></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
