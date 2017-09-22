<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pay Schedule</title>
</head>
<body>
<div style="min-height: 400px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
    <div style="min-height: 50px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
        <ul class="nav nav-tabs">
            <li><a id="mainInfo" data-toggle="tab"
                   onclick="contractTabContent('${flowExecutionUrl}&_eventId=mainInfo')"
                   role="button">Общая информация</a></li>
            <li class="active"><a id="paySchedule" data-toggle="tab">График платежей</a></li>
            <li><a id="contractSubject" data-toggle="tab"
                   onclick="contractTabContent('${flowExecutionUrl}&_eventId=contractSubject')"
                   role="button">Предмет договора</a></li>
            <li><a id="contractInfo" data-toggle="tab"
                   onclick="contractTabContent('${flowExecutionUrl}&_eventId=contractorInfo')"
                   role="button">Информация о подрядчике</a></li>
            <li><a id="docs" data-toggle="tab" onclick="contractTabContent('${flowExecutionUrl}&_eventId=docs')"
                   role="button">Документы</a></li>
        </ul>
    </div>
    <div style="min-height: 350px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
        <div class="tab-content" id="tabContent">
            <div id="home" class="tab-pane fade in active">
                <h1>PaySchedule</h1>
            </div>
        </div>
    </div>
</div>
<div class="row vertical-align" style="height: 400px">
    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
        <div class="pull-left">
            <a href="#"><img src="../../../static/images/save.png"/>Сохранить и закрыть</a>
            <a href="#"><img src="../../../static/images/warming.png"/>Сохранить и проверить нарушения</a>
        </div>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
        <div class="pull-right">
            <a class="pull-right btn btn-primary"
               onclick="contractTabContent('${flowExecutionUrl}&_eventId=next')">Next</a>
        </div>
    </div>
</div>
</body>
</html>
