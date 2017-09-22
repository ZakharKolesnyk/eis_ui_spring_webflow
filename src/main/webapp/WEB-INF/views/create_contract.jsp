<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Contract</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../../static/js/contract.js"></script>
</head>
<body>
<div class="row vertical-align well">
    <div style="min-height: 500px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-primary">
        <div style="min-height: 50px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
            <div class="row vertical-align">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                    <div class="pull-left">
                        <p>Реестр договоров о проведении капитального ремонта</p>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                    <div class="pull-right">
                        <a href="#"><img src="../../static/images/world.png"/>Направить на размещение</a>
                        <a href="#"><img src="../../static/images/del.png"/>Удалить</a>
                        <a href="#"><img src="../../static/images/printer.png"/>Печатная форма</a>
                    </div>
                </div>
            </div>
        </div>
        <div id="tabContent"></div>
    </div>
</div>
</body>
<script>
    $(document).ready(function () {
        var url = '${externalContext}/create_contract';
        contractTabContent(url);
    });
</script>
</html>