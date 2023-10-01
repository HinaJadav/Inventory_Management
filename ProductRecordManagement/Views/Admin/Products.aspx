<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="ProductRecordManagement.Views.Admin.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fuid">
        <div class="row">
            <div class="col">
                <h2 class="text-center">
                      Manage Products
                </h2><br /><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                     <label for="productTitle" class="form-label text-black">Products Title</label>
                     <input type="text" id="ProNameTb" runat="server" name="productTitle" placeholder="Title" autocomplete="off" class="form-control" /> 
                </div>
                <div class="mb-3">
                     <label for="productProducer" class="form-label text-black">Products Producer</label>
                    <asp:DropDownList ID="ProProducerCb" runat="server" class="form-control"></asp:DropDownList>
                </div>
                <div class="mb-3">
                     <label for="categories" class="form-label text-black">Categories</label>
                    <asp:DropDownList ID="ProCatCb" runat="server" class="form-control"></asp:DropDownList>
                
                </div>
                <div class="mb-3">
                     <label for="price" class="form-label text-black">Price</label>
                     <input type="text" id="PriceTb" runat="server" name="price" placeholder="Price" autocomplete="off" class="form-control" /> 
                </div>
                <div class="mb-3">
                     <label for="quantity" class="form-label text-black">Quantity</label>
                     <input type="text" id="QtyTb" runat="server" name="quantity" placeholder="Quantity" autocomplete="off" class="form-control" /> 
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
                <asp:GridView ID="ProductsList" runat="server" class="table table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ProductsList_SelectedIndexChanged">
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
