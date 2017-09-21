function contractTabContent(url, data) {
    $.get(url, {
            data: data
        }, function (responseText) {
            $('#tabContent').html(responseText);
        }
    );
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