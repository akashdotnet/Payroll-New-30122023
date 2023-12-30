<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NotFound.aspx.cs" Inherits="Samples.NotFound" MasterPageFile="~/Main.Master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <br />
    <section class="content">
      <div class="error-page">
        <h2 class="headline text-danger">500</h2>

        <div class="error-content">
          <h3><i class="fas fa-exclamation-triangle text-danger"></i> Oops! Something went wrong.</h3>
          <p>
            We will work on fixing that right away.
            Meanwhile, you may 
              <%--<a href="../../index.html">return to dashboard</a> or try using the search form.--%>
          </p>
        </div>
      </div>
      <!-- /.error-page -->

    </section>

    <section class="content">
      <div class="error-page">
        <h2 class="headline text-warning"> 404</h2>

        <div class="error-content">
          <h3><i class="fas fa-exclamation-triangle text-warning"></i> Oops! Page not found.</h3>

          <p>
            We could not find the page you were looking for.
            Meanwhile, you may <a runat="server" id="lnkDashboard">return to dashboard</a> or try using the search form.
          </p>

          <form class="search-form">
            <div class="input-group">
              <input type="text" name="search" class="form-control" placeholder="Search">

              <div class="input-group-append">
                <button type="submit" name="submit" class="btn btn-warning"><i class="fas fa-search"></i>
                </button>
              </div>
            </div>
            <!-- /.input-group -->
          </form>
        </div>
        <!-- /.error-content -->
      </div>
      <!-- /.error-page -->
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>