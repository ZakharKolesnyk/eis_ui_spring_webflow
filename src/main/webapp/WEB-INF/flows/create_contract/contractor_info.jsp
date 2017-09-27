<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contractor Info</title>
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
            <li><a id="contractSubject" data-toggle="tab"
                   onclick="submitMainInfoForm('${flowExecutionUrl}&_eventId=contractSubject')"
                   role="button">Предмет договора</a></li>
            <li class="active"><a id="contractInfo" data-toggle="tab">Информация о подрядчике</a></li>
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
                            Информация о квалифицированной подрядной организации
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <label>Вид</label>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <input name="kindContractor" type="radio" checked/>
                                <!--если выбран этот пункт то отображатся доплнительные элементы-->
                                <label>Юридическое лицо РФ</label>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <input name="kindContractor" type="radio"/><label>Индивидуальный предприниматель</label>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <input name="kindContractor" type="radio"/><label>Юридическое лицо иностранного
                                государства</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                            <!--должно открыать модальное окно-->
                            <a href="#"><label>Заполнить сведения о подрядчике из Реестра квалифицированных подрядных
                                организаций</label></a>
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                            <a class="pull-right" href="#"><label>№ {562323464554}</label></a>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <!--должно открыать модальное окно-->
                            <a href="#"><label>Заполнить сведения о подрядчике на основании ЕГРЮЛ</label></a>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <label>Организационно-правовая форма</label>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                            <select class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <option value="" disabled selected>Выберите
                                </option>
                                <option value="1">second</option>
                                <option value="2">tird</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <label>Полное наименование</label>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
        <textarea rows="3" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        {ООО "Спецмонтажстрой"}</textarea>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <label>Сокращенное наименование</label>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
        <textarea rows="3" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        {ООО "Спецмонтажстрой"}</textarea>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <label>ИНН</label>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                            <input type="text" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" value='{3652654498411}'/>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <label>КПП</label>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                            <input type="text" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" value='{3652654498411}'/>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                            <label class="pull-right">Дата постановки на учет в налоговом органе
                            </label>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <input class="col-lg-12 col-md-12 col-sm-12 col-xs-12" type="date"/>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <label>Адрес места нахождения</label>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
        <textarea rows="3" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        {адрес}</textarea>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <label>Электронная почта</label>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <input type="text" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" value='{asd@df.sdf}'/>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <label>Контактное лицо</label>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <input type="text" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" value='{фамилия}'/>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <input type="text" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" value='{имя}'/>
                        </div>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <input type="text" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" value='{отчество}'/>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
                            <label>Контактный телефон</label>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                            <label>+</label>
                            <input type="text" style="width: 35px; text-align: center;" value='{7}'/>
                            <label>(</label>
                            <input type="text" style="width: 65px; text-align: center;" value='{8050}'/>
                            <label>)</label>
                            <input type="text" style="width: 85px; text-align: center;" value='{1234567}'/>
                            <label>доб. </label>
                            <input type="text" style="width: 75px; text-align: center;" value='{123456}'/>
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