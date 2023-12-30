<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Greeting.aspx.cs" Inherits="Samples.Greeting" MasterPageFile="~/Main.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%: System.Web.Optimization.Styles.Render("~/bundles/greetingcss") %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <form id="form1" runat="server">
        <div>
            <!-- Main content -->
            <section class="content card-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card  card-outline">
                            <div class="card-header">
                                <h3 class="card-title">Compose New Message</h3>
                            </div>
                            <!-- /.card-header -->
                            <div class="card-body">
                                <div class="form-group">
                                    <input class="form-control" placeholder="To:" id="emailTO" type="email">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Subject:">
                                </div>
                                <div class="form-group">
                                    <textarea class='summernote' id='summernote' rows='10'></textarea>
                                </div>
                                <div class="form-group">
                                    <div class="btn btn-default btn-file">
                                        <i class="fas fa-paperclip"></i>Attachment                   
                                        <input type="file" name="attachment">
                                    </div>
                                </div>
                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer">
                                <div class="float-right">
                                    <button type="submit" class="btn btn-primary"><i class="far fa-envelope"></i>Send</button>
                                </div>
                                <button type="reset" class="btn btn-default"><i class="fas fa-times"></i>Discard</button>
                            </div>
                            <!-- /.card-footer -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>

                <!-- /.row -->
            </section>
            <!-- /.content -->
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: System.Web.Optimization.Scripts.Render("~/bundles/greetingjs") %>
    <script>
        var baseUrl = '<%= ConfigurationManager.AppSettings["baseUrl"]%>';
        $(function () {
            //Add text editor
            $('#summernote').summernote();
            $.ajax({
                url: baseUrl + 'Master/GetMaster',
                type: 'GET',
                async: false,
                success: function (data) {
                    var list = $.grep(data.EmployeeList, function (s) { return s.Birthday == 1 });
                    var emailList='';
                    if (list.length > 0) {
                        $.each(list, function (i, v) {if(v.Email)  emailList = emailList + v.Email +';'})
                        $('#emailTO').val(emailList);
                    }
                },
                error: function (request, message, error) {
                    hideModal();
                }
            });
        })

</script>
</asp:Content>

