<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProductRecordManagement.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/Lib/css/bootstrap.min.css"/>
</head>
<body style="background-color: #ffeb99;">
    <div class="container-fluid">
        <div class="row mt-5 mb-5">
            <div class="col-md-4">
                <!-- Content for the first column -->
            </div>
            <div class="col-md-4">
                <form id="form1" runat="server">
                    <div>
                        <div class="row"> 
                            <div class="col-md-4"> </div>
                            <div class="col-md-8">
                                <img src="../Assets/Images/icons8-user-100.png" alt="Product Image"/>
                            </div>
                           
                        </div>
                    </div>
                    <div class="nt-3">
                        <label for="userName" class="form-label">User Name</label>
                        <input type="text" id="UnameTb" name="userName" placeholder="User Name" autocomplete="off" class="form-control" />
                    </div>
                    <div class="nt-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" id="PasswordTb" name="password" placeholder="Password" autocomplete="off" class="form-control" />
                    </div>
                    <div class="nt-3 d-grid">
                        <asp:Button runat="server" Text="Login" CssClass="btn btn-success" style="background-color: black;" ID="LoginBtn" />

                    </div>
                </form>
            </div>
            <div class="col-md-4">
                <!-- Content for the second column -->
            </div>
        </div>
    </div>

</body>
</html>
