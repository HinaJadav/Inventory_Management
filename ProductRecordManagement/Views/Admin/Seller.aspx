<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="ProductRecordManagement.Views.Admin.Seller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
       <div class="container-fuid">
        <div class="row">
            <div class="col">
                <h2 class="text-center">
                    Manage Sellers
                </h2><br /><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                     <label for="SellerName" class="form-label text-black">Name</label>
                     <input type="text" runat="server" id="SNameTb" name="SellerName" placeholder="Seller's Name" autocomplete="off" class="form-control" /> 
                </div>
                <div class="mb-3">
                     <label for="SellerEmail" class="form-label text-black">Email</label>
                     <input type="text"  runat="server" id="EmailTb" name="SellerEmail" placeholder="Seller's Email" autocomplete="off" class="form-control" /> 
                </div>
                <div class="mb-3">
                     <label for="SellerPhone" class="form-label text-black">Phone No.</label>
                     <input type="text"  runat="server" id="PhoneTb" name="SellerPhone" placeholder="Seller's Phone No." autocomplete="off" class="form-control" /> 
                </div>
                <div class="mb-3">
                     <label for="SellerPassword" class="form-label text-black" id="PasswordTb">Password</label>
                     <input type="password" runat="server" id="PasswordTb" name="password" placeholder="Password" autocomplete="off" class="form-control" />
                </div>
                <div class="row">
                    <asp:Label runat="server" ID="ErrMsg" CssClass="text-danger text-center"></asp:Label>
                    <div class="col d-grid">
                        <asp:Button runat="server" ID="UpdateBtn" Text="Update" CssClass="btn btn-success btn-block" style="background-color: #2a2416;" OnClick="UpdateBtn_Click" />
                    </div>
                     <div class="col d-grid">
                         <asp:Button runat="server" ID="SaveBtn" Text="Save" CssClass="btn btn-success btn-block" style="background-color: #2a2416;" OnClick="SaveBtn_Click" />
                     </div>
                     <div class="col d-grid">
                         <asp:Button runat="server" ID="DeleteBtn" Text="Delete" CssClass="btn btn-success btn-block" style="background-color: #2a2416;" OnClick="DeleteBtn_Click" />
                     </div>

                </div>
            </div>
            <div class="col-md-8">
                <asp:GridView ID="SellersList" runat="server" class="table table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="SellersList_SelectedIndexChanged">
                   <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#8b7648" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#8b7648" Font-Bold="True" ForeColor="White"/>
                    <PagerStyle BackColor="#8b7648" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#e7e0d1" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#a58c56" ForeColor="Navy" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#e7e0d1" />
                    <SortedAscendingHeaderStyle BackColor="#8b7648" />
                    <SortedDescendingCellStyle BackColor="#e7e0d1" />
                    <SortedDescendingHeaderStyle BackColor="#8b7648" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
