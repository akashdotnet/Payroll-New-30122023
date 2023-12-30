<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Samples.Login" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Log in</title>
    <%: System.Web.Optimization.Styles.Render("~/bundles/logincss") %>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />  
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />     
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet" />
    <script>
        function rememberMe() {
            $.cookie('id', $('#signinId').val());
            $.cookie('pass', $('#signinPwd').val());
        }
    </script>
</head>
<body class="hold-transition login-page">
    <form id="form1" runat="server">
        <div class="login-box">
            <div class="login-logo">
                <a href="#"><b>Admin</b>HR</a>
            </div>
            <!-- /.login-logo -->
            <div class="card">
                <div class="card-body login-card-body">
                                                <asp:Label ID="Label1" runat="server"></asp:Label>

                    <div class="input-group mb-3">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="User name"></asp:TextBox>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-envelope"></span>
                            </div>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="TextBox1" ErrorMessage="*"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input-group mb-3">
                        <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" CssClass="form-control" placeholder="Password"></asp:TextBox>
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-lock"></span>
                            </div>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ControlToValidate="TextBox2" ErrorMessage="*"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="row">
                        <div class="col-8">
                            <div class="icheck-primary">
                                <input type="checkbox" id="remember" />
                                <label for="remember">
                                    Remember Me
             
                                </label>
                            </div>
                        </div>
                        <!-- /.col -->
                        <div class="col-4">
                            <asp:Button ID="Button1" runat="server" Text="Sign in" OnClick="Button1_Click" CssClass="btn btn-primary btn-block" />
                            
                            
                        </div>
                        <!-- /.col -->
                    </div>
                   <%-- <div class="social-auth-links text-center mb-3">
                        <p>- OR -</p>
                        <a href="#" class="btn btn-block btn-primary">
                            <i class="fab fa-facebook mr-2"></i>Sign in using Facebook
        </a>
                        <a href="#" class="btn btn-block btn-danger">
                            <i class="fab fa-google-plus mr-2"></i>Sign in using Google+
        </a>
                    </div>
                    <!-- /.social-auth-links -->

                    <p class="mb-1">
                        <a href="forgot-password.html">I forgot my password</a>
                    </p>
                    <p class="mb-0">
                        <a href="register.html" class="text-center">Register a new membership</a>
                    </p>--%>
                </div>
                <!-- /.login-card-body -->
            </div>
        </div>
    <%: System.Web.Optimization.Scripts.Render("~/bundles/loginjs") %>
    </form>
</body>
</html>

