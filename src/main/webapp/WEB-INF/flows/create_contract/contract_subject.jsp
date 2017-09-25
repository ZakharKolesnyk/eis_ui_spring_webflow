<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contract subject</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        div.dashed {
            border-style: dashed;
            color: grey;
        }
    </style>
</head>
<body>
<div style="min-height: 400px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
    <div style="min-height: 50px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
        <ul class="nav nav-tabs">
            <li><a id="mainInfo" data-toggle="tab"
                   onclick="submitMainInfoForm('${flowExecutionUrl}&_eventId=mainInfo')"
                   role="button">Общая информация</a></li>
            <li><a id="paySchedule" data-toggle="tab"
                   onclick="submitMainInfoForm('${flowExecutionUrl}&_eventId=paySchedule')"
                   role="button">График платежей</a></li>
            <li class="active"><a id="contractSubject" data-toggle="tab">Предмет договора</a></li>
            <li><a id="contractInfo" data-toggle="tab"
                   onclick="submitMainInfoForm('${flowExecutionUrl}&_eventId=contractorInfo')"
                   role="button">Информация о подрядчике</a></li>
            <li><a id="docs" data-toggle="tab" onclick="submitMainInfoForm('${flowExecutionUrl}&_eventId=docs')"
                   role="button">Документы</a></li>
        </ul>
    </div>
    <div style="min-height: 350px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
        <div class="tab-content" id="tabContent">
            <div id="home" class="tab-pane fade in active">
                <div class="row vertical-align well">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-primary">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bg-primary text-white">
                            Объект закупки
                        </div>
                    </div>
                    <div class="part_1 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <label>Предмет электронного аукциона<span class="text-danger"> *</span></label>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                                    <div class="form-group">
                                        <!--see business logic-->
                                        <select class="form-control">
                                            <option value="">Вид работ. услуг</option>
                                            <option value="">Услуга 2</option>
                                            <option value="">Услуга 3</option>
                                            <option value="">Услуга 4</option>
                                        </select>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <label style="color: grey;">Вид работ:</label>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">
                                    <div class="form-group">
                                        <!--see business logic-->
                                        <select class="form-control" disabled>
                                            <option value="">Выберите вид работы в соответствии со ст . 106 ЖК РФ или
                                                укажите свое
                                                название
                                            </option>
                                            <option value="">Услуга 2</option>
                                            <option value="">Услуга 3</option>
                                            <option value="">Услуга 4</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                                    <a href="#" role="button"><img src="../../../static/images/add_green.gif"/></a>

                                </div>
                            </div>
                            <div class="dashed col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                    <label>1. Ремонт внутридомных инженерных систем водоснабжения</label>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                    <a href="#" role="button" class="pull-right"><img
                                            src="../../../static/images/del.png"/>Удалить</a>
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                                    <label>2. Замена фланцевых соединений труб</label>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                    <a href="#" role="button" class="pull-right"><img
                                            src="../../../static/images/del.png"/>Удалить</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                <label>Объект закупки {нет сведений}</label>
                            </div>
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                                <label>Цена договора {800 000,00} в российских рублях, из них не введено ревбанке по
                                    стоимости объектов
                                    закупки</label>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                <label class="text-danger">{420 000,00}</label>
                            </div>
                        </div>


                        <div class="well text-center col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                                <label>№, п/п</label>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label>Место проведения работ</label>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <label>Вид работ</label>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                <label>Стоимость, руб</label>
                            </div>
                            <hr class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                                <label>1</label>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <label>г. Мосва Покровкад 7</label>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <label>Ремонт фундамента многоквартирного дома, ремонт фасада</label>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                <label>300 000,00</label>
                            </div>
                            <div class="text-left col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <a href="#" role="button"><img src="../../../static/images/edit.png"/> Редактировать</a>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <a href="#" role="button"><img src="../../../static/images/del.png"/> Удалить</a>
                                </div>
                            </div>
                            <hr class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
                                <label>2</label>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                                <div class="col-lg-10 col-md-11 col-sm-11 col-xs-11">
                                    <textarea size="3">Укажите место проведения работ</textarea></div>

                                <a href="#" role="button"><img src="../../../static/images/edit.png"/></a>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                <div class="form-group">
                                    <!--see business logic-->
                                    <select class="form-control">
                                        <option value="" disabled>Укажите вид услуг</option>
                                        <option value="">Услуга 2</option>
                                        <option value="">Услуга 3</option>
                                        <option value="">Услуга 4</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                <input class="text-right" type="text" value="0,00"/>
                            </div>
                            <div class="text-left col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <a href="#" role="button"><img src="../../../static/images/save.gif"/>Сохранить</a>
                                </div>
                            </div>
                            <hr class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8"></div>
                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                <label>Итого: {380 000,00}</label>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2"></div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                                <a href="#" role="button" class="pull-left"><img src="../../../static/images/add_green.gif"/>Добавить
                                    новую
                                    таблицу</a>
                            </div>
                        </div>
                    </div>
                </div>
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
               onclick="submitMainInfoForm('${flowExecutionUrl}&_eventId=next')">Далее</a>
        </div>
    </div>
</div>
</body>
</html>