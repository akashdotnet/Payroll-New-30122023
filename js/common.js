var Toast = null;
var MASTERLIST = [];
$(function () {

    $(".js-datePicker").datepicker({
        minDate: 0
    });

    Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000
    });

    var ulMenu = $('#ulMenu').find('li > ul > li> a > p');
    $.each(ulMenu, function (p, v) {
        var pageName = getUrlParameter('pageName');
        if (typeof pageName != 'undefined') { // sent exists
            if (pageName.trim() == $(v).html().trim()) { // sent is equal to yes
                $(v).parent('a').addClass('active');
                $(v).parent().parent().parent().parent().addClass('menu-open')
            }
        }
    });
});

var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = window.location.search.substring(1),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
        }
    }
};
var showModal = function () {
    //$('body').loadingModal({ text: '<img src="../Images/loading9.gif" />' });
    $('body').loadingModal();
};

var hideModal = function () {
    $('body').loadingModal('destroy');
};

var showNotification = function (title, message, type) {
    Toast.fire({ type: type, title: message });
};

var loadMasters = function () {
    var _url = baseUrl + 'Master/GetMaster';
    $.ajax({
        url: _url,
        type: 'GET',
        async: false,
        success: function (data) {
            MASTERLIST = [];
            MASTERLIST = data.Lst;
            MASTERLIST.EmployeeList = [];            
            MASTERLIST.EmployeeList = data.EmployeeList;
            MASTERLIST.SalaryTemplate = [];
            MASTERLIST.SalaryTemplate = data.Salarytemplate;
            MASTERLIST.Shift = [];
            MASTERLIST.Shift = data.dtShift;
        },
        error: function (request, message, error) {
            hideModal();
        }
    });
};

var highchartData = function (text, id, name, result) {

    Highcharts.chart(id, {
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: text
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        accessibility: {
            point: {
                valueSuffix: '%'
            }
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: false
                },
                showInLegend: true
            }
        },
        series: [{
            name: name,
            colorByPoint: true,
            data: result
        }]
    });
};

var highChartIndiaMap= function (text, id, name, result) {
    Highcharts.mapChart(id, {
        chart: {
            map: 'countries/in/in-all'
        },

        title: {
            text: text
        },

        //subtitle: {
        //    text: 'Source map: <a href="http://code.highcharts.com/mapdata/countries/in/in-all.js">India</a>'
        //},

        mapNavigation: {
            enabled: true,
            buttonOptions: {
                verticalAlign: 'bottom'
            }
        },

        colorAxis: {
            min: 0
        },

        series: [{
            data: result,
            name: name,
            states: {
                hover: {
                    color: '#BADA55'
                }
            },
            dataLabels: {
                enabled: true,
                format: '{point.name}'
            }
        }]
    });
};

