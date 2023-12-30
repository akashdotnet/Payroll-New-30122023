<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimeAttendanceNew.aspx.cs"
    Inherits="Samples.transaction.TimeAttendanceNew" MasterPageFile="~/Employee.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <form method="post" id="TimeAttendance" enctype="multipart/form-data" runat="server">

        <div class="row">
            <div class="col-sm-6">
                <div class="tabbable">
                    <ul class="nav nav-tabs" id="myTab">
                        <li class="active">
                            <a data-toggle="tab" href="#home" aria-expanded="true">
                                <i class="green ace-icon fa fa-home bigger-120"></i>
                                Home
							</a>
                        </li>

                        <li class="">
                            <a data-toggle="tab" href="#home1" aria-expanded="true">
                                <i class="green ace-icon fa fa-home bigger-120"></i>
                                Home 1
							</a>
                        </li>
                         <li class="">
                            <a data-toggle="tab" href="#home2" aria-expanded="true">
                                <i class="green ace-icon fa fa-home bigger-120"></i>
                                Home 2
							</a>
                        </li>
                    </ul>

                    <div class="tab-content">
                        <div id="home" class="tab-pane fade active in">
                           <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Text Field </label>

										<div class="col-sm-9">
											<input type="text" id="form-field-1" placeholder="Username" class="col-xs-10 col-sm-5">
										</div>
									</div>
                        </div>

                        <div id="home1" class="tab-pane fade">
                            <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Text Field </label>

										<div class="col-sm-9">
											<input type="text" id="form-field-2" placeholder="Username" class="col-xs-10 col-sm-5">
										</div>
									</div>
                        </div>

                        <div id="home2" class="tab-pane fade">
                           <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Text Field </label>

										<div class="col-sm-9">
											<input type="text" id="form-field-3" placeholder="Username" class="col-xs-10 col-sm-5">
										</div>
									</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.col -->

            <div class="vspace-6-sm"></div>


        </div>
        <section class="content card-body tmatt">
            <ul class="nav nav-tabs" id="custom-content-above-tab1" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="attendance-entry-tab" data-toggle="pill"
                        href="#attendance-entry" role="tab" aria-controls="attendance-entry"
                        aria-selected="true" onclick="AttendanceModule.loadAttendanceModule(1)">Attendance Bulk Entry</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="monthly-attendance-process-tab" data-toggle="pill"
                        href="#monthly-attendance-process" role="tab" aria-controls="monthly-attendance-process"
                        aria-selected="false" onclick="AttendanceModule.loadMonthlyAttendanceModule()">Attendance Process</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="attendance-approval-tab" data-toggle="pill"
                        href="#attendance-approval" role="tab" aria-controls="attendance-approval"
                        aria-selected="false" onclick="AttendanceModule.loadMonthlyAttendanceModule()">Attendance Approval</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="payroll-process-tab" data-toggle="pill"
                        href="#payroll-process" role="tab" aria-controls="payroll-process"
                        aria-selected="false" onclick="AttendanceModule.loadMonthlyAttendanceModule()">Payroll Generate</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="attendance-report-tab" data-toggle="pill"
                        href="#attendance-report" role="tab" aria-controls="attendance-report"
                        aria-selected="false" onclick="AttendanceModule.loadAttendanceModule(2)">Report</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="inout-entry-tab" data-toggle="pill"
                        href="#inout-entry" role="tab" aria-controls="inout-entry"
                        aria-selected="false" onclick="AttendanceModule.loadMonthlyAttendanceModule()">In/Out Entry</a>
                </li>
            </ul>
            <div class="tab-content" id="custom-content-above-tab1Content">
                <div class="tab-pane fade show active" id="attendance-entry" role="tabpanel" aria-labelledby="custom-content-above-messages-tab">
                    <div class="row">
                        <div class="col-12">
                            <!-- Default box -->
                            <div class="card" style="margin-top: 2px">

                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-1">
                                            Employee
                                        </div>
                                        <div class="col-md-2">
                                            <asp:DropDownList ID="DropDownList29" runat="server" Width="100%" Height="30px" CssClass="ddlEmployee">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 5px">
                                        <div class="col-md-1">
                                            Department
                                        </div>
                                        <div class="col-md-2">
                                            <asp:DropDownList ID="DropDownList30" runat="server" Width="100%" Height="30px" CssClass="ddlAttDepartment">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 5px">
                                        <div class="col-md-1">
                                            Location
                                        </div>
                                        <div class="col-md-2">
                                            <asp:DropDownList ID="DropDownList31" runat="server" Width="100%" Height="30px" CssClass="ddlAttLocation ">
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 5px">
                                        <div class="col-md-1">
                                            Start Date
                                        </div>
                                        <div class="col-md-2">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                                </div>
                                                <input id="Text1" class="form-control dPicker tbAttStartDate" runat="server" placeholder="Start date">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 5px">
                                        <div class="col-md-1">
                                            End Date
                                        </div>
                                        <div class="col-md-2">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                                </div>
                                                <input id="Text2" class="form-control dPicker tbAttEndDate" runat="server" placeholder="End date">
                                            </div>
                                        </div>
                                    </div>
                                    <%--<div class="row" style="margin-top: 5px">
                                        <div class="col-md-1">
                                            End Date
                                        </div>
                                        <div class="col-md-2">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                                </div>
                                            </div>
                                            <input id="Text2" class="form-control dPicker tbAttEndDate" runat="server" placeholder="End date">
                                        </div>
                                    </div>--%>

                                    <div class="row" style="margin-top: 5px">
                                        <div class="col-md-3  float-right">
                                            <button type="button" class="btn btn-outline-primary btn-sm" style="float: left" onclick="AttendanceModule.onAttendanceSch(true)">Search</button>
                                            &nbsp;
                                            <button type="button" class="btn btn-outline-success btn-sm divAttendanceEntry hide" onclick="AttendanceModule.saveBulkAttendance()">Save Attendance</button>
                                        </div>
                                        <div class="col-md-9"></div>
                                    </div>
                                </div>
                                <div class="card-info">
                                    <div class="card-body">
                                        <div>
                                            <table id="tableAttendanceentry" class="table table-secondary">
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="monthly-attendance-process" role="tabpanel" aria-labelledby="custom-content-above-messages-tab">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <a href="#"><i class="fas fa-search"></i>Advance Search</a>

                            </div>
                            <div class="row">

                                <div class="col-lg-2">
                                    Employee                                      
                                            <asp:DropDownList ID="DropDownList1" runat="server" Width="100%" Height="30px" class=" ddlEmployee  ddlEntryEmployee">
                                            </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Employee Type 
                                            <asp:DropDownList ID="DropDownList2" runat="server" Width="100%" Height="30px" class="ddlEmployeeType  ddlEntryEmployeeType">
                                            </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Designation
                                            <asp:DropDownList ID="DropDownList3" runat="server" Width="100%" Height="30px" class="ddlDesignation  ddlEntryDesignation">
                                            </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Location
                                            <asp:DropDownList ID="DropDownList4" runat="server" Width="100%" Height="30px" class="ddlLocation  ddlEntryLocation">
                                            </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Department
                                            <asp:DropDownList ID="DropDownList5" runat="server" Width="100%" Height="30px" class=" ddlDepartment  ddlEntryDepartment">
                                            </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-2">
                                    Project
                                            <asp:DropDownList ID="DropDownList6" runat="server" Width="100%" Height="30px" class=" ddlProject  ddlEntryProject">
                                            </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Year
                                            <asp:DropDownList ID="ddlYear" runat="server" Width="100%" Height="30px" class="ddlYear   ddlEntryYear">
                                            </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Month
                                            <asp:DropDownList ID="ddlMonth" runat="server" Width="100%" Height="30px" class="ddlMonth   ddlEntryMonth">
                                            </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Shift
                                            <asp:DropDownList ID="DropDownList9" runat="server" Width="100%" Height="30px" class="ddlShift   ddlEntryShift">
                                            </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Division
                                            <asp:DropDownList ID="DropDownList10" runat="server" Width="100%" Height="30px" class="ddlDivision   ddlEntryDivision">
                                            </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    <br />
                                    <button type="button" class="btn btn-outline-info btn-sm" style="float: left" onclick="AttendanceModule.getMonthlyAttendance(0)">Search</button>
                                    &nbsp;   
                                    <button type="button" class="btn btn-outline-info btn-sm dvMonthlyAttendance hide" onclick="AttendanceModule.saveMonthlyAttendance()">Approve </button>
                                </div>
                            </div>
                        </div>

                        <div class="card-info">
                            <div class="card-body">
                                <div class="templateGrid1"></div>
                            </div>
                        </div>
                        <%-- <div class="card-footer">
                            &nbsp;
                            <div class="row">
                                <div class="col-lg-10">
                                </div>
                                <div class="col-lg-2">
                                    <div class="row ">
                                        <button type="button" class="btn btn-outline-info btn-sm dvMonthlyAttendance hide" onclick="AttendanceModule.saveMonthlyAttendance()">Approve </button>
                                    </div>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
                <div class="tab-pane fade" id="attendance-approval" role="tabpanel" aria-labelledby="custom-content-above-messages-tab">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-info">
                                <div class="row">
                                    <div class="col-lg-2">
                                        Employee                                       
                                            <asp:DropDownList ID="DropDownList11" runat="server" Width="100%" Height="30px" class=" ddlEmployee  ">
                                            </asp:DropDownList>
                                    </div>
                                    <div class="col-lg-2">
                                        Employee Type                                       
                                            <asp:DropDownList ID="DropDownList12" runat="server" Width="100%" Height="30px" class="ddlEmployeeType  ">
                                            </asp:DropDownList>
                                    </div>
                                    <div class="col-lg-2">
                                        Designation
                                            <asp:DropDownList ID="DropDownList13" runat="server" Width="100%" Height="30px" class="ddlDesignation  ">
                                            </asp:DropDownList>
                                    </div>
                                    <div class="col-lg-2">
                                        Location
                                      
                                            <asp:DropDownList ID="DropDownList14" runat="server" Width="100%" Height="30px" class="ddlLocation  ">
                                            </asp:DropDownList>
                                    </div>
                                    <div class="col-lg-2">
                                        Department
                                       
                                            <asp:DropDownList ID="DropDownList15" runat="server" Width="100%" Height="30px" class=" ddlDepartment  ">
                                            </asp:DropDownList>
                                    </div>
                                    <div class="col-lg-2">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-2">
                                        Project                                       
                                        <asp:DropDownList ID="DropDownList16" runat="server" Width="100%" Height="30px" class=" ddlProject   ">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-lg-2">
                                        Year                                       
                                            <asp:DropDownList ID="DropDownList17" runat="server" Width="100%" Height="30px" class="ddlYear   ">
                                            </asp:DropDownList>
                                    </div>
                                    <div class="col-lg-2">
                                        Month
                                            <asp:DropDownList ID="DropDownList18" runat="server" Width="100%" Height="30px" class="ddlMonth   ">
                                            </asp:DropDownList>
                                    </div>
                                    <div class="col-lg-2">
                                        Shift                                       
                                            <asp:DropDownList ID="DropDownList19" runat="server" Width="100%" Height="30px" class="ddlShift   ">
                                            </asp:DropDownList>
                                    </div>
                                    <div class="col-lg-2">
                                        Division
                                            <asp:DropDownList ID="DropDownList20" runat="server" Width="100%" Height="30px" class="ddlDivision  ">
                                            </asp:DropDownList>
                                    </div>
                                    <div class="col-lg-2">
                                        <br />
                                        <button type="button" class="btn btn-outline-info btn-sm " style="float: left" onclick="AttendanceModule.getAttendanceApproval(0)">Search</button>
                                        &nbsp;
                                        <button type="button" class="btn btn-outline-info btn-sm dvAttApproval">Approve</button>
                                        &nbsp;  
                                        <button type="button" class="btn btn-outline-secondary btn-sm dvAttApproval" onclick="AttendanceModule.attendanceReverted()">Revert </button>

                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="card-info panelAttendanceApproval hide">
                                <div class="card-body">
                                    <div class="dvAttApprovaltemplateGrid1"></div>
                                </div>
                                <!-- /.card-body -->
                            </div>
                        </div>
                    </div>
                    <br />
                </div>
                <div class="tab-pane fade" id="payroll-process" role="tabpanel" aria-labelledby="custom-content-above-messages-tab">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-2">
                                    Employee                                 
                                 
                                        <asp:DropDownList ID="DropDownList7" runat="server" Width="100%" Height="30px" class=" ddlEmployee  ">
                                        </asp:DropDownList>

                                </div>
                                <div class="col-lg-2">
                                    Employee Type
                                        <asp:DropDownList ID="DropDownList8" runat="server" Width="100%" Height="30px" class="ddlEmployeeType  ">
                                        </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Designation
                                        <asp:DropDownList ID="DropDownList21" runat="server" Width="100%" Height="30px" class="ddlDesignation  ">
                                        </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Location                                    
                                        <asp:DropDownList ID="DropDownList22" runat="server" Width="100%" Height="30px" class="ddlLocation  ">
                                        </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Department
                                        <asp:DropDownList ID="DropDownList23" runat="server" Width="100%" Height="30px" class=" ddlDepartment  ">
                                        </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Project                                 
                                        <asp:DropDownList ID="DropDownList24" runat="server" Width="100%" Height="30px" class=" ddlProject  ">
                                        </asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-2">
                                    Year
                                  
                                        <asp:DropDownList ID="DropDownList25" runat="server" Width="100%" Height="30px" class="ddlYear  ">
                                        </asp:DropDownList>

                                </div>
                                <div class="col-lg-2">
                                    Month
                                        <asp:DropDownList ID="DropDownList26" runat="server" Width="100%" Height="30px" class="ddlMonth  ">
                                        </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Shift
                                        <asp:DropDownList ID="DropDownList27" runat="server" Width="100%" Height="30px" class="ddlShift  ">
                                        </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Division
                                        <asp:DropDownList ID="DropDownList28" runat="server" Width="100%" Height="30px" class="ddlDivision  ">
                                        </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    <br />
                                    <button type="button" class="btn btn-outline-info btn-sm" style="float: left">Search</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-info btn-sm dvPayrollApproval">Submit</button>
                                    &nbsp;    
                                    <button type="button" class="btn btn-outline-secondary btn-sm dvPayrollApproval">Revert</button>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="templateGrid1"></div>
                            </div>
                        </div>

                        <%--<div class="card-footer">
                            &nbsp;
                            <div class="row dvPayrollApproval">
                                <div class="col-lg-10">
                                </div>

                                <div class="col-lg-2 text-right">
                                    <button type="button" class="btn btn-outline-info btn-sm">Submit</button>
                                    <button type="button" class="btn btn-outline-secondary btn-sm">Revert</button>
                                </div>
                            </div>
                        </div>--%>
                    </div>
                </div>
                <div class="tab-pane fade" id="attendance-report" role="tabpanel" aria-labelledby="custom-content-above-messages-tab">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-2">
                                    Employee
                                            <asp:DropDownList ID="ddlEmployee" runat="server" Width="100%" Height="30px" CssClass="ddlEmployee  ">
                                            </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Department
                                            <asp:DropDownList ID="ddlAttDepartment" runat="server" Width="100%" Height="30px" CssClass="ddlAttDepartment  ">
                                            </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Location
                                            <asp:DropDownList ID="ddlAttLocation" runat="server" Width="100%" Height="30px" CssClass="ddlAttLocation  ">
                                            </asp:DropDownList>
                                </div>
                                <div class="col-lg-2">
                                    Start Date
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                            </div>
                                            <input id="tbAttStartDate" class="form-control dPicker tbAttStartDate" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" data-mask="" im-insert="false">
                                        </div>
                                        <!-- /.input group -->
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    End Date
                                    <div class="form-group">
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                            </div>
                                            <input id="tbAttEndDate" class="form-control dPicker tbAttEndDate" data-inputmask-alias="datetime" data-inputmask-inputformat="mm/dd/yyyy" data-mask="" im-insert="false">
                                        </div>
                                        <!-- /.input group -->
                                    </div>
                                </div>
                                <div class="col-lg-1">
                                    <br />
                                    <button type="button" class="btn btn-outline-info btn-sm" onclick="AttendanceModule.onAttendanceSch(false)">Search</button>
                                </div>
                            </div>
                            <br />
                            <div class="row ">
                                <div class="col-md-12 table table-secondary dvReport">
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-md-12" style="overflow-x: auto;">
                                    <br />
                                    <table id="tableAttendance" class="table table-secondary">
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="inout-entry" role="tabpanel" aria-labelledby="custom-content-above-messages-tab">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-2">
                                    Employee
                                       
                                            <asp:DropDownList ID="DropDownList32" runat="server" Width="100%" Height="30px" class=" ddlEmployee">
                                            </asp:DropDownList>

                                </div>
                                <div class="col-lg-2">
                                    Employee Type
                                            <asp:DropDownList ID="DropDownList39" runat="server" Width="100%" Height="30px" class="ddlEmployeeType">
                                            </asp:DropDownList>

                                </div>
                                <div class="col-lg-2">
                                    Designation
                                            <asp:DropDownList ID="DropDownList40" runat="server" Width="100%" Height="30px" class="ddlDesignation">
                                            </asp:DropDownList>

                                </div>
                                <div class="col-lg-2">
                                    Location
                                            <asp:DropDownList ID="DropDownList43" runat="server" Width="100%" Height="30px" class="ddlLocation">
                                            </asp:DropDownList>

                                </div>
                                <div class="col-lg-2">
                                    Department
                                            <asp:DropDownList ID="DropDownList44" runat="server" Width="100%" Height="30px" class=" ddlDepartment">
                                            </asp:DropDownList>

                                </div>
                                <div class="col-lg-2">
                                    Project
                                    
                                            <asp:DropDownList ID="DropDownList45" runat="server" Width="100%" Height="30px" class=" ddlProject">
                                            </asp:DropDownList>

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-2">
                                    Year
                                        
                                            <asp:DropDownList ID="DropDownList46" runat="server" Width="100%" Height="30px" class="ddlYear">
                                            </asp:DropDownList>

                                </div>
                                <div class="col-lg-2">
                                    Month
                                       
                                            <asp:DropDownList ID="DropDownList47" runat="server" Width="100%" Height="30px" class="ddlMonth">
                                            </asp:DropDownList>

                                </div>
                                <div class="col-lg-2">
                                    Shift
                                       
                                            <asp:DropDownList ID="DropDownList48" runat="server" Width="100%" Height="30px" class="ddlShift">
                                            </asp:DropDownList>

                                </div>
                                <div class="col-lg-2">
                                    Division
                                      
                                            <asp:DropDownList ID="DropDownList49" runat="server" Width="100%" Height="30px" class="ddlDivision">
                                            </asp:DropDownList>

                                </div>
                                <div class="col-lg-2">
                                    Date
                                   
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                                </div>
                                                <input id="Text3" class="form-control dPicker tbAttndanceDate" runat="server" placeholder="Start date">
                                            </div>

                                </div>
                                <div class="col-lg-2">
                                    <br />
                                    <button type="button" class="btn btn-outline-info btn-sm" style="float: left" onclick="AttendanceModule.getMonthlyAttendance(2)">Search</button>
                                    &nbsp;
                                    <button type="button" class="btn btn-outline-success btn-sm dvMonthlyAttendance hide" onclick="AttendanceModule.saveDailyAttendance()">Save Attendance</button>

                                </div>
                            </div>
                            <br />
                            <div class="tableDAtt"></div>
                        </div>
                        <div class="card-footer">
                            &nbsp;
                            <div class="row">
                                <div class="col-lg-11">
                                </div>
                                <div class="col-lg-1 text-right">
                                    <div class="row ">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="alert alert-danger norecord" style="display: none">No Record !!</div>
            </div>
        </section>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">

    <script type="text/javascript">
        var baseUrl = '<%= ConfigurationManager.AppSettings["baseUrl"]%>';
        var globalCol = [];
        var PLEASESELECT = '--Select--';
        var count = 0;
        var ADITIONAL = 'Aditional';
        var na = 'N/A';
        var EARNING = 'Earning';
        var DEDUCTION = 'Deduction';
        var MASTERLIST = [];
        var EMPLOYEEID = null;
        var ddlEmployee = $(".ddlEmployee");
        var ddlEmployeeType = $(".ddlEmployeeType");
        var ddlDesignation = $(".ddlDesignation");
        var ddlLocation = $(".ddlLocation");
        var ddlDepartment = $(".ddlDepartment");
        var ddlProject = $(".ddlProject");
        var ddlDivision = $(".ddlDivision");
        var ddlShift = $(".ddlShift");
        var templateItemObject = [];
        var Toast = null;
        var AttendanceModule = (function () {
            var ddlMonth = $(".ddlMonth");
            var ddlYear = $(".ddlYear");
            var loadMonthlyAttendanceModule = function () {

                $('.panelAttendanceApproval').hide();
                $('.templateGrid1').html('');
                $('.norecord').hide();
                $('.templateGrid1').html('');
                $('.tableDAtt').html('');
                $(".ddlMonth").removeClass("add-error");
                $(".ddlYear").removeClass("add-error");
                $(".dvMonthlyAttendance").hide();
                $(".dvAttApproval").hide();
                $('.dvReport').html('');
                showModal();
                loadMasters();
                CommonModule.bindMasterDropDownList(ddlLocation, '010', MASTERLIST);
                CommonModule.bindMasterDropDownList(ddlDepartment, '006', MASTERLIST);
                CommonModule.bindEmployeeDropDownList(ddlEmployee, MASTERLIST.EmployeeList);
                CommonModule.bindMasterDropDownList(ddlProject, '025', MASTERLIST);
                CommonModule.bindMasterDropDownList(ddlEmployeeType, '014', MASTERLIST);
                CommonModule.bindMasterDropDownList(ddlDesignation, '007', MASTERLIST);
                CommonModule.bindMasterDropDownList(ddlDivision, '015', MASTERLIST);
                CommonModule.bindShiftDropDownList(ddlShift, MASTERLIST.Shift);

                var monthList = [{ 'Value': '1', 'Text': 'January' }, { 'Value': '2', 'Text': 'February' }, { 'Value': '3', 'Text': 'March' },
                { 'Value': '4', 'Text': 'April' }, { 'Value': '5', 'Text': 'May' }, { 'Value': '6', 'Text': 'June' },
                { 'Value': '7', 'Text': 'July' }, { 'Value': '8', 'Text': 'August' }, { 'Value': '9', 'Text': 'September' },
                { 'Value': '10', 'Text': 'October' }, { 'Value': '11', 'Text': 'November' }, { 'Value': '12', 'Text': 'December' }];

                var yearList = [{ 'Value': '1', 'Text': '2018' }, { 'Value': '2', 'Text': '2019' }, { 'Value': '3', 'Text': '2020' },
                { 'Value': '4', 'Text': '2021' }, { 'Value': '5', 'Text': '2022' }, { 'Value': '6', 'Text': '2023' },
                { 'Value': '7', 'Text': '2024' }, { 'Value': '8', 'Text': '2025' }, { 'Value': '9', 'Text': '2026' },
                { 'Value': '10', 'Text': '2027' }, { 'Value': '11', 'Text': '2028' }, { 'Value': '12', 'Text': '2029' }];
                ddlMonth.html('');
                ddlMonth.append($("<option></option>").val('0').html('--Select--'));
                $.grep(monthList, function (n, i) {
                    ddlMonth.append($("<option></option>").val(n.value).html(n.Text));
                });
                ddlYear.html('');
                ddlYear.append($("<option></option>").val('0').html('--Select--'));
                $.grep(yearList, function (n, i) {
                    ddlYear.append($("<option></option>").val(n.value).html(n.Text));
                });
                hideModal();
            };

            var loadAttendanceModule = function () {
                showModal();
                $('.norecord').hide();
                $('.divAttendanceEntry').hide();
                $("#tableAttendanceentry").html('');
                $(".ddlMonth").removeClass("add-error");
                $(".ddlYear").removeClass("add-error");
                $(".dvMonthlyAttendance").hide();
                $(".dvAttApproval").hide();
                var ddlAttLocation = $(".ddlAttLocation");
                var ddlAttDepartment = $(".ddlAttDepartment");
                var ddlEmployee = $(".ddlEmployee");

                loadMasters();
                // CommonModule.LoadEmployee();
                CommonModule.bindMasterDropDownList(ddlAttLocation, '010', MASTERLIST);
                CommonModule.bindMasterDropDownList(ddlAttDepartment, '006', MASTERLIST);
                CommonModule.bindEmployeeDropDownList(ddlEmployee, MASTERLIST.EmployeeList)
                hideModal();
            };

            var onAttendanceSch = function (isEntry) {
                $('.norecord').hide();
                //isEntry ? $(".divAttendanceEntry").show() : $(".divAttendanceEntry").hide();
                showModal();
                var employeeId = parseInt($(".ddlEmployee option:selected").val());
                var startDate = '';
                var endDate = '';
                if (!isEntry) {
                    startDate = $($(".tbAttStartDate")[1]).val().split("/").join("-");
                    endDate = $($(".tbAttEndDate")[1]).val().split("/").join("-");
                }
                else {
                    startDate = $($(".tbAttStartDate")[0]).val().split("/").join("-");
                    endDate = $($(".tbAttEndDate")[0]).val().split("/").join("-");
                }

                var sMonthly = false;
                var type = isEntry ? 'Bulk' : 'Report';
                var lstData = [employeeId, startDate, endDate, sMonthly, type];
                var url = baseUrl + 'Attendance';
                $.ajax({
                    url: url,
                    type: 'POST',
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(lstData),
                    success: function (data) {
                        if (data.List.length === 0) {
                            $('.norecord').show();
                            hideModal();
                            return;
                        }

                        if (data.Type == "Report") {
                            $('.dvReport').html('');
                            $(".dvReport").append(data.Html);
                            $('#Tablereport').DataTable();
                            hideModal();
                        }
                        else {
                            var table = '';
                            var htmlTable = '';
                            if (isEntry) {
                                table = $('#tableAttendanceentry');
                                htmlTable = '#tableAttendanceentry'
                            }
                            else {
                                table = $('#tableAttendance');
                                htmlTable = '#tableAttendance'
                            }

                            //if (data.List.Count > 0 && isEntry) {
                            //    $(".divAttendanceEntry").show()
                            //}
                            table.html('');
                            var cols = _headers(data.List, htmlTable);
                            // Traversing the JSON data 
                            for (var i = 0; i < data.List.length; i++) {
                                $(".divAttendanceEntry").show()
                                var row = $('<tr/>');
                                for (var colIndex = 0; colIndex < cols.length; colIndex++) {
                                    var text = '';
                                    var val = data.List[i][cols[colIndex]];
                                    if (data.List[i][cols[0]] === data.List[i][cols[colIndex]]) {
                                        row.append($('<td/>').html(data.List[i][cols[colIndex]]));
                                    }
                                    else if (data.List[i][cols[1]] === data.List[i][cols[colIndex]]) {
                                        if (cols[colIndex] == "EmployeeId") {
                                            text = data.List[i][cols[colIndex]];
                                            row.append($('<td />').html(text));
                                        }
                                        else {
                                            text += '<select style="width:60px"><option value="P">P</option><option value="A">A</option><option value="L">L</option><option value="NA" selected="selected">N/A</option></select><br/>'
                                            row.append($('<td />').html(text));
                                        }
                                    }
                                    else {
                                        if (isEntry) {
                                            var isDis = val === 'P' || val === 'A' || val === 'L' ? 'disabled' : '';
                                            text += '<select  style="width:60px" id="ddlPresentStatus' + colIndex + '_' + i + '" att-date="' + cols[colIndex] + '" attr-emp-id="' + data.List[i][cols[1]] + '" ' + isDis + '><option value="P">P</option><option value="A">A</option><option value="L">L</option><option value="NA">N/A</option></select><br/>'
                                            row.append($('<td />').html(text));
                                            row.find('select#ddlPresentStatus' + colIndex + '_' + i + ' option[value=' + val + ']').attr('selected', 'selected');
                                        }
                                        else {
                                            if (val === 'P')
                                                text += '<div style="width:15px;height:20px;background-color:#00a65a" />'
                                            else if (val === 'L')
                                                text += '<div style="width:15px;height:20px;background-color:red" />'
                                            else if (val === 'A')
                                                text += '<div style="width:15px;height:20px;background-color:orange" />'
                                            else
                                                text += '<div style="width:15px;height:20px;background-color:lightgrey" />'
                                            row.append($('<td style="width:50px"/>').html(text));
                                        }
                                    }
                                }
                                table.append(row);
                            }
                            hideModal();
                        }

                    },
                    error: function (request, message, error) {
                        hideModal();
                    }
                })
            };

            var _uuidv4 = function () {
                return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
                    var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
                    return v.toString(16);
                });
            }

            var _headers = function (list, selector) {
                var columns = [];
                var header = $('<tr/>');
                for (var i = 0; i < list.length; i++) {
                    var row = list[i];
                    for (var k in row) {
                        if ($.inArray(k, columns) == -1) {
                            columns.push(k);
                            // Creating the header 
                            if (k === 'Name')
                                header.append($('<th style="width:180px"/>').html(k));
                            else if (k === 'EmployeeId')
                                header.append($('<th style="width:180px"/>').html(k));
                            else
                                header.append($('<th style="width:20px"/>').html(k.split('-')[2]));
                        }
                    }
                }

                // Appending the header to the table 
                $(selector).append(header);
                return columns;
            }

            var getMonthlyAttendance = function (entryLock) {
                $('.norecord').hide();
                $(".dvMonthlyAttendance").hide();
                $(".dvAttApproval").hide();
                $(".ddlMonth").removeClass("add-error");
                $(".ddlYear").removeClass("add-error");
                var employeeId = '';
                var employeeTypeId = '';
                var designationId = '';
                var locationId = '';
                var departmentId = '';
                var projectId = '';
                var shiftId = '';
                var divisionId = '';
                var month = '';
                var year = '';
                var tbAttndanceDate = '';
                if (entryLock == 0) {
                    employeeId = parseInt($(".ddlEntryEmployee option:selected").val()) === 0 ? null : parseInt($(".ddlEmployee option:selected").val());
                    employeeTypeId = $(".ddlEntryEmployeeType option:selected").val() === '0' ? null : $(".ddlEmployeeType option:selected").val();
                    designationId = $(".ddlEntryDesignation option:selected").val() === '0' ? null : $(".ddlDesignation option:selected").val();
                    locationId = $(".ddlEntryLocation option:selected").val() === '0' ? null : $(".ddlLocation option:selected").val();
                    departmentId = $(".ddlEntryDepartment option:selected").val() === '0' ? null : $(".ddlDepartment option:selected").val();
                    projectId = $(".ddlEntryProject option:selected").val() === '0' ? null : $(".ddlProject option:selected").val();
                    shiftId = $(".ddlEntryShift option:selected").val() === '0' ? null : $(".ddlShift option:selected").val();
                    divisionId = $(".ddlEntryDivision option:selected").val() === '0' ? null : $(".ddlDivision option:selected").val();
                    month = $(".ddlEntryMonth option:selected")[0].index;
                    tbAttndanceDate = $(".tbAttndanceDate").text();
                    year = $(".ddlEntryYear option:selected").text();
                    var isReq = false;
                    if ($(".ddlEntryMonth option:selected")[0].index === 0) {
                        $(".ddlEntryMonth").addClass("add-error");
                        isReq = true;
                    }
                    else {
                        $(".ddlEntryMonth").removeClass("add-error");
                    }
                    if ($(".ddlEntryYear option:selected")[0].index === 0) {
                        $(".ddlEntryYear").addClass("add-error");
                        isReq = true;
                    }
                    else {
                        $(".ddlEntryYear").removeClass("add-error");
                    }
                    if (isReq) {
                        return false;
                    }

                }
                else {
                    employeeId = parseInt($(".ddlEmployee option:selected").val()) === 0 ? null : parseInt($(".ddlEmployee option:selected").val());
                    employeeTypeId = $(".ddlEmployeeType option:selected").val() === '0' ? null : $(".ddlEmployeeType option:selected").val();
                    designationId = $(".ddlDesignation option:selected").val() === '0' ? null : $(".ddlDesignation option:selected").val();
                    locationId = $(".ddlLocation option:selected").val() === '0' ? null : $(".ddlLocation option:selected").val();
                    departmentId = $(".ddlDepartment option:selected").val() === '0' ? null : $(".ddlDepartment option:selected").val();
                    projectId = $(".ddlProject option:selected").val() === '0' ? null : $(".ddlProject option:selected").val();
                    shiftId = $(".ddlShift option:selected").val() === '0' ? null : $(".ddlShift option:selected").val();
                    divisionId = $(".ddlDivision option:selected").val() === '0' ? null : $(".ddlDivision option:selected").val();
                    month = $(".ddlMonth option:selected")[0].index;
                    year = $(".ddlYear option:selected")[0].index;
                    tbAttndanceDate = $(".tbAttndanceDate").val();
                    var isReq = false;
                    if (entryLock === 2) {
                        if (tbAttndanceDate === '') {
                            $(".tbAttndanceDate").addClass("add-error");
                            isReq = true;
                        }
                    }
                    else {
                        if (month === 0) {
                            $(".ddlMonth").addClass("add-error");
                            isReq = true;
                        }
                        else {
                            $(".ddlMonth").removeClass("add-error");
                        }
                        if (year === 0) {
                            $(".ddlYear").addClass("add-error");
                            isReq = true;
                        }
                        else {
                            $(".ddlYear").removeClass("add-error");
                        }
                    }
                    if (isReq) {
                        return false;
                    }
                }


                showModal();
                var sMonthly = true;
                var tablMonthlyAttendance = entryLock === 0 ? 'tablMonthlyAttendance' : 'tableDailyAttendance';
                var lstData = [employeeId, employeeTypeId, designationId, sMonthly, locationId, departmentId,
                    projectId, shiftId, divisionId, month, year, entryLock, tablMonthlyAttendance, tbAttndanceDate];
                var url = baseUrl + 'Attendance';
                $.ajax({
                    url: url,
                    type: 'POST',
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(lstData),
                    success: function (data) {
                        // var tablMonthlyAttendance = entryLock === 0 ? 'tablMonthlyAttendance' : 'tableDailyAttendance';
                        if (data.Count > 0) {
                            if (entryLock === 2) {
                                $('.tableDAtt').html('');
                                $(".tableDAtt").append(data.Html);
                                $('#tableDailyAttendance').DataTable();
                            }
                            else {
                                $('.templateGrid1').html('');
                                $(".templateGrid1").append(data.Html);
                                $('#tablMonthlyAttendance').DataTable();
                            }
                            $(".dvTemplateNoRecords").hide();
                            $(".dvMonthlyAttendance").show();
                            $(".dvAttApproval").show();
                            $('#tableDailyAttendance').find('tbody tr input.timeclass').timepicki({
                                show_meridian: false,
                                min_hour_value: 0,
                                max_hour_value: 23,
                                // step_size_minutes: 15,
                                overflow_minutes: true,
                                increase_direction: 'up'
                                // disable_keyboard_mobile: true
                            });
                        }
                        else {
                            $(".dvMonthlyAttendance").hide();
                            $(".dvAttApproval").hide();
                            $(".templateGrid1").html("");
                            $('.tableDAtt').html('');
                            $(".dvTemplateNoRecords").show();
                        }
                        //  _drawChart(data.dataList);
                        hideModal();
                    },
                    error: function (request, message, error) {
                        hideModal();
                    }
                })
            };

            var _drawChart = function (dataValues) {
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Column Name');
                data.addColumn('number', 'Column Value');
                for (var i = 0; i < dataValues.length; i++) {
                    data.arrRow(dataValues[i].Gender, dataValues[i].Total);
                }
                new google.visualization.PieChart(document.getElementById('myChartDiv'));
                draw(data, { title: 'Gender Chart' });
            };

            var saveMonthlyAttendance = function () {
                showModal();;
                var arrPropIdPos = new Array();
                // var templateHtml = $("#tablMonthlyAttendance").find("tbody tr");
                var EmpAttendanceEntry = new Object();
                var attendanceEntry = [];
                $("#tablMonthlyAttendance").find("tbody tr").each(function (i, v) {
                    if ($($(v).find('input')[0]).attr('ischecked') !== undefined && $($(v).find('input')[0]).attr('ischecked') === 'true') {
                        var empAttendanceEntry = {};
                        empAttendanceEntry.emp_attendance_entry_id = parseInt($(v).find('td:eq(1)').html());
                        empAttendanceEntry.paytype_id = 0;
                        empAttendanceEntry.employee_id = parseInt($(v).find('td:eq(2)').html());
                        empAttendanceEntry.pay_period = $(".ddlMonth option:selected")[0].index;
                        empAttendanceEntry.pay_year = $(".ddlEntryYear option:selected").text();
                        empAttendanceEntry.work_unit = '';
                        empAttendanceEntry.days_worked = parseInt($(v).find('td:eq(13)').html());
                        empAttendanceEntry.days_overtime = 0;
                        empAttendanceEntry.notes = '';
                        empAttendanceEntry.attendance_method = 0;
                        empAttendanceEntry.local_day = 0;
                        empAttendanceEntry.non_local_day = 0;
                        attendanceEntry.push(empAttendanceEntry);
                    }
                });
                EmpAttendanceEntry = attendanceEntry;
                $.ajax({
                    url: baseUrl + 'MonthlyAttendance',
                    type: 'POST',
                    contentType:
                        "application/json;charset=utf-8",
                    data: JSON.stringify(EmpAttendanceEntry),
                    success: function (response) {
                        AttendanceModule.getMonthlyAttendance(0);
                        showNotification("Data Saved", response.Html, 'success');
                        hideModal();
                    },
                    error: function (request, message, error) {
                        hideModal();
                    }
                });

            };

            var attendanceReverted = function () {
                showModal();;
                var ids = '';
                $("#AttendanceApproval").find("tbody tr").each(function (i, v) {
                    if ($($(v).find('input')[0]).attr('ischecked') !== undefined && $($(v).find('input')[0]).attr('ischecked') === 'true') {
                        ids += parseInt($(v).find('td:eq(1)').html());
                        ids += ',';
                    }
                });
                ids = ids.replace(/,\s*$/, "");
                var lstData = [ids];
                var url = baseUrl + 'Attendance';
                $.ajax({
                    url: url,
                    type: 'POST',
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(lstData),
                    success: function (response) {
                        hideModal();
                        showNotification("", response.Html, parseInt(response.Flag) == parseInt(0) ? 'success' : 'danger');
                        AttendanceModule.getAttendanceApproval(0)
                    },
                    error: function (request, message, error) {
                        hideModal();
                    }
                })
            };

            var ckbCheckAll = function (e) {
                $("input.chkAtt").prop('checked', $(e).prop('checked'));
                $("input.chkAtt").attr('isChecked', true);
            };

            var checkBoxClass = function (e) {
                if (!$(e).prop("checked")) {
                    $("input.chkAttAll").prop("checked", false);
                    $(e).attr('isChecked', false);
                }
                else {
                    $(e).attr('isChecked', true);

                }
            };

            var getAttendanceApproval = function (entryLock) {
                $('.norecord').hide();
                $(".dvAttApproval").hide();
                var employeeId = parseInt($("#FeaturedContent_DropDownList11 option:selected").val()) === 0 ? null : parseInt($("#FeaturedContent_DropDownList11 option:selected").val());
                var employeeTypeId = $("#FeaturedContent_DropDownList12 option:selected").val() === '0' ? null : $("#FeaturedContent_DropDownList12 option:selected").val();
                var designationId = $("#FeaturedContent_DropDownList13 option:selected").val() === '0' ? null : $("#FeaturedContent_DropDownList13 option:selected").val();
                var locationId = $("#FeaturedContent_DropDownList14 option:selected").val() === '0' ? null : $("#FeaturedContent_DropDownList14 option:selected").val();
                var departmentId = $("#FeaturedContent_DropDownList15 option:selected").val() === '0' ? null : $("#FeaturedContent_DropDownList15 option:selected").val();
                var projectId = $("#FeaturedContent_DropDownList16 option:selected").val() === '0' ? null : $("#FeaturedContent_DropDownList16 option:selected").val();
                var shiftId = $("#FeaturedContent_DropDownList19 option:selected").val() === '0' ? null : $("#FeaturedContent_DropDownList19 option:selected").val();
                var divisionId = $("#FeaturedContent_DropDownList20 option:selected").val() === '0' ? null : $("#FeaturedContent_DropDownList20 option:selected").val();
                var month = $("#FeaturedContent_DropDownList18 option:selected")[0].index;
                var year = $("#FeaturedContent_DropDownList17 option:selected").text();
                var isReq = false;

                if (month === 0) {
                    $("#FeaturedContent_DropDownList18").addClass("add-error");
                    isReq = true;
                }
                else {
                    $("#FeaturedContent_DropDownList18").removeClass("add-error");
                }
                if ($("#FeaturedContent_DropDownList17 option:selected")[0].index === 0) {
                    $("#FeaturedContent_DropDownList17").addClass("add-error");
                    isReq = true;
                }
                else {
                    $("#FeaturedContent_DropDownList17").removeClass("add-error");
                }

                if (isReq) {
                    return false;
                }
                showModal();;
                var sMonthly = true;
                var tableAttendanceApproval = 'AttendanceApproval';
                var lstData = [employeeId, employeeTypeId, designationId, sMonthly, locationId, departmentId,
                    projectId, shiftId, divisionId, month, year, entryLock, tableAttendanceApproval];
                var url = baseUrl + 'Attendance';
                $.ajax({
                    url: url,
                    type: 'POST',
                    dataType: "json",
                    contentType: "application/json; charset=utf-8",
                    data: JSON.stringify(lstData),
                    success: function (data) {
                        var dataGrid = $('.dvAttApprovaltemplateGrid1');
                        var dvButtonSection = $(".dvAttApproval");
                        var divNoRecords = $(".dvTemplateNoRecords");
                        dataGrid.html('');
                        if (data) {
                            $('.panelAttendanceApproval').show();
                            dataGrid.append(data.Html);
                            $("#AttendanceApproval").DataTable();
                            divNoRecords.hide();
                            if (data.List.length > 2)
                                dvButtonSection.show();
                        }
                        else {
                            $('.panelAttendanceApproval').hide();
                            dvButtonSection.hide();
                            divNoRecords.show();
                        }
                        hideModal();
                    },
                    error: function (request, message, error) {
                        hideModal();
                    }
                })
            };

            var saveBulkAttendance = function () {
                showModal();
                var Attendance = new Object();
                var attendanceEntryTable = $('#tableAttendanceentry tr');
                var attendanceEntryList = [];
                var attendanceEntryObject = {};
                $.each(attendanceEntryTable, function (i, v) {
                    if (i != 0) {
                        $.each($(v).find('td'), function (j, v1) {
                            if (j >= 2) {
                                var ddlId1 = $(v1).find('select').attr('id');
                                if ($(v1).find('select').attr('disabled') === undefined &&
                                    $("#" + ddlId1 + " option:selected").val() !== 'N/A') {
                                    attendanceEntryObject.EmployeeId = $(v1).find('select').attr('attr-emp-id');
                                    attendanceEntryObject.DATE = $(v1).find('select').attr('att-date');
                                    var ddlId = $(v1).find('select').attr('id');
                                    var val = $("#" + ddlId + " option:selected").val();
                                    attendanceEntryObject.PRESENT_STATUS = val;
                                    attendanceEntryObject.INTIME = null;
                                    attendanceEntryObject.OUTTIME = null;
                                    attendanceEntryList.push(attendanceEntryObject);
                                    attendanceEntryObject = {};
                                }
                            }
                        });
                    }
                });
                Attendance.Attendanceentry = attendanceEntryList;
                Attendance.AttendanceType = 'BulkAttendance';
                $.ajax({
                    url: baseUrl + 'Attendance',
                    type: 'Put',
                    contentType:
                        "application/json;charset=utf-8",
                    data: JSON.stringify(Attendance),
                    success: function (response) {
                        hideModal();
                        AttendanceModule.onAttendanceSch(true);
                        showNotification("Data Saved", response.Html, 'success');
                    },
                    error: function (request, message, error) {
                        hideModal();
                    }
                });
            }

            var saveDailyAttendance = function () {
                debugger
                showModal();
                var Attendance = new Object();
                var attendanceEntryTable = $('div.tableDAtt table#tableDailyAttendance tbody tr.data-row');
                var attendanceEntryList = [];
                var attendanceEntryObject = {};
                $.each(attendanceEntryTable, function (i, v) {
                    var isChecked = $(v).find("td:eq(0)").find('input').attr("ischecked");
                    var isDisabled = $(v).find("td:eq(9)").find('input').attr("disabled");
                    if (isChecked === 'true' && isDisabled === undefined) {
                        attendanceEntryObject.EmployeeId = $(v).find("td:eq(2)").html();
                        attendanceEntryObject.DATE = $('.tbAttndanceDate').val();
                        attendanceEntryObject.PRESENT_STATUS = 'P';
                        attendanceEntryObject.INTIME = $(v).find("td:eq(9)").find('input').val();
                        attendanceEntryObject.OUTTIME = $(v).find("td:eq(10)").find('input').val();
                        attendanceEntryList.push(attendanceEntryObject);
                        attendanceEntryObject = {};
                    }
                });
                Attendance.Attendanceentry = attendanceEntryList;
                Attendance.AttendanceType = 'DailyAttendance';
                $.ajax({
                    url: baseUrl + 'Attendance',
                    type: 'Put',
                    contentType:
                        "application/json;charset=utf-8",
                    data: JSON.stringify(Attendance),
                    success: function (response) {
                        hideModal();
                        AttendanceModule.onAttendanceSch(true);
                        showNotification("Data Saved", response.Html, 'success');
                        AttendanceModule.getMonthlyAttendance(2);
                    },
                    error: function (request, message, error) {
                        hideModal();
                    }
                });
            };

            return {
                onAttendanceSch: onAttendanceSch,
                loadAttendanceModule: loadAttendanceModule,
                loadMonthlyAttendanceModule: loadMonthlyAttendanceModule,
                getMonthlyAttendance: getMonthlyAttendance,
                checkBoxClass: checkBoxClass,
                ckbCheckAll: ckbCheckAll,
                saveMonthlyAttendance: saveMonthlyAttendance,
                getAttendanceApproval: getAttendanceApproval,
                saveBulkAttendance: saveBulkAttendance,
                saveDailyAttendance: saveDailyAttendance,
                attendanceReverted: attendanceReverted
            };
        })();


        $('input[name=sameaspermanent]').click(function () {
            var id = '#FeaturedContent';
            $("input[name=sameaspermanent]:checked").is(':checked') ? $('#FeaturedContent_tbPresentAdd1').val($('#FeaturedContent_tbPermanentAdd1').val()) : $('#FeaturedContent_tbPresentAdd1').val("");
            $("input[name=sameaspermanent]:checked").is(':checked') ? $('#FeaturedContent_tbPresentAdd2').val($('#FeaturedContent_tbPermanentAdd2').val()) : $('#FeaturedContent_tbPresentAdd2').val("");
            $("input[name=sameaspermanent]:checked").is(':checked') ? $('#FeaturedContent_tbPresentAdd3').val($('#FeaturedContent_tbPermanentAdd3').val()) : $('#FeaturedContent_tbPresentAdd3').val("");
            $("input[name=sameaspermanent]:checked").is(':checked') ? $('#FeaturedContent_tbPresentAdd4').val($('#FeaturedContent_tbPermanentAdd4').val()) : $('#FeaturedContent_tbPresentAdd4').val("");
            $("input[name=sameaspermanent]:checked").is(':checked') ? $('#FeaturedContent_tbPresentAdd5').val($('#FeaturedContent_tbPermanentAdd5').val()) : $('#FeaturedContent_tbPresentAdd5').val("");
            $("input[name=sameaspermanent]:checked").is(':checked') ? $('#FeaturedContent_tbPresentAdd6').val($('#FeaturedContent_tbPermanentAdd6').val()) : $('#FeaturedContent_tbPresentAdd6').val("");
            $("input[name=sameaspermanent]:checked").is(':checked') ? $('#FeaturedContent_tbPresentAdd7').val($('#FeaturedContent_tbPermanentAdd7').val()) : $('#FeaturedContent_tbPresentAdd7').val("");
            $("input[name=sameaspermanent]:checked").is(':checked') ? $('#FeaturedContent_tbPresentAdd8').val($('#FeaturedContent_tbPermanentAdd8').val()) : $('#FeaturedContent_tbPresentAdd8').val("");
            $("input[name=sameaspermanent]:checked").is(':checked') ? $('#FeaturedContent_tbPresentAdd9').val($('#FeaturedContent_tbPermanentAdd9').val()) : $('#FeaturedContent_tbPresentAdd9').val("");

        });

        var CommonModule = (function () {
            var _url = baseUrl + 'Master/GetMaster';
            var _urlEmployeeList = baseUrl + 'Master/GetEmployeeList';

            var setDefaultSelectDropdown = function (object) {
                if (object == null || object == "0")
                    return "0";
                if (object == 0)
                    return PLEASESELECT;
                return object;
            }

            var setDate = function (dFormat) {
                if (dFormat != null) {
                    var dTime = dFormat.split('-');
                    var year = dTime[0];
                    var month = dTime[1];
                    var date = dTime[2].split("T")[0];
                    return month + "/" + date + "/" + year;
                }
                return "";
            }

            var addRow = function () {
                count++;
                var initial_row = $('tr.appendableDIV').first().clone();
                var td0 = initial_row.find('td:eq(0) input').attr('name');
                initial_row.find('td:eq(0) input').val("");
                var td1 = initial_row.find('td:eq(1) input').attr('name');
                initial_row.find('td:eq(1) input').val("");
                var td2 = initial_row.find('td:eq(2) input').attr('name');
                initial_row.find('td:eq(2) input').val("");
                var td3 = initial_row.find('td:eq(3) select').attr('name');
                initial_row.find('td:eq(3) select option')[0];
                var td4 = initial_row.find('td:eq(4) select').attr('name');
                initial_row.find('td:eq(4) select option')[0];
                var td5 = initial_row.find('td:eq(5) input').attr('name');
                initial_row.find('td:eq(5) input').val("");

                initial_row.find('td:eq(0) input').attr('name', td0 + count);
                initial_row.find('td:eq(1) input').attr('name', td1 + count);
                initial_row.find('td:eq(2) input').attr('name', td2 + count);
                initial_row.find('td:eq(3) select').attr('name', td3 + count);
                initial_row.find('td:eq(4) select').attr('name', td4 + count);
                initial_row.find('td:eq(5) input').attr('name', td5 + count);


                initial_row.find('td:eq(0) input').attr('id', td0 + count);
                initial_row.find('td:eq(1) input').attr('id', td1 + count);
                initial_row.find('td:eq(2) input').attr('id', td2 + count);
                initial_row.find('td:eq(3) select').attr('id', td3 + count);
                initial_row.find('td:eq(4) select').attr('id', td4 + count);
                initial_row.find('td:eq(5) input').attr('name', td5 + count);

                $(initial_row).appendTo($("#data_TableInfo"));
            }

            var removeRow = function (e) {
                var len = $("#data_TableInfo").find("tr").length;
                if (len > 2) {
                    $(e).closest("tr").remove();
                }
                else {
                    return false;
                }

            }

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
                debugger

                controlId.html('');
                controlId.append($("<option></option>").val('0').html(PLEASESELECT));
                $.grep(LIST, function (n, i) {
                    if (n.dateOfRel == null)
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

            return {
                bindMasterDropDownList: bindMasterDropDownList,
                removeRow: removeRow,
                addRow: addRow,
                setDate: setDate,
                setDefaultSelectDropdown: setDefaultSelectDropdown,
                bindEmployeeDropDownList: bindEmployeeDropDownList,
                bindShiftDropDownList: bindShiftDropDownList
            };

        })();

        $(function () {
            $('#tableDailyAttendance').find('tbody tr input.timeclass').timepicki({
                show_meridian: false,
                min_hour_value: 0,
                max_hour_value: 23,
                // step_size_minutes: 15,
                overflow_minutes: true,
                increase_direction: 'up'
                // disable_keyboard_mobile: true
            });
            $(".dPicker").datepicker('setDate', 'today');

            Toast = Swal.mixin({
                toast: true,
                position: 'top-end',
                showConfirmButton: false,
                timer: 3000
            });
            AttendanceModule.loadAttendanceModule();
        });
    </script>


</asp:Content>
