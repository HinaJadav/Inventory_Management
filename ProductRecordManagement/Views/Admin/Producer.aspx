<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Producer.aspx.cs" Inherits="ProductRecordManagement.Views.Admin.Producer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">  
     <div class="container-fuid">
         <div class="row">
             <div class="col">
                 <h2 class="text-center">
                     &nbsp;Manage Producers
                 </h2><br /><br />
             </div>
         </div>
         <div class="row">
             <div class="col-md-4">
                 <div class="mb-3">
                      <label for="producerName" class="form-label">Producer Name</label>
                      <input type="text" id="PNameTb" name="producerName" placeholder="Name" autocomplete="off" class="form-control" runat="server"/> 
                 </div>
                 <div class="mb-3">
                     <label for="producerGender" class="form-label">Producer Gender</label>
                     
                     <asp:DropDownList ID="GenCb" runat="server" CssClass="form-control">
                         <asp:ListItem>Male</asp:ListItem>
                         <asp:ListItem>Female</asp:ListItem>
                     </asp:DropDownList>
                </div>
                 <div class="mb-3">
                      <label for="country" class="form-label">Country</label>
                     <asp:DropDownList ID="CountryCb" runat="server" class="form-control">
                         <asp:ListItem>Contry Name</asp:ListItem>
                         <asp:ListItem>India</asp:ListItem>
                         <asp:ListItem>US</asp:ListItem>
                         <asp:ListItem>USA</asp:ListItem>
                         <asp:ListItem>Japan</asp:ListItem>
                         <asp:ListItem>Africa</asp:ListItem>
                         <asp:ListItem>Koria</asp:ListItem>
                     </asp:DropDownList> 
                 </div>
                 <div class="row">
                     <asp:Label runat="server" ID="ErrMsg" class="text-danger"></asp:Label>
                     <div class="col d-grid">
                         <asp:Button runat="server" ID="UpdateBtn"  Text="Update" class="btn btn-success btn-block" style="background-color: #2a2416;" OnClick="UpdateBtn_Click" />
                     </div>
                      <div class="col d-grid">
                          <asp:Button runat="server" ID="SaveBtn"  Text="Save" class="btn btn-success btn-block" style="background-color: #2a2416;" OnClick="SaveBtn_Click"/>
                      </div>
                      <div class="col d-grid">
                          <asp:Button runat="server" ID="DeleteBtn"  Text="Delete" class="btn btn-success btn-block" style="background-color: #2a2416;" OnClick="DeleteBtn_Click" />
                      </div>

                 </div>
             </div>
             <div class="col-md-8">
                 <asp:GridView ID="ProducersList" runat="server" class="table table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ProducersList_SelectedIndexChanged">
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

