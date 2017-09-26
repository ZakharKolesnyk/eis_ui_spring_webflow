function contractTabContent(url, data) {
    $.get(url, {
            data: data
        }, function (responseText) {
            $('#tabContent').html(responseText);
        }
    );
}

function submitMainInfoForm(url) {
    $.ajax({
        type: 'POST',
        data: $('#mainInfoForm').serialize(),
        url: url
    }).done(
        function (responseText) {
            $('#tabContent').html(responseText);
        });
}

function changeHidePurchaseInfo() {
    if ($("#purchaseInfoCheckBox").is(":checked")) {
        $('#serialElectAuction').attr("disabled", true);
        $('#serialElectAuction').attr("value", '');
        $("#hiddenPurchaseInfo :input").attr("disabled", false);
    } else {
        $('#serialElectAuction').attr("disabled", false);
        $("#hiddenPurchaseInfo :input").attr("disabled", true);
    }
}

function switchStepType() {
    if ($('input[name=stepType]:checked').val() === 'ONE') {
        $('#addStepButton').hide();
        var steps = $('#stepDates').children();
        $('#stepDates').children().hide();
        $('#firstStepDates').show();
        $('#lastStepDates').show();
    } else {
        $('#addStepButton').show();
        $('#stepDates').children().show();
    }
}

function addStepFunc() {
    $("#stepDates #lastStepDates:last").before(
        "<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\n" +
        "                                            <div class=\"col-lg-4 col-md-4 col-sm-4 col-xs-4\">\n" +
        "                                                <input type=\"date\"/>\n" +
        "                                            </div>\n" +
        "                                            <div class=\"col-lg-8 col-md-8 col-sm-8 col-xs-8\">\n" +
        "                                                <input type=\"date\"/>\n" +
        "                                                <a href=\"#\" onclick='rmGrandParent(this)'><img src=\"../../../static/images/del.png\"/>Удалить</a>\n" +
        "                                            </div>\n" +
        "                                        </div>");
    scrollToGeneralData();
}

function rmGrandParent(node) {
    node.parentNode.parentNode.parentNode.removeChild(node.parentNode.parentNode);
    scrollToGeneralData();
}

function scrollToGeneralData() {
    var generalData = $('#generalData');
    $('html, body').animate({
        scrollTop: generalData.offset().top - ( $(window).height() - generalData.outerHeight(true)) / 2
    }, 1000);
}


// $.ajax({
//     url: url,
//     data: data
// , success: function (data, textstatus, xhrreq) {
//         $('#home').html(data);
//     console.log(xhrreq.getResponseHeader("X-MYAPP-PATH"));
//     console.log(data);
// }});
// }

//
// function contractTabContent(url, data) {
//     var result = $.get(url, {
//             data: data
//         }, function (responseText) {
//             $('#home').html(responseText);
//         }
//     );
//     console.log(result);
// }