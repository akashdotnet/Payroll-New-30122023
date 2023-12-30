<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shift.aspx.cs" Inherits="Samples.Shift" MasterPageFile="~/Employee.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%: System.Web.Optimization.Scripts.Render("~/bundles/highchart") %>
    <%--<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <form method="post" id="shift" enctype="multipart/form-data" runat="server">
        <section class="content card-body">
            <div class="tab-pane fade show active card-body" id="custom-content-above-home" role="tabpanel" aria-labelledby="custom-content-above-home-tab">
                <div class="row js-newEmployee">
                    <div class="col-12 col-sm-6 col-md-2">
                        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="Shift.clearControl();">New Shift</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm js-btnGoToList" onclick="Shift.goToList();" style="display: none">Go To List</button>

                    </div>
                    <div class="col-12 col-sm-6 col-md-10">
                    </div>
                </div>
                <hr />
                <div class="content js-shiftSection" style="display: none">
                    <ul class="nav nav-tabs" id="custom-content-above-tab1" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="attendance-entry-tab" data-toggle="pill"
                                href="#new-shift" role="tab" aria-controls="new-shift"
                                aria-selected="true">Shift</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="assign-Roaster" data-toggle="pill"
                                href="#assign-roaster" role="tab" aria-controls="assign-roaster"
                                aria-selected="true" onclick="AssignRoaster.initAssignRoaster()">Assign Roaster</a>
                        </li>
                        <%--  <li class="nav-item">
                        <a class="nav-link" id="monthly-attendance-process-tab" data-toggle="pill"
                            href="#monthly-attendance-process" role="tab" aria-controls="monthly-attendance-process"
                            aria-selected="false">Shift Roster View</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="attendance-approval-tab" data-toggle="pill"
                            href="#attendance-approval" role="tab" aria-controls="attendance-approval"
                            aria-selected="false">Assign Shift Roster</a>
                    </li>--%>
                    </ul>
                    <div class="tab-content" id="custom-content-above-tab1Content">
                        <div class="tab-pane fade show active" id="new-shift" role="tabpanel" aria-labelledby="custom-content-above-messages-tab">
                            <div class="row">
                                <div class="col-12">
                                    <!-- Default box -->
                                    <div class="card" style="margin-top: 2px">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="card-body">
                                                        <input type="hidden" id="hfShiftId" />
                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                Shift Name
                                                            </div>
                                                            <div class="col-md-8">
                                                                <input type="text" class="form-control form-control-sm js-shiftname" />
                                                            </div>
                                                        </div>
                                                        <div class="row" style="margin-top: 5px">
                                                            <div class="col-md-4">
                                                                Short Name
                                                            </div>
                                                            <div class="col-md-8">
                                                                <input type="text" class="form-control form-control-sm js-shortname" />
                                                            </div>
                                                        </div>
                                                        <div class="row" style="margin-top: 5px">
                                                            <div class="col-md-4">
                                                                Start Time
                                                            </div>
                                                            <div class="col-md-8">
                                                                <input type="text" class="form-control form-control-sm js-timepicker js-starttime" />
                                                            </div>
                                                        </div>
                                                        <div class="row" style="margin-top: 5px">
                                                            <div class="col-md-4">
                                                                End Time
                                                            </div>
                                                            <div class="col-md-8">
                                                                <input type="text" class="form-control form-control-sm js-timepicker js-endtime" />
                                                            </div>
                                                        </div>
                                                        <div class="row" style="margin-top: 5px">
                                                            <div class="col-md-4">
                                                                Total Hrs.
                                                            </div>
                                                            <div class="col-md-8">
                                                                <input type="text" class="form-control form-control-sm js-timepicker js-totalhrs" />
                                                            </div>
                                                        </div>
                                                        <div class="row" style="margin-top: 5px">
                                                            <div class="col-md-4">
                                                                Minimum Hrs.
                                                            </div>
                                                            <div class="col-md-8">
                                                                <input type="text" class="form-control form-control-sm js-timepicker js-minimumhrs" />
                                                            </div>
                                                        </div>
                                                        <div class="row" style="margin-top: 5px">
                                                            <div class="col-md-4">
                                                                Break Time
                                                            </div>
                                                            <div class="col-md-8">
                                                                <input type="text" class="form-control form-control-sm js-timepicker js-breaktime" />
                                                            </div>
                                                        </div>
                                                        <div class="row" style="margin-top: 5px">
                                                            <div class="col-md-4">
                                                                Half Day Hrs.
                                                            </div>
                                                            <div class="col-md-8">
                                                                <input type="text" class="form-control form-control-sm js-timepicker js-halfday" />
                                                            </div>
                                                        </div>
                                                        <div class="row" style="margin-top: 5px">
                                                            <div class="col-md-4">
                                                                Is Night Shift
                                                            </div>
                                                            <div class="col-md-8">
                                                                <input type="checkbox" class="js-nightshift" />
                                                            </div>
                                                        </div>
                                                        <div class="row" style="margin-top: 5px">
                                                            <div class="col-md-4">
                                                                Active
                                                            </div>
                                                            <div class="col-md-8">
                                                                <input type="checkbox" class="js-active" />
                                                            </div>
                                                        </div>
                                                        <br />
                                                        <div class="row" style="margin-top: 5px">
                                                            <div class="col-md-10">
                                                                &nbsp;
                                                            </div>
                                                            <div class="col-md-2">
                                                                <button type="button" class="btn btn-outline-success btn-sm js-btnSave" id="btnSave" style="display: none" onclick="Shift.createShift();">
                                                                    Save
                                                                </button>
                                                            </div>
                                                        </div>


                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-footer">
                                            &nbsp;                                  
                                        </div>
                                    </div>
                                    <!-- /.card-body -->

                                    <!-- /.card-footer-->
                                </div>
                                <!-- /.card -->
                            </div>
                        </div>
                        <div class="tab-pane" id="assign-roaster">
                            <div class="row">
                                <div class="col-12">
                                    <!-- Default box -->
                                    <div class="card" style="margin-top: 2px">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-2">
                                                    <label>Employe</label>
                                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="100%" class="form-control ddlEmployee ddlEntryEmployee">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-2">
                                                    <label>Employee Type</label>
                                                    <asp:DropDownList ID="DropDownList2" runat="server" Width="100%" class="form-control ddlEmployeeType ddlEntryEmployeeType">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-2">
                                                    <label>Designation</label>
                                                    <asp:DropDownList ID="DropDownList3" runat="server" Width="100%" class="form-control ddlDesignation  ddlEntryDesignation">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-2">
                                                    <label>Location</label>
                                                    <asp:DropDownList ID="DropDownList4" runat="server" Width="100%" class="form-control ddlLocation  ddlEntryLocation">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-2">
                                                    <label>Department</label>
                                                    <asp:DropDownList ID="DropDownList5" runat="server" Width="100%" class="form-control ddlDepartment  ddlEntryDepartment">
                                                    </asp:DropDownList>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-lg-2">
                                                    <label>Shift</label>
                                                    <asp:DropDownList ID="DropDownList9" runat="server" Width="100%" class="form-control ddlShift ddlEntryShift">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-2">
                                                    <label>Division</label>
                                                    <asp:DropDownList ID="DropDownList10" runat="server" Width="100%" class="form-control ddlDivision  ddlEntryDivision">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-2">
                                                    <label>Company</label>
                                                    <asp:DropDownList ID="DropDownList11" runat="server" Width="100%" class="form-control ddlCompany ddlEntryDesignation">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-2">
                                                    <label>Employee category</label>
                                                    <asp:DropDownList ID="DropDownList7" runat="server" Width="100%" class="form-control ddlEmployeeCategory  myselect">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-2">
                                                    <label>Project</label>
                                                    <asp:DropDownList ID="DropDownList6" runat="server" Width="100%" class="form-control ddlProject ddlEntryProject">
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-lg-1">
                                                    <label>&nbsp;</label>
                                                    <br />
                                                    <button type="button" class="btn btn-outline-info btn-sm" style="float: left" onclick="AssignRoaster.getAssignRoaster();"><i class="fa fa-search"></i></button>

                                                </div>

                                            </div>
                                            <br />
                                            <div class="row ">
                                                <div class="col-lg-12 dtAssignRoaster">
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row ">
                                                <div class="col-10">
                                                </div>
                                                <div class="col-2">
                                                    <button type="button" class="btn btn-outline-success" style="float: right; display: none" id="btnAssignRoster" onclick="AssignRoaster.saveShiftRoster()">Assign Shift</button>
                                                </div>
                                            </div>
                                            <br />
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="alert alert-danger alert-dismissible" style="display: none" id="dvNoRecords">
                                                        <%--<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>--%>
                                                        <strong>No Records</strong>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="js-dataTableSection">
                    <div class="row">
                        <div class="col-12 col-sm-6 col-md-6">
                            <div class="info-box-content" id="js-totalshift" style="height: 300px"></div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-6">
                            <div id="education" style="height: 300px"></div>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-12">
                            <div id="data"></div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>--%>
    <%--<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>--%>
    <script type="text/javascript">
        var baseUrl = '<%= ConfigurationManager.AppSettings["baseUrl"]%>';
        var Toast = null;
        var MASTERLIST = [];
        var ddlEmployee = $(".ddlEmployee");
        var ddlEmployeeType = $(".ddlEmployeeType");
        var ddlDesignation = $(".ddlDesignation");
        var ddlLocation = $(".ddlLocation");
        var ddlDepartment = $(".ddlDepartment");
        var ddlProject = $(".ddlProject");
        var ddlDivision = $(".ddlDivision");
        var ddlEmployeeCategory = $(".ddlEmployeeCategory");
        var ddlCompany = $(".ddlCompany");
        var ddlShift = $(".ddlShift");
        var PLEASESELECT = '--Select--';
        $(function () {
            $('.js-timepicker').timepicki({
                show_meridian: false,
                min_hour_value: 0,
                max_hour_value: 23,
                overflow_minutes: true,
                increase_direction: 'up'
            });

            Shift.initShift();
            //$(".myselect").select2();

        });
        
        var Shift = (function () {
            'use strict';

            var initShift = function () {
                showModal();
                $.ajax({
                    url: baseUrl + 'Shift',
                    type: 'GET'
                }).done(function (data, textStatus, xhr) {
                    $("#data").html('');
                    if (data.List.length > 0) {
                        $("#data").append(data.Html);
                        $("#ShiftDataTable").DataTable();
                        $("#dvNoRecords").hide();
                        var shift = [{
                            name: 'Active',
                            y: $.grep(data.List, function (s) { return s.Active }).length,
                            sliced: true,
                            selected: true
                        }, {
                            name: 'InActive',
                            y: $.grep(data.List, function (s) { return !s.Active }).length
                        }];
                        highchartData('Shift Chart', 'js-totalshift', 'Shift', shift);
                    }
                    else {
                        $("#dvNoRecords").show();
                    }
                    hideModal();
                }).fail(function (jqXHR, textStatus) {
                    hideModal();
                });
            };

            var _saveUpdateShift = function () {
                var isExist = _checkValueExist($(".js-shiftname"));
                if (isExist) {
                    return false;
                }
                var Shift = new Object();
                Shift.Name = $(".js-shiftname").val();
                Shift.ShortName = $(".js-shortname").val();
                Shift.StartTime = $(".js-starttime").val();
                Shift.EndTime = $(".js-endtime").val();
                Shift.TotalHrs = $(".js-totalhrs").val();
                Shift.MinimumHrs = $(".js-minimumhrs").val();
                Shift.BreakTime = $(".js-breaktime").val();
                Shift.HalfDayHrs = $(".js-halfday").val();
                Shift.IsNightShift = $(".js-nightshift")[0].checked;
                Shift.Active = $(".js-active")[0].checked;

                if ($("#btnSave").text() == 'Update') {
                    Shift.StatementType = "Update";
                    Shift.ShiftId = $("#hfShiftId").val();
                    _shiftAddOrUpdate('Update', Shift);
                }
                else {
                    Shift.StatementType = "Insert";
                    _shiftAddOrUpdate('Save', Shift);
                }
                showModal();
            };

            var _shiftAddOrUpdate = function (operation, Shift) {
                $.ajax({
                    url: baseUrl + 'shift',
                    type: 'POST',
                    contentType:
                       "application/json;charset=utf-8",
                    data: JSON.stringify(Shift),
                    success: function (response) {
                        showNotification(operation == 'Save' ? "Shift Saved" : "Shift Updated", response.Html, 'success');
                        clearControl();
                        goToList();
                        initShift();
                        hideModal();
                        $('.js-shiftSection').hide();
                        $('.js-dataTableSection').show();
                        $('.js-btnGoToList').hide();
                        $('.js-btnSave').hide();
                    },
                    error: function (request, message, error) {
                        showNotification(message, error, 'danger');
                        hideModal();
                    }
                });
            };

            var _checkValueExist = function (controlId) {
                var isReq = false;
                if (controlId.val() == "") {
                    controlId.addClass("add-error");
                    isReq = true;
                }
                else {
                    controlId.removeClass("add-error");
                }
                return isReq;
            };

            var createShift = function () {
                _saveUpdateShift();
            };

            var goToList = function () {
                $('.js-dataTableSection').show();
                $('.js-btnGoToList').hide();
                $('.js-btnSave').hide();
                $('.js-shiftSection').hide();
            };

            var clearControl = function () {
                $("input").removeClass("add-error");
                $("input").val("");
                $("#btnSave").text("Save");
                $('.js-shiftSection').show();
                $('.js-dataTableSection').hide();
                $('.js-btnGoToList').show();
                $('.js-btnSave').show();

            };

            var RowDelete = function (id) {
                try {
                    if (!confirm("Do You Want To Delete")) {
                        return false;
                    }
                    showModal();;
                    $.ajax({
                        url: baseUrl + 'shift/' + id,
                        type: 'DELETE',
                        success: function (info) {
                            $("#btnSave").text("Save");
                            showNotification("Shift deleted", info.Html, 'success');
                            initShift();
                            hideModal();
                            $('.js-shiftSection').hide();
                            $('.js-dataTableSection').show();
                            $('.js-btnGoToList').hide();
                            $('.js-btnSave').hide();
                        },
                        error: function (request, message, error) {
                            showNotification(message, error, 'danger');
                            initShift();
                            hideModal();
                        }
                    });
                }
                catch (Ex) {
                }

            };

            var getRowVal = function (id) {
                showModal();
                $.ajax({
                    url: baseUrl + 'shift/' + id,
                    type: 'GET',
                    success: function (data) {
                        if (data.List.length > 0) {
                            $(".js-shiftname").val(data.List[0].Name);
                            $(".js-shortname").val(data.List[0].ShortName);
                            $(".js-starttime").val(data.List[0].Starttime);
                            $(".js-endtime").val(data.List[0].Endtime);
                            $(".js-totalhrs").val(data.List[0].Totalhrs);
                            $(".js-minimumhrs").val(data.List[0].MinimumHrs);
                            $(".js-breaktime").val(data.List[0].Breaktime);
                            $(".js-halfday").val(data.List[0].Halfdayhrs);
                            $(".js-nightshift")[0].checked = data.List[0].IsNight;
                            $(".js-active")[0].checked = data.List[0].Active;
                            $("#btnSave").text("Update");
                            $("input").removeClass("add-error");
                            $('.js-shiftSection').show();
                            $('.js-dataTableSection').hide();
                            $('.js-btnGoToList').show();
                            $('.js-btnSave').show();
                            $("#hfShiftId").val(data.List[0].ShiftId);
                        }
                        hideModal();
                    },
                    error: function (request, message, error) {
                        hideModal();
                    }
                });
            };
                     
            return {
                initShift: initShift,
                createShift: createShift,
                goToList: goToList,
                clearControl: clearControl,
                getRowVal: getRowVal,
                RowDelete: RowDelete
            };

        })();

        var AssignRoaster = (function () {
            'use strict';
            var btnAssignRoster = $('#btnAssignRoster');
            var initAssignRoaster = function () {
                $('.dtAssignRoaster').html('');
                loadMasters();
                bindMasterDropDownList(ddlLocation, '010', MASTERLIST);
                bindMasterDropDownList(ddlDepartment, '006', MASTERLIST);
                bindEmployeeDropDownList(ddlEmployee, MASTERLIST.EmployeeList);
                bindMasterDropDownList(ddlProject, '025', MASTERLIST);
                bindMasterDropDownList(ddlEmployeeType, '014', MASTERLIST);
                bindMasterDropDownList(ddlDesignation, '007', MASTERLIST);
                bindMasterDropDownList(ddlDivision, '015', MASTERLIST);
                bindShiftDropDownList(ddlShift, MASTERLIST.Shift);
                bindMasterDropDownList(ddlEmployeeCategory, '016', MASTERLIST);
                bindCompanyDropDownList(ddlCompany, MASTERLIST.Company);
                btnAssignRoster.hide();
            };

            var getAssignRoaster = function () {
                showModal();
                var employeeId = $(".ddlEmployee option:selected").val();
                var employeeTypeId = $(".ddlEmployeeType option:selected").val();
                var designationId = $(".ddlDesignation option:selected").val();
                var locationId = $(".ddlLocation option:selected").val();
                var departmentId = $(".ddlDepartment option:selected").val();
                var projectId = $(".ddlProject option:selected").val();
                var divisionId = $(".ddlDivision option:selected").val();
                var shiftId = $(".ddlShift option:selected").val();
                var companyId = $(".ddlCompany option:selected").val();
                var categoryId = $(".ddlEmployeeCategory option:selected").val();
                var lstData = [departmentId, locationId, companyId, divisionId, designationId, employeeTypeId, categoryId, shiftId, employeeId, projectId, ddlEmployeeCategory];
                var url = baseUrl + 'AssignRoaster';

                $.ajax({
                    url: url,
                    type: 'POST',
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(lstData),
                    success: function (data) {
                        $('#dvNoRecords').css('display', 'none');
                        $('.dtAssignRoaster').html('');
                        if (data.List.length === 0) {
                            $('#dvNoRecords').css('display', 'block');
                            hideModal();
                            btnAssignRoster.hide();
                            return;
                        }
                        btnAssignRoster.show();

                        var html = '';
                        html = '<table class="table table-warning" id="dTableAssign">'
                       + '<thead>  '
                       + '<tr>     '
                       + '<th style="display:none">EmployeeId</th> '
                       + '<th>Name</th> '
                       + '<th>Code</th> '
                       + '<th>Shift<br/>' + _createBindShiftDropdwon(null) + ' <br/><input type="checkbox" id="checkShiftAll"  onclick="AssignRoaster.applyShiftAll(this);"/> Apply All</th> '
                       + '<th>Start Date <br/><input type="text"  class="dPicker defaultStartDropdDown form-control" /> <input type="checkbox" id="checStartAll" onclick="AssignRoaster.applyStartAll(this);"> Apply All</th> '
                       + '<th>End Date <br/><input type="text"  class="dPicker defaultEndDropdDown form-control" /> <input type="checkbox" id="checkEndAll" onclick="AssignRoaster.applyEndAll(this);"> Apply All</th> '
                       + '<th>Active</th> '
                       + '</tr>    '
                       + '</thead> '
                       + '<tbody> '
                        $.each(data.List, function (i, v) {
                            var sDate = v.StartDate == null ? '' : v.StartDate;
                            var eDate = v.Enddate == null ? '' : v.Enddate;
                            var checked = v.Active == null ? '' : "checked";
                            var isStartDateDisabled = v.StartDate == null ? '' : 'disabled';
                            var isEndDateDisabled = v.Enddate == null ? '' : 'disabled';
                            var tableRow = '<tr>     '
                             + '<td style="display:none">' + v.EmployeeId + '</td> '
                            + '<td>' + v.Name + '</td> '
                            + '<td>' + v.Code + '</td> '
                            + '<td>' + _createBindShiftDropdwon(v.shiftId) + '</td> '
                            + '<td><input type="text"  value="' + sDate + '" class="dPicker form-control" ' + isStartDateDisabled + ' /></td> '
                            + '<td><input type="text"  value="' + eDate + '" class="dPicker form-control" ' + isEndDateDisabled + ' /></td> '
                            + '<td><input type="checkbox" ' + checked + ' /></td> '
                            + '</tr>    '
                            html += tableRow;
                        })
                        html += '</tbody></table> ';

                        $('.dtAssignRoaster').append(html);
                        //$("#dTableAssign").DataTable();
                        $(".dPicker").datepicker({
                            minDate: 0
                        });
                        $(".defaultStartDropdDown,.defaultEndDropdDown").datepicker('setDate', 'today');
                        hideModal();
                    },
                    error: function (request, message, error) {
                        hideModal();
                    }
                })
            };

            var applyShiftAll = function (e) {
                if ($(e).is(":checked")) {
                    if ($("select#defaultShiftData option:selected").val() == "0") {
                        $("#defaultShiftData").addClass("add-error");
                        return;
                    }
                    $("select#defaultShiftData").removeClass("add-error");
                    var dataTable = $('#dTableAssign tbody tr');
                    $.each(dataTable, function (i, v) {
                        if ($(v).find('td:eq(3)').find("select#shiftData").attr('disabled') === undefined) {
                            var defaultSelectValue = parseInt($("select#defaultShiftData option:selected").val());
                            $(v).find("td:eq(3) select").find('option[value="' + defaultSelectValue + '"]').attr("selected", true);
                        }
                    });
                }
                else {
                    $("select#defaultShiftData").removeClass("add-error");                   
                }
            };

            var applyEndAll = function (e) {
                var dataTable = $('#dTableAssign tbody tr');
                if ($(e).is(":checked")) {                    
                    $.each(dataTable, function (i, v) {
                        if ($(v).find('td:eq(3)').find("select#shiftData").attr('disabled') === undefined) {
                            var defaultStartDate = $(".defaultEndDropdDown").val();
                            $(v).find('td:eq(5) input').val(defaultStartDate);
                        }
                    });
                }
                else {
                    $.each(dataTable, function (i, v) {
                        if ($(v).find('td:eq(3)').find("select#shiftData").attr('disabled') === undefined) {
                            $(v).find('td:eq(5) input').val('');
                        }
                    });
                }
            };

            var applyStartAll = function (e) {
                var dataTable = $('#dTableAssign tbody tr');
                if ($(e).is(":checked")) {                   
                    $.each(dataTable, function (i, v) {
                        if ($(v).find('td:eq(3)').find("select#shiftData").attr('disabled') === undefined) {
                            var defaultStartDate = $(".defaultStartDropdDown").val();
                            $(v).find('td:eq(4) input').val(defaultStartDate);
                        }
                    });
                }
                else {
                    $.each(dataTable, function (i, v) {
                        if ($(v).find('td:eq(3)').find("select#shiftData").attr('disabled') === undefined) {
                            $(v).find('td:eq(4) input').val('');
                        }
                    });
                }
            };

            var setDefaultSelectDropdown = function (object) {
                if (object == null || object == "0")
                    return "0";
                if (object == 0)
                    return PLEASESELECT;
                return object;

            }

            var _createBindShiftDropdwon = function (shiftId) {

                if (shiftId != null) {
                    var disabled = shiftId ? "disabled" : '';
                    var html = '';
                    html = '<select id="shiftData" ' + disabled + ' class="form-control"';
                    html += '<option value="0">' + PLEASESELECT + '</option>';
                    $.grep(MASTERLIST.Shift, function (n, i) {
                        var selected = shiftId == parseInt(n.ShiftId) ? "selected" : '';
                        html += '<option value="' + n.ShiftId + '"  ' + selected + '   >' + n.Name + '</option>';
                    });
                    return html;
                }
                else {
                    var html = '';
                    html = '<select id="defaultShiftData" class="form-control">';
                    html += '<option value="0">' + PLEASESELECT + '</option>';
                    $.grep(MASTERLIST.Shift, function (n, i) {
                        html += '<option value="' + n.ShiftId + '"  >' + n.Name + '</option>';
                    });
                    return html;
                }
            }

            var saveShiftRoster = function () {            
                showModal();
                var ShiftRoasters = new Object();
                var dataTable = $('#dTableAssign tbody tr');
                var arrayList = [];
                var itemObject = {};
                $.each(dataTable, function (i, v) {
                    if ($(v).find('td:eq(3)').find("select#shiftData").attr('disabled') === undefined
                        && ($(v).find('td:eq(3)').find("select")[0].value !=undefined && $(v).find('td:eq(3)').find("select")[0].value != "0")) {
                        itemObject.EmployeeId = parseInt($(v).find('td:eq(0)').html());
                        itemObject.ShiftId = parseInt($(v).find('td:eq(3)').find("select")[0].value);
                        itemObject.StartDate = $(v).find('td:eq(4) input').val();
                        itemObject.Enddate = $(v).find('td:eq(5) input').val();
                        itemObject.Active = $(v).find('td:eq(6) input')[0].checked;
                        arrayList.push(itemObject);
                        itemObject = {};
                    }

                });
                ShiftRoasters.ShiftRoaster = arrayList;
                $.ajax({
                    url: baseUrl + 'AssignRoaster',
                    type: 'Put',
                    contentType:
                       "application/json;charset=utf-8",
                    data: JSON.stringify(ShiftRoasters),
                    success: function (response) {                  
                        hideModal();
                        AssignRoaster.getAssignRoaster();
                        //AttendanceModule.onAttendanceSch(true);
                        showNotification("Data Saved", response.Html, 'success');
                    },
                    error: function (request, message, error) {
                        hideModal();
                        showNotification("Something went wrong", message, 'alert');
                    }
                });
            }

            return {
                initAssignRoaster: initAssignRoaster,
                getAssignRoaster: getAssignRoaster,
                saveShiftRoster: saveShiftRoster,
                applyShiftAll: applyShiftAll,
                applyStartAll: applyStartAll,
                applyEndAll: applyEndAll
            };

        })();

        var bindMasterDropDownList = function (controlId, GenId, MASTERLIST) {
            controlId.html('');
            controlId.append($("<option></option>").val('0').html(PLEASESELECT));
            $.grep(MASTERLIST, function (n, i) {
                if (n.GenID === GenId) {
                    controlId.append($("<option></option>").val(n.ID).html(n.MAINDESCR));
                }
            });
        };

        var bindEmployeeDropDownList = function (controlId, LIST) {
            controlId.html('');
            controlId.append($("<option></option>").val('0').html(PLEASESELECT));
            $.grep(LIST, function (n, i) {
                controlId.append($("<option></option>").val(n.EmployeeId).html(n.Name + '[' + n.Code + ']'));
            });
        };

        var bindShiftDropDownList = function (controlId, LIST) {
            controlId.html('');
            controlId.append($("<option></option>").val('0').html(PLEASESELECT));
            $.grep(LIST, function (n, i) {
                controlId.append($("<option></option>").val(n.ShiftId).html(n.Name));
            });
        };

        var bindCompanyDropDownList = function (controlId, LIST) {
            controlId.html('');
            controlId.append($("<option></option>").val('0').html(PLEASESELECT));
            $.grep(LIST, function (n, i) {
                controlId.append($("<option></option>").val(n.pRowID).html(n.Name));
            });
        };       
    </script>
</asp:Content>
