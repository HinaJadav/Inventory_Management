<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="ProductRecordManagement.Views.Admin.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fuid">
        <div class="row">
            <div class="col">
                <h3 class="text-center">
                    Manage Products
                </h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                     <label for="productTitle" class="form-label text-black">Products Title</label>
                     <input type="text" id="productTitle" name="productTitle" placeholder="Title" autocomplete="off" class="form-control" /> 
                </div>
                <div class="mb-3">
                     <label for="productProducer" class="form-label text-black">Products Producer</label>
                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control"></asp:DropDownList>
                </div>
                <div class="mb-3">
                     <label for="categories" class="form-label text-black">Categories</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"></asp:DropDownList>
                
                </div>
                <div class="mb-3">
                     <label for="price" class="form-label text-black">Price</label>
                     <input type="text" id="price" name="price" placeholder="Price" autocomplete="off" class="form-control" /> 
                </div>
                <div class="mb-3">
                     <label for="quantity" class="form-label text-black">Quantity</label>
                     <input type="text" id="quantity" name="quantity" placeholder="Quantity" autocomplete="off" class="form-control" /> 
                </div>
                <div class="row">
                    <div class="col d-grid">
                        <asp:Button runat="server" Text="Update" CssClass="btn btn-success btn-block" style="background-color: darkslateblue;" />
                    </div>
                     <div class="col d-grid">
                         <asp:Button runat="server" Text="Save" CssClass="btn btn-success btn-block" style="background-color: forestgreen;" />
                     </div>
                     <div class="col d-grid">
                         <asp:Button runat="server" Text="Delete" CssClass="btn btn-success btn-block" style="background-color: red;" />
                     </div>

                </div>
            </div>
            <div class="col-md-8">
                <div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
