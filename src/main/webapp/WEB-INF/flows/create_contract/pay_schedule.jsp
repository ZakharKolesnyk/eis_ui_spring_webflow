<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pay Schedule</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div style="min-height: 400px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
    <div style="min-height: 50px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
        <ul class="nav nav-tabs">
            <li><a id="mainInfo" data-toggle="tab"
                   onclick="submitMainInfoForm('${flowExecutionUrl}&_eventId=mainInfo')"
                   role="button">Общая информация</a></li>
            <li class="active"><a id="paySchedule" data-toggle="tab">График платежей</a></li>
            <li><a id="contractSubject" data-toggle="tab"
                   onclick="submitMainInfoForm('${flowExecutionUrl}&_eventId=contractSubject')"
                   role="button">Предмет договора</a></li>
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
                            График платежей
                        </div>

                    </div>
                    <div class="part_1 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <label class="checkbox"> <input type="checkbox"> Указать график платежей в разбивке по этапам договора и
                                источникам финансирования</label>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <label>Цена договора {price} в российских рублях, из них введено в разбивке по годам <span
                                    class="text-danger">{other price}</span></label>
                        </div>
                        <div class="well col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <label class="text-primary">Этап: от {Дата начала исполнения этапа} до {Дата окончания
                                        исполнения этапа}</label>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <label class="text-danger">{summ}</label>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>{Наименование источника финансирования}</label>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <label>Сумма договора на<span class="text-danger"> *</span></label>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <!--see business logic-->
                                            <select class="form-control">
                                                <option value="2000">2000</option>
                                                <option value="2001">2001</option>
                                                <option value="2002">2002</option>
                                                <option value="2003">2003</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <label>Сумма договора на<span class="text-danger"> *</span></label>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <!--see business logic-->
                                        <select class="form-control">
                                            <option value="2000">2000</option>
                                            <option value="2001">2001</option>
                                            <option value="2002">2002</option>
                                            <option value="2003">2003</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                    <a href="#" role="button"><img src="../../../static/images/add_green.gif"/>Добавить период</a>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <div class="form-group">
                                        <!--see business logic-->
                                        <select class="form-control">
                                            <option value="">Бюджет сахалинской области</option>
                                            <option value="">2001</option>
                                            <option value="">2002</option>
                                            <option value="">2003</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <input type="text"/>
                                    <input type="text"/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <div class="form-group">
                                        <!--see business logic-->
                                        <select class="form-control">
                                            <option value="">Источник финансирования</option>
                                            <option value="">2001</option>
                                            <option value="">2002</option>
                                            <option value="">2003</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <input type="text"/>
                                    <input type="text"/>
                                    <a href="#" role="button"><img src="../../../static/images/del.png"/>Удалить источник</a>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <a href="#" role="button"><img src="../../../static/images/add_green.gif"/>Добавить период</a>
                                </div>
                            </div>
                            <hr class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label class="pull-right">Итого:</label>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <label>{450 000,00} в российских рублях</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="part_3 col-lg-12 col-md-12 col-sm-12 col-xs-12">

                        <div class="well col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <label class="text-primary">Этап: от {Дата начала исполнения этапа} до {Дата окончания
                                        исполнения этапа}</label>
                                </div>

                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="text-center col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>Источники финансирования</label>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <label>Сумма договора на<span class="text-danger"> *</span></label>
                                    </div>
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <!--see business logic-->
                                            <select class="form-control">
                                                <option value="2000">2000</option>
                                                <option value="2001">2001</option>
                                                <option value="2002">2002</option>
                                                <option value="2003">2003</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                    <a href="#" role="button"><img src="../../../static/images/add_green.gif"/>Добавить период</a>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <div class="form-group">
                                        <!--see business logic-->
                                        <select class="form-control">
                                            <option value="">Бюджет сахалинской области</option>
                                            <option value="">2001</option>
                                            <option value="">2002</option>
                                            <option value="">2003</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <input type="text"/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <div class="form-group">
                                        <!--see business logic-->
                                        <select class="form-control">
                                            <option value="">Источник финансирования</option>
                                            <option value="">2001</option>
                                            <option value="">2002</option>
                                            <option value="">2003</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <input type="text"/>
                                    <a href="#" role="button"><img src="../../../static/images/del.png"/>Удалить источник</a>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <div class="form-group">
                                        <!--see business logic-->
                                        <select class="form-control">
                                            <option value="">Источник финансирования</option>
                                            <option value="">2001</option>
                                            <option value="">2002</option>
                                            <option value="">2003</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <input type="text"/>
                                    <a href="#" role="button"><img src="../../../static/images/del.png"/>Удалить источник</a>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <a href="#" role="button"><img src="../../../static/images/add_green.gif"/>Добавить период</a>
                                </div>
                            </div>
                            <hr class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label class="pull-right">Итого:</label>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <label>{450 000,00} в российских рублях</label>
                                </div>
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
