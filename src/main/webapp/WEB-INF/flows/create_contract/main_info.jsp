<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Main Info</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        /*
                .part_1 {
                    height: 250px;
                }
        */
        .inputs {
            width: 120px;
        }
    </style>
</head>
<body>
<div style="min-height: 400px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
    <div style="min-height: 50px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
        <ul class="nav nav-tabs">
            <li class="active"><a id="mainInfo" data-toggle="tab">Общая информация</a></li>
            <li><a id="paySchedule" data-toggle="tab" role="button"
                   onclick="submitMainInfoForm('${flowExecutionUrl}&_eventId=paySchedule')">График платежей</a></li>
            <li><a id="contractSubject" data-toggle="tab" role="button"
                   onclick="submitMainInfoForm('${flowExecutionUrl}&_eventId=contractSubject')">Предмет договора</a>
            </li>
            <li><a id="contractInfo" data-toggle="tab" role="button"
                   onclick="submitMainInfoForm('${flowExecutionUrl}&_eventId=contractorInfo')">Информация о
                подрядчике</a></li>
            <li><a id="docs" data-toggle="tab" role="button"
                   onclick="submitMainInfoForm('${flowExecutionUrl}&_eventId=docs')">Документы</a>
            </li>
        </ul>
    </div>
    <div style="min-height: 350px;" class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-danger">
        <div class="tab-content">
            <div style="height: 500px;" id="home" class="tab-pane fade in active border border-warning">
                <form:form method="get" id="mainInfoForm" modelAttribute="contract">
                    <div class="row vertical-align well">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-primary">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bg-primary text-white">
                                Информация о закупке
                            </div>

                        </div>

                        <div class="part_2 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <%--<div class="container">--%>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5"></div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <a href="#"><label class="pull-right" role="button">Выбрать из реестра закупок по
                                        капитальному
                                        ремонту</label></a>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>№ электронного аукциона</label></div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <form:input id="serialElectAuction" disabled="${contract.purchaseInfoLocatedInEIS}"
                                                cssClass="col-lg-8 col-md-8 col-sm-8 col-xs-8"
                                                path="serialElectAuction"/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5"></div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <label class="checkbox"> <form:checkbox id="purchaseInfoCheckBox"
                                                                            onclick="changeHidePurchaseInfo()"
                                                                            path="purchaseInfoLocatedInEIS"/> Информация
                                        о размещении закупки не
                                        размещалась в
                                        ЕИС</label>
                                </div>
                            </div>
                            <div id="hiddenPurchaseInfo" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        <label>Дата подведения результатов определения подрядной<br>
                                            организации</label></div>
                                    <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                        <input type="date"
                                               <c:if test="${!contract.purchaseInfoLocatedInEIS}">disabled</c:if>/>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        <label>Реквизиты документа, подтверждающего основание<br>
                                            заключения договора<span class="text-danger"> *</span></label>
                                    </div>
                                    <div class="form-group col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <input class="inputs"
                                                       <c:if test="${!contract.purchaseInfoLocatedInEIS}">disabled</c:if>/>
                                                <label>финансирование документа</label>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <div class="row vertical-align">
                                                    <label>№</label>
                                                    <input class="inputs"
                                                           <c:if test="${!contract.purchaseInfoLocatedInEIS}">disabled</c:if>/>
                                                </div>
                                                <label>номер документа</label>
                                            </div>
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <div class="row vertical-align">
                                                    <label>От</label>
                                                    <input type="date" class="inputs"
                                                           <c:if test="${!contract.purchaseInfoLocatedInEIS}">disabled</c:if>/>
                                                </div>
                                                <label>дата документа</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row vertical-align well">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-primary">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bg-primary text-white">
                                Заказчик
                            </div>

                        </div>
                        <div class="part_3 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <%--<div class="container">--%>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>Полное наименование Заказчика</label>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <c:out value="${contract.costumer.fullname}"/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>Сокращенное наименование Заказчика</label>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <c:out value="${contract.costumer.shortname}"/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>ИНН</label>
                                    <c:out value="${contract.costumer.inn}"/>
                                    <label>КПП</label>
                                    <c:out value="${contract.costumer.kpp}"/>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                </div>
                            </div>
                                <%--</div>--%>
                        </div>
                    </div>

                    <div id="generalData" class="row vertical-align well">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-primary">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bg-primary text-white">
                                Общие данные
                            </div>

                        </div>
                        <div class="part_1 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <%--<div class="container">--%>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>Дата заполнения документа</label>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <input type="date"/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>Дата заключения договора<span class="text-danger"> *</span></label>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <input type="date"/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>Номер реестровой записи</label>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <label>Номер реестровой записи будет присвоен после размещения информации в
                                        реестре</label>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>№ договора</label>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <input placeholder="Номер договора"/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>Цена договора<span class="text-danger"> *</span></label>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <input/><label>в российских рублях</label>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>Количество этапов исполнения договора<span
                                            class="text-danger"> *</span></label>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <c:forEach var="stepType" items="${stepTypes}">
                                        <form:radiobutton onclick="switchStepType()" path="stepType" value="${stepType}"
                                                          label="${stepType.description}"/>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>Дата начала срока исполнения договора<span
                                            class="text-danger"> *</span></label>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <input type="date"/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>Дата окончания срока исполнения договора<span
                                            class="text-danger"> *</span></label>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <input type="date"/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>Срок исполнения договора</label>
                                </div>
                                <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <input/><label>календарных дней</label>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                    <label>Даты начала и окончания исполнения этапов<br> договора<span
                                            class="text-danger"> *</span></label>
                                </div>
                                <div id="stepDates" <c:if test="${contract.stepType eq 'ONE'}">hidden</c:if> class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                    <!--если несколько этапов-->
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <a onclick="addStepFunc()" id="addStepButton"  href="#"><img src="../../../static/images/add_green.gif"/>Добавить</a>
                                    </div>
                                    <!--группа дат-->
                                    <div  class="group-date well col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <div id="firstStepDates" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <input type="date"/>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                                                <input type="date"/>
                                            </div>
                                        </div>
                                        <div id="lastStepDates" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                                <input type="date"/>
                                            </div>
                                            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                                                <input type="date"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    <%--</div>--%>
                            </div>
                        </div>
                    </div>

                    <div class="row vertical-align well">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-primary">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bg-primary text-white">
                                Источники финансирования
                            </div>

                        </div>
                        <div class="part_3 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <%--<div class="container">--%>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <label>Тип источника финансирования по<br>капитальному ремонту<span
                                            class="text-danger"> *</span></label>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <form:select path="typeSourceFinancing">
                                        <c:choose>
                                            <c:when test="${contract.typeSourceFinancing eq null}">
                                                <option value="" disabled selected>Выберите тип источника финансирования
                                                    по капитальному ремонту
                                                </option>
                                            </c:when>
                                            <c:otherwise>
                                                <form:option value="${contract.typeSourceFinancing}"
                                                             label="${contract.typeSourceFinancing.description}"/>
                                            </c:otherwise>
                                        </c:choose>
                                        <c:forEach var="typeSourceFinancing" items="${typeSourceFinancings}">
                                            <c:if test="${contract.typeSourceFinancing ne typeSourceFinancing}">
                                                <form:option value="${typeSourceFinancing}"
                                                             label="${typeSourceFinancing.description}"/>
                                            </c:if>
                                        </c:forEach>
                                    </form:select>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <label>Наименование источника финансирования<span
                                            class="text-danger"> *</span></label>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <textarea class="area" rows="2" cols="50"></textarea>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <a href="#"><img src="../../../static/images/add.png"/> Добавить</a>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                </div>
                            </div>
                            <div class="well col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        <label class="text-center">Тип источника финансирования по<br>
                                            капитальному ремонту
                                        </label>
                                    </div>
                                    <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <label>Наименование источника финансирования</label>
                                        </div>
                                    </div>
                                </div>
                                <hr class="col-xs-12">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        <label>Бюджет субъекта Российской Федерации
                                        </label>
                                    </div>
                                    <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                            <label>Бюджет Сахалинской области</label>
                                        </div>
                                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <a href="#"><img src="../../../static/images/edit.png"/>
                                                    Редактировать</a>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <a href="#"><img src="../../../static/images/del.png"/>
                                                    Удалить</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr class="col-xs-12">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                        <label class="text-center">Средства собственников помещений в<br>
                                            многоквартирных домах
                                        </label>
                                    </div>
                                    <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                                            <label>
                                                Средства РФКР Республики Марий Эл
                                            </label>
                                        </div>
                                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <a href="#"><img src="../../../static/images/edit.png"/>
                                                    Редактировать</a>
                                            </div>
                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <a href="#"><img src="../../../static/images/del.png"/>
                                                    Удалить</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    <%--</div>--%>
                            </div>
                        </div>
                    </div>

                    <div class="row vertical-align well">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-primary">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 bg-primary text-white">
                                Обеспечение исполнения договора
                            </div>

                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <%--<div class="container">--%>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <label class="checkbox"> <input type="checkbox"> Задать требование об обеспечении
                                    использования договора</label>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <label>Вид обеспечения исполнения обязательств<br>по договору</label>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <c:forEach var="assuranceType" items="${assuranceTypes}">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <form:radiobutton path="assuranceType" value="${assuranceType}"
                                                              label="${assuranceType.description}"/>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <label>Номер реестровой записи из рестра<br> банковских гарантий<span
                                            class="text-danger"> *</span></label>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <input class="col-lg-12 col-md-12 col-sm-12 col-xs-12"/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <label>Размер обеспечения исполнения договора<span
                                            class="text-danger"> *</span></label>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                    <input/><label>в российских рублях</label>
                                </div>
                            </div>
                                <%--</div>--%>
                        </div>
                    </div>
                </form:form>
                <div class="row vertical-align well">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 border border-primary">
                        <div class="pull-left">
                            <a href="#"><img src="../../../static/images/save.png"/>Сохранить и закрыть</a>
                            <a href="#"><img src="../../../static/images/warming.png"/>Сохранить и проверить
                                нарушения</a>
                        </div>
                        <a class="pull-right btn btn-primary"
                           onclick="submitMainInfoForm('${flowExecutionUrl}&_eventId=next')"
                        >Далее
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
