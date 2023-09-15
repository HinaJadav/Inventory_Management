<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Producer.aspx.cs" Inherits="ProductRecordManagement.Views.Admin.Producer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">  
     <div class="container-fuid">
         <div class="row">
             <div class="col">
                 <h3 class="text-center">
                     &nbsp;Manage Producers
                 </h3>
             </div>
         </div>
         <div class="row">
             <div class="col-md-4">
                 <div class="mb-3">
                      <label for="producerName" class="form-label" style="color:#664600">Producer Name</label>
                      <input type="text" id="PNameTb" name="producerName" placeholder="Name" autocomplete="off" class="form-control" runat="server"/> 
                 </div>
                 <div class="mb-3">
                     <label for="producerGender" class="form-label" style="color:#664600">Producer Gender</label>
                     
                     <asp:DropDownList ID="GenCb" runat="server" CssClass="form-control">
                         <asp:ListItem>Male</asp:ListItem>
                         <asp:ListItem>Female</asp:ListItem>
                     </asp:DropDownList>
                </div>
                 <div class="mb-3">
                      <label for="country" class="form-label" style="color:#664600">Country</label>
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
                         <asp:Button runat="server" ID="UpdateBtn"  Text="Update" class="btn btn-success btn-block" style="background-color: darkslateblue;" OnClick="UpdateBtn_Click" />
                     </div>
                      <div class="col d-grid">
                          <asp:Button runat="server" ID="SaveBtn"  Text="Save" class="btn btn-success btn-block" style="background-color: forestgreen;" OnClick="SaveBtn_Click"/>
                      </div>
                      <div class="col d-grid">
                          <asp:Button runat="server" ID="DeleteBtn"  Text="Delete" class="btn btn-success btn-block" style="background-color: red;" OnClick="DeleteBtn_Click" />
                      </div>

                 </div>
             </div>
             <div class="col-md-8">
                 <asp:GridView ID="ProducersList" runat="server" class="table table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="ProducersList_SelectedIndexChanged">
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

