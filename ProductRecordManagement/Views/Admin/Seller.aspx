<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="ProductRecordManagement.Views.Admin.Seller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
       <div class="container-fuid">
        <div class="row">
            <div class="col">
                <h3 class="text-center">
                    Manage Sellers
                </h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                     <label for="SellerName" class="form-label text-black">Seller Name</label>
                     <input type="text" runat="server" id="SNameTb" name="SellerName" placeholder="Seller's Name" autocomplete="off" class="form-control" /> 
                </div>
                <div class="mb-3">
                     <label for="SellerEmail" class="form-label text-black">Seller Email</label>
                     <input type="text"  runat="server" id="EmailTb" name="SellerEmail" placeholder="Seller's Email" autocomplete="off" class="form-control" /> 
                </div>
                <div class="mb-3">
                     <label for="SellerPhone" class="form-label text-black">Phone No.</label>
                     <input type="text"  runat="server" id="PhoneTb" name="SellerPhone" placeholder="Seller's Phone No." autocomplete="off" class="form-control" /> 
                </div>
                <div class="mb-3">
                     <label for="SellerAddress" class="form-label text-black">Seller Address</label>
                     <input type="text"  runat="server" id="AddressTb" name="SellerAddress" placeholder="Seller's Address" autocomplete="off" class="form-control" /> 
                </div>
                <div class="row">
                    <asp:Label runat="server" ID="ErrMsg" CssClass="text-danger text-center"></asp:Label>
                    <div class="col d-grid">
                        <asp:Button runat="server" ID="UpdateBtn" Text="Update" CssClass="btn btn-success btn-block" style="background-color: darkslateblue;" OnClick="UpdateBtn_Click" />
                    </div>
                     <div class="col d-grid">
                         <asp:Button runat="server" ID="SaveBtn" Text="Save" CssClass="btn btn-success btn-block" style="background-color: forestgreen;" OnClick="SaveBtn_Click" />
                     </div>
                     <div class="col d-grid">
                         <asp:Button runat="server" ID="DeleteBtn" Text="Delete" CssClass="btn btn-success btn-block" style="background-color: red;" OnClick="DeleteBtn_Click" />
                     </div>

                </div>
            </div>
            <div class="col-md-8">
                <asp:GridView ID="SellersList" runat="server" class="table table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="SellersList_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#ffb61a" Font-Bold="True" ForeColor="Black" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" ForeColor="Navy" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
