<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Commision_Breackup.Test" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CB Login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet"/>

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet"/>
</head>
<body class="bg-gradient-primary">
    <form id="form1" runat="server">
        <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                    </div>
                                    <form class="user">
                                        <div class="form-group">
                                            <%--<input type="email" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="Enter Email Address..."/>--%>
                                     <asp:TextBox ID="TextBox1" class="form-control form-control-user" runat="server" placeholder="Enter Email Address..."></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <%--<input type="password" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="Password"/>--%>
                                        <asp:TextBox ID="TextBox2" class="form-control form-control-user" runat="server" placeholder="Password"></asp:TextBox>

                                        </div>
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox small">
                                                <input type="checkbox" class="custom-control-input" id="customCheck"/>
                                                <label class="custom-control-label" for="customCheck">Remember
                                                    Me</label>
                                            </div>
                                        </div>
                                       <%-- <a href="Main.Master" class="btn btn-primary btn-user btn-block">
                                            Login
                                        </a>--%>
                                               <asp:Button ID="Button1" class="btn btn-primary btn-user btn-block" runat="server" Text="Login" OnClick="Button1_Click" />
                                        <hr>
                                    </form>
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="forgot-password.html">Forgot Password?</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="register.html">Create an Account!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    </form>
</body>
</html>
