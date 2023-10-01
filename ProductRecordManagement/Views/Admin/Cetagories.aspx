<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Cetagories.aspx.cs" Inherits="ProductRecordManagement.Views.Admin.Cetagories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
   <div class="container-fuid">
        <div class="row">
            <div class="col">
                <h2 class="text-center">
                    Manage Categories
                </h2><br /><br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                     <label for="CategoryName" class="form-label text-black">Category Name</label>
                     <input type="text" id="CatNameTb" name="CategoryName" placeholder="Category's Name" autocomplete="off" class="form-control" runat="server" /> 
                </div>
                 <div class="mb-3">
                     <label for="DescriptionTb" class="form-label text-black">Category</label>
                      <br />
                    <label for="DescriptionTb" class="form-label text-black">Category Description</label>
                    <input type="text" id="DescriptionTb" name="CategoryDescription" placeholder="Category Description" autocomplete="off" class="form-control" runat="server"/> 
               </div>
                <div class="row">
                    <asp:Label runat="server" ID="ErrMsg" CssClass="text-danger text-center"></asp:Label>
                    <div class="col d-grid">
                        <asp:Button runat="server" ID="UpdateBtn" Text="Update" CssClass="btn btn-success" style="background-color: #2a2416;" OnClick="UpdateBtn_Click" />
                    </div>
                     <div class="col d-grid">
                         <asp:Button runat="server" ID="SaveBtn" Text="Save" CssClass="btn btn-success" style="background-color: #2a2416;" OnClick="SaveBtn_Click"/>
                     </div>
                     <div class="col d-grid">
                         <asp:Button runat="server" ID="DeleteBtn" Text="Delete" CssClass="btn btn-success" style="background-color: #2a2416;" OnClick="DeleteBtn_Click" />
                     </div>
                </div>
            </div>
            
            <div class="col-md-8">
                <asp:GridView ID="CategoriesList" runat="server" class="table table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CategoriesList_SelectedIndexChanged">
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

