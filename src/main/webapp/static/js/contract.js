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

function changeHidePurchaseInfo () {
    if ($("#purchaseInfoCheckBox").is(":checked"))
    {
        $('#serialElectAuction').attr("disabled", true);
        $('#serialElectAuction').attr("value", '');
        $("#hiddenPurchaseInfo :input").attr("disabled", false);
    } else {
        $('#serialElectAuction').attr("disabled", false);
        $("#hiddenPurchaseInfo :input").attr("disabled", true);
    }
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