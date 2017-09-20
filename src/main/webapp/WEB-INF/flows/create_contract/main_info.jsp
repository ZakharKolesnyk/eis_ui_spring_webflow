<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 20.09.17
  Time: 14:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main Info</title>
</head>
<body>
<h3>Main Info</h3>
<p>Some content.</p>
<div class="row vertical-align" style="height: 400px">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
        <div class="pull-left">
            <a href="#"><img src="../../../static/images/save.png"/>Сохранить и закрыть</a>
            <a href="#"><img src="../../../static/images/warming.png"/>Сохранить и проверить нарушения</a>
        </div>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
        <div class="pull-right">
            <form method="post" action="${flowExecutionUrl}">
                <%--<a href="#"><img src="../../../static/images/client_btn.png"></a>--%>
                <button type="submit" name="_eventId_next" value="next"><img src="../../../static/images/client_btn.png"></button>
                <%--<input type="submit" name="_eventId_activate" value="activate" />--%>
                <%--<input type="submit" name="_eventId_cancel" value="cancel" />--%>
            </form>

        </div>
    </div>
</div>
</body>
</html>
