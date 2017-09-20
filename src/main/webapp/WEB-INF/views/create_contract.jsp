<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Contract</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
        <div class="container"></div>
        <div style="min-height: 400px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
            <div style="min-height: 50px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
                <ul class="nav nav-tabs">
                    <li class="active"><a data-toggle="tab" href="${externalContext}/create_contract">Общая информация</a></li>
                    <li><a data-toggle="tab" href="#">График платежей</a></li>
                    <li><a data-toggle="tab" href="#menu2">Предмет договора</a></li>
                    <li><a data-toggle="tab" href="#menu2">Информация о подрядчике</a></li>
                    <li><a data-toggle="tab" href="#menu2">Документы</a></li>
                </ul>
            </div>
            <div style="min-height: 350px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
                <div class="tab-content">
                    <div id="home" class="tab-pane fade in active">
                        <%--<h3>HOME</h3>--%>
                        <%--<p>Some content.</p>--%>
                        <%--<div class="row vertical-align">--%>
                            <%--<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">--%>
                                <%--<div class="pull-left">--%>
                                    <%--<a href="#"><img src="../../static/images/save.png"/>Сохранить и закрыть</a>--%>
                                    <%--<a href="#"><img src="../../static/images/warming.png"/>Сохранить и проверить нарушения</a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">--%>
                                <%--<div class="pull-right">--%>
                                    <%--<a href="#"><img src="../../static/images/client_btn.png"></a>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    </div>
                    <div id="menu1" class="tab-pane fade">
                        <h3>Menu 1</h3>
                        <p>Some content in menu 1.</p>
                        <div class="row vertical-align">
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                                <div class="pull-left">
                                    <a href="#"><img src="../../static/images/save.png"/>Сохранить и закрыть</a>
                                    <a href="#"><img src="../../static/images/warming.png"/>Сохранить и проверить нарушения</a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <div class="pull-right">
                                    <a href="#"><img src="../../static/images/client_btn.png"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <h3>Menu 2</h3>
                        <p>Some content in menu 2.</p>
                        <div class="row vertical-align">
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                                <div class="pull-left">
                                    <a href="#"><img src="../../static/images/save.png"/>Сохранить и закрыть</a>
                                    <a href="#"><img src="../../static/images/warming.png"/>Сохранить и проверить нарушения</a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <div class="pull-right">
                                    <a href="#"><img src="../../static/images/client_btn.png"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <h3>Menu 2</h3>
                        <p>Some content in menu 2.</p>
                        <div class="row vertical-align">
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                                <div class="pull-left">
                                    <a href="#"><img src="../../static/images/save.png"/>Сохранить и закрыть</a>
                                    <a href="#"><img src="../../static/images/warming.png"/>Сохранить и проверить нарушения</a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <div class="pull-right">
                                    <a href="#"><img src="../../static/images/client_btn.png"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="menu2" class="tab-pane fade">
                        <h3>Menu 2</h3>
                        <p>Some content in menu 2.</p>
                        <div class="row vertical-align">
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                                <div class="pull-left">
                                    <a href="#"><img src="../../static/images/save.png"/>Сохранить и закрыть</a>
                                    <a href="#"><img src="../../static/images/warming.png"/>Сохранить и проверить нарушения</a>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <div class="pull-right">
                                    <a href="#"><img src="../../static/images/client_btn.png"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="min-height: 50px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
            <%--<div class="container">--%>
                <%--<div class="row vertical-align">--%>
                    <%--<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">--%>
                        <%--<div class="pull-left">--%>
                            <%--<a href="#"><img src="../../static/images/save.png"/>Сохранить и закрыть</a>--%>
                            <%--<a href="#"><img src="../../static/images/warming.png"/>Сохранить и проверить нарушения</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">--%>
                        <%--<div class="pull-right">--%>
                            <%--<a href="#"><img src="../../static/images/client_btn.png"></a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        </div>
    </div>
</div>
</body>
</html>