<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 14.09.17
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <h2>Click to activate account</h2>
  <form method="post" action="${flowExecutionUrl}">
    <input type="submit" name="_eventId_activate" value="activate" />
    <input type="submit" name="_eventId_cancel" value="cancel" />
  </form>
  </body>
</html>
