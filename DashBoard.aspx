<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="Samples.DashBoard" MasterPageFile="~/Main.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%: System.Web.Optimization.Scripts.Render("~/bundles/jquery") %>
    <%: System.Web.Optimization.Scripts.Render("~/bundles/highchart") %>
    <script type="text/javascript">
        var baseUrl = '<%= ConfigurationManager.AppSettings["baseUrl"]%>';
        $(function () {
            showModal();
            var _url = baseUrl + 'Master/GetMaster';
            $.ajax({
                url: _url,
                type: 'GET',
                // async: false,
                success: function (data) {
                    MASTERLIST = [];
                    MASTERLIST = data.Lst;
                    MASTERLIST.EmployeeList = [];
                    MASTERLIST.EmployeeList = data.EmployeeList;
                    MASTERLIST.SalaryTemplate = [];
                    MASTERLIST.SalaryTemplate = data.Salarytemplate;
                    MASTERLIST.Shift = [];
                    MASTERLIST.Shift = data.dtShift;



                    loadGraph();
                    var date = new Date();
                    var todayDate = date.getDate() + "/" + date.getMonth() + "/" + date.getFullYear();
                    var lstData = [null, null, null, true, null, null, null, null, null, 0, 0, 2, 'tableDailyAttendance', date];
                    var url = baseUrl + 'Attendance';
                    $.ajax({
                        url: url,
                        type: 'POST',
                        dataType: "json",
                        async: false,
                        contentType: "application/json; charset=utf-8",
                        data: JSON.stringify(lstData),
                        success: function (data) {
                            drawAttendanceChart(data);
                            hideModal();
                        },
                        error: function (request, message, error) {
                            hideModal();
                        }
                    });
                },
                error: function (request, message, error) {
                    hideModal();
                }
            });

        });

        var loadGraph = function () {
            var html = '<ul class="nav flex-column">'
                + '<li class="nav-item">'
                + '<a href="Shift.aspx" class="nav-link" target="_blank">'
                + 'Shift <span class="float-right badge bg-primary">' + MASTERLIST.Shift.length + '</span>'
                + '</a>'
                + '</li>'
                + '<li class="nav-item">'
                + '<a href="Employee1.aspx" class="nav-link" target="_blank">'
                + 'Total Employee <span class="float-right badge bg-primary">' + MASTERLIST.EmployeeList.length + '</span>'
                + '</a>'
                + '</li>'
                + '<li class="nav-item">'
                + '<a href="Master/SalaryTemplate.aspx" class="nav-link" target="_blank">'
                + 'Salary Template <span class="float-right badge bg-primary">' + MASTERLIST.SalaryTemplate.length + '</span>'
                + '</a>'
                + '</li>'
                + '<li class="nav-item">'
                + '<a href="#" class="nav-link" target="_blank">'
                + 'Location <span class="float-right badge bg-primary">' + $.grep(MASTERLIST, function (s) { return s.GenID == '010'; }).length + '</span>'
                + '</a>'
                + '</li>'
                + '<li class="nav-item">'
                + '<a href="#" class="nav-link" target="_blank">'
                + 'Department <span class="float-right badge bg-primary">' + $.grep(MASTERLIST, function (s) { return s.GenID == '006'; }).length + '</span>'
                + '</a>'
                + '</li>'
                + '<li class="nav-item">'
                + '<a href="#" class="nav-link" target="_blank">'
                + 'Employee Type <span class="float-right badge bg-primary">' + $.grep(MASTERLIST, function (s) { return s.GenID == '014'; }).length + '</span>'
                + '</a>'
                + '</li>'

                + '<li class="nav-item">'
                + '<a href="#" class="nav-link" target="_blank">'
                + 'Project <span class="float-right badge bg-primary">' + $.grep(MASTERLIST, function (s) { return s.GenID == '025'; }).length + '</span>'
                + '</a>'
                + '</li>'
                + '<li class="nav-item">'
                + '<a href="#" class="nav-link" target="_blank">'
                + 'Designation <span class="float-right badge bg-primary">' + $.grep(MASTERLIST, function (s) { return s.GenID == '007'; }).length + '</span>'
                + '</a>'
                + '</li>'
                + '<li class="nav-item">'
                + '<a href="#" class="nav-link" target="_blank">'
                + 'Division Type <span class="float-right badge bg-primary">' + $.grep(MASTERLIST, function (s) { return s.GenID == '015'; }).length + '</span>'
                + '</a>'
                + '</li>'
                + '</ul>';
            $('.js-masters').append(html);
            // $.each(MASTERLIST, function (i, v) {
            //$('.js-masters').append('<button type="button" class="btn btn-outline-info btn-sm js-btnSave hide float-right" id="btnSave" onclick="EmployeeModule.createEmployee();" style="display: inline-block;">Update</button>')
            //$('.js-masters').append('<button type="button" class="btn btn-outline-info btn-sm js-btnSave hide float-right" id="btnSave" onclick="EmployeeModule.createEmployee();" style="display: inline-block;">Update</button>')

            // })
            //
            //
            //Shift
            var maritalCollection = [{
                name: 'Unmaried',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Nationality == 'Unmarried'; }).length,
                sliced: true,
                selected: true
            }, {
                name: 'maried',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Nationality == 'Married'; }).length
            }, {
                name: 'Divorced',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Nationality == 'Divorced'; }).length
            }, {
                name: 'Widow',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Nationality == 'Widow'; }).length
            }, {
                name: 'Widower',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Nationality == 'Widower'; }).length
            }, {
                name: 'Remaried',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Nationality == 'Remarried'; }).length
            }, {
                name: 'Others',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Nationality == 'Others'; }).length
            },
            {
                name: 'N/A',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Nationality == 'N/A'; }).length
            }

            ];
            highchartData('Marital Chart', 'marrital', 'Marrital', maritalCollection);

            var genderCollection = [{
                name: 'Male',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Gender == 'Male'; }).length,
                sliced: true,
                selected: true
            }, {
                name: 'Female',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Gender == 'Female'; }).length
            }, {
                name: 'Other',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Gender == 'Other'; }).length
            }, {
                name: 'N/A',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Gender == 'N/A'; }).length
            }];
            highchartData('Gender Chart', 'gender', 'Gender', genderCollection);

            var statusCollection = [{
                name: 'Current Employee',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Status == '<small class="badge badge-success">Active</small>'; }).length,
                sliced: true,
                selected: true
            }, {
                name: 'Ex-Employee',
                y: $.grep(MASTERLIST.EmployeeList, function (s) { return s.Status == '<small class="badge badge-danger">In Active</small>'; }).length
            }];
            highchartData('Employee Status Chart', 'employeestatus', 'Employeestatus', statusCollection);


            // $('.js-todaybirthday').text($.grep(MASTERLIST.EmployeeList, function (s) { return s.Birthday == 1 }).length);

        };

        var drawAttendanceChart = function (d) {
            if (d) {
                $('.js-todayleave').text();
                $('.js-todaypresent').text();
                $('.js-todayabsent').text();
                var html = '<ul class="nav flex-column">'
                    + '<li class="nav-item">'
                    + '<a href="#" class="nav-link" target="_blank">'
                    + 'Present <span class="float-right badge bg-primary">' + $.grep(d.AttendanceList, function (s) { return s == 'P'; }).length + '</span>'
                    + '</a>'
                    + '</li>'
                    + '<li class="nav-item">'
                    + '<a href="#" class="nav-link" target="_blank">'
                    + 'Leave <span class="float-right badge bg-primary">' + $.grep(d.AttendanceList, function (s) { return s == 'L'; }).length + '</span>'
                    + '</a>'
                    + '</li>'
                    + '<li class="nav-item">'
                    + '<a href="#" class="nav-link" target="_blank">'
                    + 'Absent <span class="float-right badge bg-primary">' + $.grep(d.AttendanceList, function (s) { return s == 'A'; }).length + '</span>'
                    + '</a>'
                    + '</li>'
                    + '<li class="nav-item">'
                    + '<a href="Greeting.aspx" class="nav-link" target="_blank">'
                    + 'Birthday <span class="float-right badge bg-primary">' + $.grep(MASTERLIST.EmployeeList, function (s) { return s.Birthday == 1 }).length + '</span>'
                    + '</a>'
                    + '</li>'
                    + '</ul>';
                $('.js-totalAttendanceStatus').append(html);

                var collection = [];
                var row = {};
                row.name = 'Present';
                row.y = $.grep(d.AttendanceList, function (s) { return s == 'P'; }).length;
                collection.push(row);
                row = {};
                row.name = 'Leave';
                row.y = $.grep(d.AttendanceList, function (s) { return s == 'L'; }).length;
                collection.push(row);
                row = {};
                row.name = 'Absent';
                row.y = $.grep(d.AttendanceList, function (s) { return s == 'A'; }).length;
                collection.push(row);
                row = {};
                row.name = 'N/A';
                row.y = $.grep(d.AttendanceList, function (s) { return s == ''; }).length;
                collection.push(row)
                highchartData('Attendance Chart', 'attendancestatus', 'Attendance', collection);
            }
        };

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <br />
    <form method="post" id="DashInfo" enctype="multipart/form-data" runat="server">

        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>150</h3>

                                <p>New Orders</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-bag"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3>53<sup style="font-size: 20px">%</sup></h3>

                                <p>Bounce Rate</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-stats-bars"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-warning">
                            <div class="inner">
                                <h3>44</h3>

                                <p>User Registrations</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-person-add"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col-lg-3 col-6">
                        <!-- small box -->
                        <div class="small-box bg-danger">
                            <div class="inner">
                                <h3>65</h3>

                                <p>Unique Visitors</p>
                            </div>
                            <div class="icon">
                                <i class="ion ion-pie-graph"></i>
                            </div>
                            <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                </div>
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-12">
                        <figure class="highcharts-figure">
                            <div id="attendancestatus" style="height: 300px"></div>
                            <p class="highcharts-description">
                            </p>
                        </figure>
                    </div>
                    <div class="col-md-3 col-sm-6 col-12">
                        <figure class="highcharts-figure">
                            <div id="marrital" style="height: 300px"></div>
                            <p class="highcharts-description">
                            </p>
                        </figure>
                    </div>
                    <div class="col-md-3 col-sm-6 col-12">
                        <figure class="highcharts-figure">
                            <div id="gender" style="height: 300px"></div>
                            <p class="highcharts-description">
                            </p>
                        </figure>
                    </div>
                    <div class="col-md-3 col-sm-6 col-12">
                        <figure class="highcharts-figure">
                            <div id="employeestatus" style="height: 300px"></div>
                            <p class="highcharts-description">
                            </p>
                        </figure>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3 col-sm-6 col-12">
                        <div class="info-box bg-info">
                            <span class="info-box-icon"><i class="far fa-thumbs-up"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Company <b class="js-totalemployee float-right"></b></span>
                                <span class="info-box-text">
                                    <a href="Master/Company.aspx?pageName=Company Master" target="_blank" style="color: white"><i class="fas fa-list"></i>View Company</a>
                                </span>
                                <span class="info-box-text">
                                    <a href="Master/Company.aspx" target="_blank" style="color: white"><i class="fas fa-plus"></i>Add Company</a>
                                </span>
                            </div>
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <div class="col-md-3">
                        <div class="card card-info">
                            <div class="card-header">
                                <h3 class="card-title">Masters</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="maximize"><i class="fas fa-expand"></i></button>
                                </div>
                            </div>
                            <div class="card-body js-masters">
                            </div>
                        </div>
                        <!-- /.card -->
                    </div>
                    <div class="col-md-3">
                        <div class="card card-info">
                            <div class="card-header">
                                <h3 class="card-title">Today Attendance Status</h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="maximize"><i class="fas fa-expand"></i></button>
                                </div>
                                <!-- /.card-tools -->
                            </div>
                            <!-- /.card-header -->
                            <div class="js-totalAttendanceStatus">
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <div class="col-md-3">
                        <div class="card">
                            <div class="card-header border-0">
                                <h3 class="card-title">Today Attendance Status</h3>
                                <div class="card-tools">
                                    <a href="#" class="btn btn-sm btn-tool">
                                        <i class="fas fa-download"></i>
                                    </a>
                                    <a href="#" class="btn btn-sm btn-tool">
                                        <i class="fas fa-bars"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-center mb-0">
                                    <p class="text-danger text-xl">
                                        <i class="ion ion-ios-people-outline"></i>
                                    </p>
                                    <p class="d-flex flex-column text-right">
                                        <span class="font-weight-bold">
                                            <i class="ion ion-android-arrow-down text-danger"></i>1%
                    </span>
                                        <span class="text-muted">REGISTRATION RATE</span>
                                    </p>
                                </div>
                                <!-- /.d-flex -->
                               <div class="d-flex justify-content-between align-items-center mb-0">
                                    <p class="text-danger text-xl">
                                        <i class="ion ion-ios-people-outline"></i>
                                    </p>
                                    <p class="d-flex flex-column text-right">
                                        <span class="font-weight-bold">
                                            <i class="ion ion-android-arrow-down text-danger"></i>1%
                    </span>
                                        <span class="text-muted">REGISTRATION RATE</span>
                                    </p>
                                </div>
                                <!-- /.d-flex -->
                                <div class="d-flex justify-content-between align-items-center mb-0">
                                    <p class="text-danger text-xl">
                                        <i class="ion ion-ios-people-outline"></i>
                                    </p>
                                    <p class="d-flex flex-column text-right">
                                        <span class="font-weight-bold">
                                            <i class="ion ion-android-arrow-down text-danger"></i>1%
                    </span>
                                        <span class="text-muted">REGISTRATION RATE</span>
                                    </p>
                                </div>
                                 <div class="d-flex justify-content-between align-items-center mb-0">
                                    <p class="text-danger text-xl">
                                        <i class="ion ion-ios-people-outline"></i>
                                    </p>
                                    <p class="d-flex flex-column text-right">
                                        <span class="font-weight-bold">
                                            <i class="ion ion-android-arrow-down text-danger"></i>1%
                    </span>
                                        <span class="text-muted">REGISTRATION RATE</span>
                                    </p>
                                </div>
                                <!-- /.d-flex -->
                            </div>
                        </div>
                    </div>
                </div>

                <%--<div class="row">
                    <div class="col-md-3 col-sm-6 col-12">
                        <div class="info-box bg-info">
                            <span class="info-box-icon"><i class="fas fa-users"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Employee <b class="js-totalemployee float-right"></b></span>
                                <div class="input-group input-group-sm" style="width: 230px;">
                                    <input type="text" typeof="button" name="table_search" class="form-control float-right automplete-3" id="myInput" placeholder="Search">
                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-default" disabled><i class="fas fa-search"></i></button>
                                    </div>
                                </div>
                                <span class="info-box-text">
                                    <a href="#" style="color: white"><i class="fas fa-list"></i>View Employee</a>
                                </span>
                                <span class="info-box-text">
                                    <a href="#" style="color: white"><i class="fas fa-plus"></i>Add Employee</a>
                                </span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                    <div class="col-md-3 col-sm-6 col-12">
                        <div class="info-box bg-info">
                            <span class="info-box-icon"><i class="far fa-thumbs-up"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Employee <b class="js-totalemployee float-right"></b></span>
                                <div class="input-group input-group-sm" style="width: 230px;">
                                    <input type="text" typeof="button" name="table_search" class="form-control float-right automplete-3" placeholder="Search">
                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-default" disabled><i class="fas fa-search"></i></button>
                                    </div>
                                </div>
                                <span class="info-box-text">
                                    <a href="#" style="color: white"><i class="fas fa-list"></i>View Employee</a>
                                </span>
                                <span class="info-box-text">
                                    <a href="#" style="color: white"><i class="fas fa-plus"></i>Add Employee</a>
                                </span>
                            </div>
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                    <div class="col-md-3 col-sm-6 col-12">
                        <div class="info-box bg-info">
                            <span class="info-box-icon"><i class="far fa-calendar-alt"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Company <b class="js-totalemployee float-right"></b></span>
                                <div class="input-group input-group-sm" style="width: 230px;">
                                    <input type="text" typeof="button" name="table_search" class="form-control float-right automplete-3" placeholder="Search">
                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-default" disabled><i class="fas fa-search"></i></button>
                                    </div>
                                </div>
                                <span class="info-box-text">
                                    <a href="Master/Company.aspx" target="_blank" style="color: white"><i class="fas fa-list"></i>View Company</a>
                                </span>
                                <span class="info-box-text">
                                    <a href="#" style="color: white"><i class="fas fa-plus"></i>Add Company</a>
                                </span>
                            </div>
                            <!-- /.info-box-content -->
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                    <div class="col-md-3 col-sm-6 col-12">
                        <div class="info-box bg-info">
                            <span class="info-box-icon"><i class="fas fa-comments"></i></span>

                            <div class="info-box-content">
                                <span class="info-box-text">Employee <b class="js-totalemployee float-right"></b></span>
                                <div class="input-group input-group-sm" style="width: 230px;">
                                    <input type="text" typeof="button" name="table_search" class="form-control float-right automplete-3" placeholder="Search">
                                    <div class="input-group-append">
                                        <button type="submit" class="btn btn-default" disabled><i class="fas fa-search"></i></button>
                                    </div>
                                </div>
                                <span class="info-box-text">
                                    <a href="Employee1.aspx" target="_blank" style="color: white"><i class="fas fa-list"></i>View Employee</a>
                                </span>
                                <span class="info-box-text">
                                    <a href="#" style="color: white"><i class="fas fa-plus"></i>Add Employee</a>
                                </span>
                            </div>
                        </div>
                        <!-- /.info-box -->
                    </div>
                    <!-- /.col -->
                </div>--%>

                <div class="row">
                </div>
            </div>
            <!--/. container-fluid -->
        </section>
        <!-- /.content -->

    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>

