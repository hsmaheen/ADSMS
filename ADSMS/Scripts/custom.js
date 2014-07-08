/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


//--------------HANDLEBARS TEMPLATE INJECTION-------------------------
function includes(tmpl_name, tmpl_data, target) {

    var tmpl_dir = "/Presentation/templates";
    var tmpl_url = tmpl_dir + "/" + tmpl_name + ".html";
    //console.log("template url>>> "+tmpl_url);
    var tmpl_string;

    $.ajax({
        url: tmpl_url,
        method: 'GET',
        async: false,
        success: function (data) {
            tmpl_string = data;
        }
    });

    //console.log("template_data>>>> " + tmpl_string);

    var hFunction = Handlebars.compile(tmpl_string);

    $(target).html(hFunction(tmpl_data));
    //$(target).html("hello world");

}
//--------------END HANDLEBARS INJECTION-------------------------------

//----Forms Authentication---------------

Handlebars.registerHelper('isAuthenticated', function (context, options) {
    var result = $.cookie('verified');

    if (result != null && result == 'true')
        return options.fn(this);
    else
        return options.inverse(this);
});

//---------Convert to JSON Object---------
(function ($) {

    //--------- Converts a form serializedArray to a JSON object---------------

    $.fn.toJson = function () {

        var jsonObj = {};
        var formArray = this.serializeArray();
        for (var i = 0; i < formArray.length; i++) {
            var ff = formArray[i];
            if (jsonObj[ff.name]) {
                if (!jsonObj.push) //if not array
                {
                    jsonObj[ff.name] = [jsonObj[ff.name]];
                    jsonObj[ff.name].push(ff.value);
                }
                else //if push is available
                {
                    jsonObj[ff.name].push(ff.value);
                }
            }
            else {
                jsonObj[ff.name] = ff.value;
            }
        }
        return jsonObj;
    };

}(jQuery));


//------SENDING TO SERVLET---------
(function ($) {
    $.fn.toAjax = function (url, success, fail, data, contentType) {
        //do ajax call
        var curr_contentType = contentType || "application/json";

        $.ajax({
            contentType: curr_contentType,
            type: "POST",
            data: data,
            url: url,
        }).done(success).fail(fail);

        //async o
        return this;
    };

}(jQuery));


// Numeric only control handler
jQuery.fn.ForceNumericOnly =
function () {
    return this.each(function () {
        $(this).keydown(function (e) {
            if (e.shiftKey || e.ctrlKey || e.altKey) {
                e.preventDefault();
            } else {
                var key = e.keyCode;
                if (!((key == 8) || (key == 46) || (key >= 35 && key <= 40) || (key >= 48 && key <= 57) || (key >= 96 && key <= 105))) {
                    e.preventDefault();
                }
            }
        });
    });
};
