<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeAssignement.aspx.cs" Inherits="Samples.transaction.EmployeeAssignement" MasterPageFile="~/Main.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <form method="post" id="EmployeeAssignement" enctype="multipart/form-data" runat="server">
        <section class="content">
            <br />
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header p-2">
                        <ul class="nav nav-pills">
                            <li class="nav-item tabsAssignment"><a class="nav-link active" href="#shift" data-toggle="tab">Shift</a></li>
                            <li class="nav-item tabsAssignment"><a class="nav-link" href="#Employment" data-toggle="tab">Employment</a></li>
                            <li class="nav-item tabsAssignment"><a class="nav-link" href="#Family" data-toggle="tab">Family</a></li>
                            <li class="nav-item tabsAssignment"><a class="nav-link" href="#Academic" data-toggle="tab">Academic</a></li>
                        </ul>
                    </div>

                    <div class="card-body">
                        <div class="tab-content">
                            <div class="tab-pane active" id="shift">
                                <div class="row">
                                    <div class="col-md-3">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane active" id="Employment">
                                <div class="row">
                                    <div class="col-md-3">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane active" id="Family">
                                <div class="row">
                                    <div class="col-md-3">
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane active" id="Academic">
                                <div class="row">
                                    <div class="col-md-3">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <button type="button" class="btn btn-outline-info btn-sm js-btnSave float-right" id="btnSave" onclick="#">Save
                        </button>
                    </div>
                </div>
            </div>
        </section>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
