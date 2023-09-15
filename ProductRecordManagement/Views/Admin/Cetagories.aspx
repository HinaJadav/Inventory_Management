<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Cetagories.aspx.cs" Inherits="ProductRecordManagement.Views.Admin.Cetagories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
   <div class="container-fuid">
        <div class="row">
            <div class="col">
                <h3 class="text-center">
                    Manage Categories
                </h3>
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
                        <asp:Button runat="server" ID="UpdateBtn" Text="Update" CssClass="btn btn-success" style="background-color: darkslateblue;" OnClick="UpdateBtn_Click" />
                    </div>
                     <div class="col d-grid">
                         <asp:Button runat="server" ID="SaveBtn" Text="Save" CssClass="btn btn-success" style="background-color: forestgreen;" OnClick="SaveBtn_Click"/>
                     </div>
                     <div class="col d-grid">
                         <asp:Button runat="server" ID="DeleteBtn" Text="Delete" CssClass="btn btn-success" style="background-color: red;" OnClick="DeleteBtn_Click" />
                     </div>
                </div>
            </div>
            
            <div class="col-md-8">
                <asp:GridView ID="CategoriesList" runat="server" class="table table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="CategoriesList_SelectedIndexChanged">
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

