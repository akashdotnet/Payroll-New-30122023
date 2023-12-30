<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Company.aspx.cs" Inherits="Samples.Master.Company"
    MasterPageFile="~/Main.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%: System.Web.Optimization.Scripts.Render("~/bundles/indiamapjs") %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <form method="post" id="CompanyInfo" enctype="multipart/form-data" runat="server">
        <section class="content">
            <div class="tab-pane fade show active card-body " id="custom-content-above-company" role="tabpanel" aria-labelledby="custom-content-above-profile-tab">
                <div class="row js-newCompanyHeader">
                    <div class="col-12 col-sm-6 col-md-2">
                        <button type="button" class="btn btn-outline-secondary btn-sm" onclick="CompanyModule.clearControl(false);">Add New Company</button>
                        <button type="button" class="btn btn-outline-secondary btn-sm js-btnGoToList hide" onclick="CompanyModule.goToCompanyList();">Go To List</button>
                    </div>
                    <div class="col-12 col-sm-6 col-md-1">
                    </div>
                    <div class="col-12 col-sm-6 col-md-8">
                    </div>
                    <div class="col-12 col-sm-6 col-md-1">
                        
                    </div>
                </div>
                <hr>
                <div class="js-dataTableSection">
                    <div class="row">
                        <div class="col-12 col-sm-6 col-md-4">
                            <div id="container" style="height: 500px; min-width: 100%; max-width: 800px; margin: 0 auto;"></div>
                        </div>
                        <div class="col-12 col-sm-6 col-md-8">
                            <div class="card" style="height: 500px;">
                                <div class="card-body">
                                    <div id="data"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="content js-companyEntrySection hide">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header p-2">
                                    <ul class="nav nav-pills">
                                        <li class="nav-item tabsCompany"><a class="nav-link active" href="#tabCompanyInformation" data-toggle="tab">Company Information</a></li>
                                        <li class="nav-item tabsCompany"><a class="nav-link" href="#tabLegalInformation" data-toggle="tab">Legal Information</a></li>
                                        <li class="nav-item tabsCompany"><a class="nav-link" href="#tabCompanySetting" data-toggle="tab">Company Setting</a></li>
                                        <li class="nav-item tabsCompany"><a class="nav-link" href="#tabComplianceInformation" data-toggle="tab">Compliance Information</a></li>
                                        <li class="nav-item tabsCompany"><a class="nav-link" href="#tabCompanyLogo" data-toggle="tab">Company Logo</a></li>

                                    </ul>
                                </div>
                                <div class="card-body">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tabCompanyInformation">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    Name
                        <asp:TextBox runat="server" ID="tbName" CssClass="form-control form-control-sm tbName" placeholder="Name"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    Short Name
                        <asp:TextBox runat="server" ID="tbShortName" CssClass="form-control form-control-sm " placeholder="Short Name"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    Fax #
                        <asp:TextBox runat="server" ID="tbFax" CssClass="form-control form-control-sm " placeholder="Fax #"></asp:TextBox>
                                                </div>
                                                <div class="col-md-3">
                                                    Address
                        <asp:TextBox ID="tbAddress" runat="server" CssClass="form-control form-control-sm " placeholder="Address"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <input type="hidden" id="hfCmId" />
                                                <input type="hidden" id="CompanyId" name="CompanyId" />
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    Email
                        <asp:TextBox runat="server" ID="tbEmail" CssClass="form-control form-control-sm " placeholder="Email"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    PhoneNo
                        <asp:TextBox runat="server" ID="tbPhoneNo" CssClass="form-control form-control-sm " placeholder="PhoneNo"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    Website
                        <asp:TextBox runat="server" ID="tbWebsite" CssClass="form-control form-control-sm " placeholder="Website"></asp:TextBox>
                                                </div>
                                                <div class="col-md-3">
                                                    PinCode
                        <asp:TextBox ID="tbPinCode" runat="server" CssClass="form-control form-control-sm " placeholder="PinCode"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    Location
                         <asp:DropDownList ID="ddlMasterLocation" runat="server" Width="100%" CssClass="form-control custom-select">
                         </asp:DropDownList>
                                                </div>
                                                <div class="col-md-3">
                                                    Country
                        <asp:DropDownList ID="ddlMasterCountry" runat="server" Width="100%" CssClass="form-control custom-select">
                        </asp:DropDownList>
                                                </div>
                                                <div class="col-md-3">
                                                    State
                        <asp:DropDownList ID="ddlMasterState" runat="server" Width="100%" CssClass="form-control custom-select">
                        </asp:DropDownList>
                                                </div>
                                                <div class="col-md-3">
                                                    City
                        <asp:TextBox ID="tbCity" runat="server" CssClass="form-control form-control-sm " placeholder="City"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="tabLegalInformation">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <input type="checkbox" name="sameascompany" value="sameascompany" style="width: 20px" />
                                                    Same as Company Information
                                                </div>
                                                <br />
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    Legal Name
                        <asp:TextBox runat="server" ID="tbLegalName" CssClass="form-control form-control-sm " placeholder="Name"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    Legal Short Name
                        <asp:TextBox runat="server" ID="tbLegalShortName" CssClass="form-control form-control-sm " placeholder="Legal Short Name"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    Legal Fax #
                        <asp:TextBox runat="server" ID="tbLegalFax" CssClass="form-control form-control-sm " placeholder="Legal Fax #"></asp:TextBox>
                                                </div>
                                                <div class="col-md-3">
                                                    Legal Address
                        <asp:TextBox ID="tbLegalAddress" runat="server" CssClass="form-control form-control-sm " placeholder="Legal Address"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    Email
                        <asp:TextBox runat="server" ID="tbLegalEmail" CssClass="form-control form-control-sm " placeholder="Email"></asp:TextBox>
                                                </div>
                                                <div class="col-md-3">
                                                    PhoneNo
                        <asp:TextBox runat="server" ID="tbLegalPhoneNo" CssClass="form-control form-control-sm " placeholder="PhoneNo1"></asp:TextBox>
                                                </div>
                                                <div class="col-md-3">
                                                    Website
                        <asp:TextBox runat="server" ID="tbLegalWebsite" CssClass="form-control form-control-sm " placeholder="Website"></asp:TextBox>
                                                </div>
                                                <div class="col-md-3">
                                                    PinCode
                        <asp:TextBox ID="tbLegalPinCode" runat="server" CssClass="form-control form-control-sm " placeholder="PinCode"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    Location
                        <asp:DropDownList ID="ddlLegalLocation" runat="server" Width="100%" CssClass="form-control custom-select">
                        </asp:DropDownList>
                                                </div>
                                                <div class="col-md-3">
                                                    Country
                        <asp:DropDownList ID="ddlLegalCountry" runat="server" Width="100%" CssClass="form-control custom-select">
                        </asp:DropDownList>
                                                </div>
                                                <div class="col-md-3">
                                                    State
                        <asp:DropDownList ID="ddlLegalState" runat="server" Width="100%" CssClass="form-control custom-select">
                        </asp:DropDownList>
                                                </div>
                                                <div class="col-md-3">
                                                    City
                        <asp:TextBox ID="tbLegalCity" runat="server" CssClass="form-control form-control-sm " placeholder="City"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="tabCompanySetting">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    Fiscal Year's First Month 
                        <asp:TextBox runat="server" ID="tbFiscalYear" CssClass="form-control form-control-sm " placeholder="Fiscal Year's First Month"></asp:TextBox>
                                                </div>
                                                <div class="col-md-3">
                                                    Tax Month
                        <asp:TextBox runat="server" ID="tbTaxMonth" CssClass="form-control form-control-sm " placeholder="Tax Month"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    Year
                        <asp:TextBox runat="server" ID="tbYear" CssClass="form-control form-control-sm " placeholder="Year"></asp:TextBox>
                                                </div>
                                                <div class="col-md-3">
                                                    Default Currency
                        <asp:TextBox ID="tbDefaultCurrency" runat="server" CssClass="form-control form-control-sm " placeholder="Default Currency"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    FEIN
                        <asp:TextBox runat="server" ID="tbFEIN" CssClass="form-control form-control-sm " placeholder="FEIN"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    No of Year Required
                        <asp:TextBox runat="server" ID="tbNoofYear" CssClass="form-control form-control-sm " placeholder="No of Year Required"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    SSN
                        <asp:TextBox runat="server" ID="tbSSN" CssClass="form-control form-control-sm " placeholder="SSN"></asp:TextBox>
                                                </div>
                                                <div class="col-md-3">
                                                    Payroll Monthly Start Date
                        <asp:TextBox ID="tbPayrollMonthlyStartDate" runat="server" CssClass="form-control form-control-sm js-datePicker" placeholder="Payroll Monthly Start Date"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    Start Date
                        <asp:TextBox runat="server" ID="tbStartDate" CssClass="form-control form-control-sm js-datePicker" placeholder="Start Date"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    End Date
                        <asp:TextBox runat="server" ID="tbEndDate" CssClass="form-control form-control-sm js-datePicker" placeholder="End Date"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                </div>
                                                <div class="col-md-3">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="tabComplianceInformation">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    EPF #
                        <asp:TextBox runat="server" ID="tbEPF" CssClass="form-control form-control-sm " placeholder="EPF #"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    ESIC #
                        <asp:TextBox runat="server" ID="tbESIC" CssClass="form-control form-control-sm " placeholder="ESIC #"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    PAN #
                        <asp:TextBox runat="server" ID="tbPAN" CssClass="form-control form-control-sm " placeholder="PAN #"></asp:TextBox>
                                                </div>
                                                <div class="col-md-3">
                                                    TAN #
                        <asp:TextBox ID="tbTAN" runat="server" CssClass="form-control form-control-sm " placeholder="TAN #"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    Premises Code # 
                        <asp:TextBox runat="server" ID="tbPremisesCode" CssClass="form-control form-control-sm " placeholder="Premises Code #"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    GST #
                        <asp:TextBox runat="server" ID="tbGST" CssClass="form-control form-control-sm " placeholder="GSTN #"></asp:TextBox>

                                                </div>
                                                <div class="col-md-3">
                                                    Service Tax #

                        <asp:TextBox runat="server" ID="tbServiceTax" CssClass="form-control form-control-sm " placeholder="Service Tax #"></asp:TextBox>
                                                </div>
                                                <div class="col-md-3">
                                                </div>
                                            </div>

                                        </div>
                                        <div class="tab-pane" id="tabCompanyLogo">
                                            <div class="row">
                                                <div class="col-md-3">
                                                    Upload Company Logo
                        <input type="file" id="Path" class="form-control" name="file" onchange="onFileSelected(event)" placeholder="Select Photo">
                                                    <input type="hidden" class="form-control" id="imagePath" name="imagePath">
                                                </div>
                                                <div class="col-md-3">
                                                    <div style="height: 200px;">
                                                        <div style="width: 150px; height: 150px;" class="col-lg-offset-4" id="logoimage">
                                                            <img id="limage" class="img-thumbnail" onload="LoadImage(this);" />
                                                        </div>
                                                        <div style="width: 150px; height: 150px;" class="col-lg-offset-4" id="logoid">
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-md-3">
                                                </div>
                                                <div class="col-md-3">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <div class="row">
                                        <div class="col-md-11">
                                        </div>
                                        <div class="col-md-1">
                                            <button type="button" class="btn btn-success btn-sm hide float-right"  id="btnSave" onclick="CompanyModule.saveCompany();"><i class="fas fa-share"></i> Save <i class="fa fa-spinner fa-spin spinner"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <br />
                <%--    <div class="card js-gridSection">
                    <div class="card-body">
                        <div id="data"></div>
                    </div>
                </div>--%>
            </div>
        </section>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%--<script src="../alert.js"></script>--%>
    <script type="text/javascript">
        var baseUrl = '<%= ConfigurationManager.AppSettings["baseUrl"]%>';
        var PLEASESELECT = '--Select--';
        var d = '#FeaturedContent_';
        var tbLegalName = $(d + 'tbLegalName');
        var tbLegalShortName = $(d + 'tbLegalShortName');
        var tbLegalFax = $(d + 'tbLegalFax');
        var tbLegalEmail = $(d + 'tbLegalEmail');
        var tbLegalPhoneNo = $(d + 'tbLegalPhoneNo');
        var tbLegalWebsite = $(d + 'tbLegalWebsite');
        var tbLegalPinCode = $(d + 'tbLegalPinCode');
        var ddLegallLocation = $(d + 'ddlLegalLocation');
        var ddlLegalCountry = $(d + 'ddlLegalCountry');
        var ddlLegalState = $(d + 'ddlLegalState');
        var tbLegalCity = $(d + 'tbLegalCity');
        var btnSave = $("#btnSave");

        $(function () {
            showModal();
            loadMasters();
            CompanyModule.loadCompany();
            var masterLocation = $("#FeaturedContent_ddlMasterLocation,#FeaturedContent_ddlLegalLocation");  //010  
            bindMasterDropDownList(masterLocation, '010', MASTERLIST);
            hideModal();
            $('input[name=sameascompany]').click(function () {
                tbLegalName.val('');
                tbLegalShortName.val('');
                tbLegalFax.val('');
                tbLegalEmail.val('');
                tbLegalPhoneNo.val('');
                tbLegalWebsite.val('');
                tbLegalPinCode.val('');
                tbLegalCity.val('');
                ddLegallLocation.val('0');
                ddlLegalCountry.val('0');
                ddlLegalState.val('0');
                var id = '#FeaturedContent';
                if ($("input[name=sameascompany]:checked").is(':checked')) {
                    tbLegalName.val($(d + 'tbName').val());
                    tbLegalShortName.val($(d + 'tbShortName').val());
                    tbLegalFax.val($(d + 'tbFax').val());
                    tbLegalEmail.val($(d + 'tbEmail').val());
                    tbLegalPhoneNo.val($(d + 'tbPhoneNo').val());
                    tbLegalWebsite.val($(d + 'tbWebsite').val());
                    tbLegalPinCode.val($(d + 'tbPinCode').val());
                    tbLegalCity.val($(d + 'tbCity').val());
                    ddLegallLocation.val($(d + 'ddlMasterLocation').val());
                    ddlLegalCountry.val($(d + 'ddlMasterCountry').val());
                    ddlLegalState.val($(d + 'ddlMasterState').val());
                }
            });
            
        });


        var _loadIndiaMap = function (result) {
            debugger
            var data = [
           ['in-py', $.grep(result, function (s) { return s.State == "27" }).length],
           ['in-ld', $.grep(result, function (s) { return s.State == "19" }).length],
           ['in-wb', $.grep(result, function (s) { return s.State == "36" }).length],
           ['in-or', $.grep(result, function (s) { return s.State == "26" }).length],
           ['in-br', $.grep(result, function (s) { return s.State == "5" }).length],
           ['in-sk', $.grep(result, function (s) { return s.State == "30" }).length],
           ['in-ct', $.grep(result, function (s) { return s.State == "7" }).length],
           ['in-tn', $.grep(result, function (s) { return s.State == "31" }).length],
           ['in-mp', $.grep(result, function (s) { return s.State == "20" }).length],
           ['in-2984', $.grep(result, function (s) { return s.State == "12" }).length],
           ['in-ga', $.grep(result, function (s) { return s.State == "11" }).length],
           ['in-nl', $.grep(result, function (s) { return s.State == "25" }).length],
           ['in-mn', $.grep(result, function (s) { return s.State == "22" }).length],
           ['in-ar', $.grep(result, function (s) { return s.State == "3" }).length],
           ['in-mz', $.grep(result, function (s) { return s.State == "24" }).length],
           ['in-tr', $.grep(result, function (s) { return s.State == "33" }).length],
           ['in-3464', $.grep(result, function (s) { return s.State == "1" }).length],
           ['in-dl', $.grep(result, function (s) { return s.State == "10" }).length],
           ['in-hr', $.grep(result, function (s) { return s.State == "13" }).length],
           ['in-ch', $.grep(result, function (s) { return s.State == "6" }).length],
           ['in-hp', $.grep(result, function (s) { return s.State == "14" }).length],
           ['in-jk', $.grep(result, function (s) { return s.State == "15" }).length],
           ['in-kl', $.grep(result, function (s) { return s.State == "18" }).length],
           ['in-ka', $.grep(result, function (s) { return s.State == "17" }).length],
           ['in-dn', $.grep(result, function (s) { return s.State == "8" }).length],
           ['in-mh', $.grep(result, function (s) { return s.State == "21" }).length],
           ['in-as', $.grep(result, function (s) { return s.State == "4" }).length],
           ['in-ap', $.grep(result, function (s) { return s.State == "2" }).length],
           ['in-ml', $.grep(result, function (s) { return s.State == "23" }).length],
           ['in-pb', $.grep(result, function (s) { return s.State == "28" }).length],
           ['in-rj', $.grep(result, function (s) { return s.State == "29" }).length],
           ['in-up', $.grep(result, function (s) { return s.State == "35" }).length],
           ['in-ut', $.grep(result, function (s) { return s.State == "34" }).length],
           ['in-jh', $.grep(result, function (s) { return s.State == "16" }).length]
            ];
            // Create the chart
            highChartIndiaMap('State Company', 'container', 'State', data);

            //1	Andaman & Nicobar Islands
            //2	Andhra Pradesh
            //3	Arunachal Pradesh
            //4	Assam
            //5	Bihar
            //6	Chandigarh
            //7	Chhattisgarh
            //8	Dadra & Nagar Haveli
            //9	Daman & Diu
            //10	Delhi
            //11	Goa
            //12	Gujarat
            //13	Haryana
            //14	Himachal Pradesh
            //15	Jammu and Kashmir
            //16	Jharkhand
            //17	Karnataka
            //18	Kerala
            //19	Lakshadweep
            //20	Madhya Pradesh
            //21	Maharashtra
            //22	Manipur
            //23	Meghalaya
            //24	Mizoram
            //25	Nagaland
            //26	Odisha
            //27	Puducherry
            //28	Punjab
            //29	Rajasthan
            //30	Sikkim
            //31	Tamil Nadu
            //32	Telangana
            //33	Tripura
            //34	Uttarkhand
            //35	Uttar Pradesh
            //36	West Bengal

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

        var CompanyModule = (function () {
            var loadCompany = function () {
                $.ajax({
                    url: baseUrl + 'Company',
                    type: 'GET'
                }).done(function (data, textStatus, xhr) {
                    var divData = $("#data");
                    var masterCountry = $("#FeaturedContent_ddlMasterCountry,#FeaturedContent_ddlLegalCountry");  //010  
                    var masterState = $("#FeaturedContent_ddlMasterState,#FeaturedContent_ddlLegalState");  //010  
                    masterCountry.html('');
                    masterState.html('');
                    masterCountry.append($("<option></option>").val('0').html(PLEASESELECT));
                    masterState.append($("<option></option>").val('0').html(PLEASESELECT));
                    $.grep(data.Load_Country, function (n, i) {
                        masterCountry.append($("<option></option>").val(n.Country_Id).html(n.Country_Name));
                    });
                    $.grep(data.Load_State, function (n, i) {
                        masterState.append($("<option></option>").val(n.StateID).html(n.StateName));
                    });

                    divData.html("");
                    if (data.Count > 0) {
                        divData.append(data.Html);
                        $("#CompanyDataTable").DataTable();
                        $("#dvNoRecords").hide();
                    }
                    else {
                        divData.html('');
                        $("#dvNoRecords").show();
                    }
                    if (data.List.length > 0) {
                       // data.List[0].State;
                        _loadIndiaMap(data.List);
                    }
                   
                    hideModal();
                }).fail(function (jqXHR, textStatus) {
                    hideModal();
                }).always(function () {

                });
            }

            var saveCompany = function () {
                var d = '#FeaturedContent_';
                var tbName = $('.tbName');
                if (tbName.val().trim() === '') {
                    tbName.addClass('add-error');
                    $('.tabsCompany').find('a').removeClass('active');
                    $(document).scrollTop($("#CompanyInfo").offset().top);
                    $($('.tabsCompany')[0]).find('a').trigger('click');
                    return false;
                }
                showModal();
                tbName.removeClass('add-error');
                var tbShortName = $(d + 'tbShortName').val();
                var tbFax = $(d + 'tbFax').val();
                var tbAddress = $(d + 'tbAddress').val();
                var tbEmail = $(d + 'tbEmail').val();
                var tbPhoneNo = $(d + 'tbPhoneNo').val();
                var tbWebsite = $(d + 'tbWebsite').val();
                var tbPinCode = $(d + 'tbPinCode').val();

                var ddlMasterLocation = $(d + 'ddlMasterLocation option:selected').val() == PLEASESELECT
                         ? 0 : $(d + 'ddlMasterLocation option:selected').val();
                var ddlMasterCountry = $(d + 'ddlMasterCountry option:selected').val() == PLEASESELECT
                         ? 0 : $(d + 'ddlMasterCountry option:selected').val();
                var ddlMasterState = $(d + 'ddlMasterState option:selected').val() == PLEASESELECT
                         ? 0 : $(d + 'ddlMasterState option:selected').val();
                var tbCity = $(d + 'tbCity').val();
                var tbLegalName = $(d + 'tbLegalName').val();
                var tbLegalShortName = $(d + 'tbLegalShortName').val();
                var tbLegalFax = $(d + 'tbLegalFax').val();
                var tbLegalEmail = $(d + 'tbLegalEmail').val();
                var tbLegalPhoneNo = $(d + 'tbLegalPhoneNo').val();
                var tbLegalWebsite = $(d + 'tbLegalWebsite').val();
                var tbLegalPinCode = $(d + 'tbLegalPinCode').val();
                var ddLegallLocation = $(d + 'ddlLegalLocation option:selected').val() == PLEASESELECT
                         ? 0 : $(d + 'ddlLegalLocation option:selected').val();
                var ddLegallCountry = $(d + 'ddlLegalCountry option:selected').val() == PLEASESELECT
                         ? 0 : $(d + 'ddlLegalCountry option:selected').val();
                var ddLegallState = $(d + 'ddlLegalState option:selected').val() == PLEASESELECT
                        ? 0 : $(d + 'ddlLegalState option:selected').val();
                var tbLegalCity = $(d + 'tbLegalCity').val();
                var tbFiscalYear = $(d + 'tbFiscalYear').val();
                var tbTaxMonth = $(d + 'tbTaxMonth').val();
                var tbYear = $(d + 'tbYear').val();
                var tbDefaultCurrency = $(d + 'tbDefaultCurrency').val();
                var tbFEIN = $(d + 'tbFEIN').val();
                var tbNoofYear = $(d + 'tbNoofYear').val();
                var tbSSN = $(d + 'tbSSN').val();
                var tbPayrollMonthlyStartDate = $(d + 'tbPayrollMonthlyStartDate').val();
                var tbStartDate = $(d + 'tbStartDate').val();
                var tbEndDate = $(d + 'tbEndDate').val();
                var tbEPF = $(d + 'tbEPF').val();
                var tbESIC = $(d + 'tbESIC').val();
                var tbPAN = $(d + 'tbPAN').val();
                var tbTAN = $(d + 'tbTAN').val();
                var tbPremisesCode = $(d + 'tbPremisesCode').val();
                var tbGST = $(d + 'tbGST').val();
                var tbServiceTax = $(d + 'tbServiceTax').val();
                var CompanyMaster = new Object();
                CompanyMaster.LocID = ddlMasterLocation;
                CompanyMaster.AssoID = null;
                CompanyMaster.Name = tbName.val().trim();
                CompanyMaster.DisplayName = $(d + 'tbShortName').val();
                CompanyMaster.Abbrv = $(d + 'tbShortName').val();
                CompanyMaster.Address = $(d + 'tbAddress').val();
                CompanyMaster.City = $(d + 'tbCity').val();
                CompanyMaster.Zip = $(d + 'tbPinCode').val();
                CompanyMaster.State = ddlMasterState;
                CompanyMaster.CountryID = ddlMasterCountry;
                CompanyMaster.PhoneNo1 = tbPhoneNo;
                CompanyMaster.PhoneNo2 = tbPhoneNo;
                CompanyMaster.PhoneNo3 = tbPhoneNo;
                CompanyMaster.Fax = $(d + 'tbFax').val();
                CompanyMaster.Email = $(d + 'tbEmail').val();
                CompanyMaster.WebURL = tbWebsite;
                CompanyMaster.LegalName = $(d + 'tbLegalName').val();
                CompanyMaster.LegalShortName = $(d + 'tbLegalShortName').val();
                CompanyMaster.LegalFax = $(d + 'tbLegalFax').val();
                CompanyMaster.LegalAddress = $(d + 'tbLegalAddress').val();
                CompanyMaster.LegalEmail = $(d + 'tbLegalEmail').val();
                CompanyMaster.LegalPhone = tbLegalPhoneNo;
                CompanyMaster.LegalWebsite = $(d + 'tbLegalWebsite').val();
                CompanyMaster.LegalPincode = $(d + 'tbLegalPinCode').val();
                CompanyMaster.LegalLocationId = ddLegallLocation;
                CompanyMaster.LegalCountryId = ddLegallCountry;
                CompanyMaster.LegalStateId = ddLegallState;
                CompanyMaster.LegalCityId = $(d + 'tbLegalCity').val();
                CompanyMaster.CityId = $(d + 'tbCityId').val();
                CompanyMaster.StateId = $(d + 'tbStateId').val();
                CompanyMaster.FiscalYearMonth = $(d + 'tbFiscalYear').val();
                CompanyMaster.Year = $(d + 'tbYear').val();
                CompanyMaster.TaxMonth = $(d + 'tbTaxMonth').val();
                CompanyMaster.NoofYear = $(d + 'tbNoofYear').val();
                CompanyMaster.Fein = tbFEIN;
                CompanyMaster.Ssn = tbSSN;
                CompanyMaster.PayrollStartDate = tbPayrollMonthlyStartDate == "" ? null : tbPayrollMonthlyStartDate;
                CompanyMaster.StartDate = tbStartDate == "" ? null : tbStartDate;
                CompanyMaster.Enddate = tbEndDate == "" ? null : tbEndDate;
                CompanyMaster.EPF = tbEPF;
                CompanyMaster.ESIC = tbESIC;
                CompanyMaster.PAN = tbPAN;
                CompanyMaster.TAN = tbTAN;
                CompanyMaster.PREMISES = tbPremisesCode;
                CompanyMaster.GST = tbGST;
                CompanyMaster.ServiceTax = tbServiceTax;
                CompanyMaster.DefaultCurrency = tbDefaultCurrency;
                if ($("#btnSave").text() == 'Update') {
                    CompanyMaster.StatementType = "Update";
                    CompanyMaster.pRowID = $("#hfCmId").val();
                    _addOrUpdate('Update', CompanyMaster);
                }
                else {
                    CompanyMaster.pRowID = Math.floor(1000000000 + Math.random() * 9000000000);
                    CompanyMaster.StatementType = "Insert";
                    _addOrUpdate('Save', CompanyMaster);
                }
            };

            var clearControl = function (fromSaveUpdate) {
                $("#hfCmId").val("");
                $("input,select").removeClass("add-error");
                $("input").val("");
                $("select").val('0');
                $('select[name$="CompanyDataTable_length"]').val('10');
                btnSave.text("Save").show();

                if (!fromSaveUpdate) {
                    $('.js-btnGoToList').show();
                    $('.js-companyEntrySection').show();
                    // $('.js-gridSection').hide();
                    $('.js-dataTableSection').hide();
                }
                else {
                    $('.js-btnGoToList').hide();
                    $('.js-companyEntrySection').hide();
                    //  $('.js-gridSection').show();
                    $('.js-dataTableSection').show();
                }
            };

            var _addOrUpdate = function (operation, CompanyMaster) {
                $.ajax({
                    url: baseUrl + 'Company',
                    type: 'POST',
                    contentType:
                       "application/json;charset=utf-8",
                    data: JSON.stringify(CompanyMaster),
                    success: function (response) {
                        CompanyModule.loadCompany();
                        var message = $("#btnSave").text() === 'Save' ? "Company Master Saved" : "Company Master updated";
                        showNotification(message, message, 'success');
                        CompanyModule.clearControl(true);
                        hideModal();
                    },
                    error: function (request, message, error) {
                        // handleException(request, message, error);
                        showNotification(message, error, 'danger');
                    }
                });
            };

            var RowDelete = function (e) {
                var id = $(e).attr("data-id")
                try {
                    if (!confirm("Do You Want To Delete")) {
                        return false;
                    }
                    showModal();;
                    $.ajax({
                        url: baseUrl + 'Company/' + id,
                        type: 'DELETE',
                        success: function (info) {
                            CompanyModule.loadCompany();
                            $("#btnSave").text("Save");
                            CompanyModule.showNotification("Company deleted", info.Html, 'success');
                            hideModal();
                        },
                        error: function (request, message, error) {
                            hideModal();
                        }
                    });
                }
                catch (Ex) {

                }
            }

            var getRowVal = function (e) {

                var id = $(e).attr("data-id")
                $("#hfCmId").val(id);
                showModal();
                $.ajax({
                    url: baseUrl + 'Company/' + id,
                    type: 'GET',
                    success: function (data) {
                        btnSave.text("Update").show();
                        var obj = data.dtCompanyMasterGet[0];
                        $("#hfCmId").val(obj.pRowID)
                        var d = '#FeaturedContent_';
                        $(d + 'tbName').val(obj.Name);
                        $(d + 'tbShortName').val(obj.DisplayName);
                        $(d + 'tbFax').val(obj.Fax);
                        $(d + 'tbAddress').val(obj.Address);
                        $(d + 'tbEmail').val(obj.Email);
                        $(d + 'tbPhoneNo').val(obj.PhoneNo1);
                        $(d + 'tbWebsite').val(obj.WebURL);
                        $(d + 'tbPinCode').val(obj.Zip);
                        $(d + 'tbCity').val(obj.City);
                        $(d + 'ddlMasterLocation').val(obj.LocID)
                        $(d + 'ddlMasterCountry').val(obj.CountryID === null ? obj.CountryID : obj.CountryID.trim());
                        $(d + 'ddlMasterState').val(obj.State === null ? obj.State : obj.State.trim());


                        //Legal Information
                        tbLegalName.val(obj.LegalName);
                        tbLegalShortName.val(obj.LegalShortName);
                        tbLegalFax.val(obj.LegalFax);
                        tbLegalEmail.val(obj.LegalEmail);
                        tbLegalPhoneNo.val(obj.LegalPhone);
                        tbLegalWebsite.val(obj.LegalWebsite);
                        tbLegalPinCode.val(obj.LegalPincode);
                        ddLegallLocation.val(obj.LegalLocationId);
                        ddlLegalCountry.val(obj.LegalCountryId === null ? obj.LegalCountryId : obj.LegalCountryId.trim());
                        ddlLegalState.val(obj.LegalStateId === null ? obj.LegalStateId : obj.LegalStateId.trim());
                        tbLegalCity.val(obj.LegalCityId);


                        $(d + 'tbFiscalYear').val(obj.FiscalYearMonth);
                        $(d + 'tbTaxMonth').val(obj.TaxMonth);
                        $(d + 'tbYear').val(obj.Year);
                        $(d + 'tbDefaultCurrency').val(obj.DefaultCurrency);
                        $(d + 'tbFEIN').val(obj.Fein);
                        $(d + 'tbNoofYear').val(obj.NoofYear);
                        $(d + 'tbSSN').val(obj.Ssn);
                        $(d + 'tbPayrollMonthlyStartDate').datepicker('setDate', CompanyModule.setDate(obj.PayrollStartDate));
                        $(d + 'tbStartDate').datepicker('setDate', CompanyModule.setDate(obj.StartDate));
                        $(d + 'tbEndDate').datepicker('setDate', CompanyModule.setDate(obj.Enddate));
                        $(d + 'tbEPF').val(obj.EPF);
                        $(d + 'tbESIC').val(obj.ESIC);
                        $(d + 'tbPAN').val(obj.PAN);
                        $(d + 'tbTAN').val(obj.TAN);
                        $(d + 'tbPremisesCode').val(obj.PREMISES);
                        $(d + 'tbGST').val(obj.GST);
                        $(d + 'tbServiceTax').val(obj.SERVICETAX);

                        $('.js-dataTableSection').hide();
                        $('.js-btnGoToList').show();
                        $('.js-companyEntrySection').show();
                        hideModal();
                    },
                    error: function (request, message, error) {
                        hideModal();
                    }
                });
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

            var goToCompanyList = function () {
                $('.js-dataTableSection').show();
                $('.js-btnGoToList').hide();
                $('.js-companyEntrySection').hide();
                //$('.js-gridSection').show();
                $('select[name$="CompanyDataTable_length"]').val('10');
            };

            return {
                saveCompany: saveCompany,
                getRowVal: getRowVal,
                RowDelete: RowDelete,
                loadCompany: loadCompany,
                clearControl: clearControl,
                showNotification: showNotification,
                setDate: setDate,
                goToCompanyList: goToCompanyList
            };
        })();

        var highChartIndiaMap = function (text, id, name, result) {
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
    </script>

</asp:Content>
