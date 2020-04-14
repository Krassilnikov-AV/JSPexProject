

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String p = request.getRequestURI();%>
<hr>
We are here:<%=p %><br/>
<hr>
 <!--
 <a href="index.jsp" class="current">Main page</a><br/>
 <a href="page2.jsp" class="other">Page 2</a><br/>
 <a href="page3.jsp" class="other">Page 3</a><br/>
 <a href="page4.jsp">Page 4</a><br/>
 -->
 <!--проверка, что выдает выражение: -->
 
 <a href="index.jsp" class="<%=(p.endsWith("index.jsp")||p.endsWith("/"))?"current":"other"%>">Main page</a><br/>
 <a href="page2.jsp" class="<%=(p.endsWith("page2.jsp"))?"current":"other"%>">Page 2</a><br/>
<a href="page3.jsp" class="<%=(p.endsWith("page3.jsp"))?"current":"other"%>">Page 3</a><br/>
 <a href="page4.jsp" class="<%=(p.endsWith("page4.jsp"))?"current":"other"%>">Page 4</a><br/>