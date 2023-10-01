<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/SellerMaster.Master" AutoEventWireup="true" CodeBehind="Selling.aspx.cs" Inherits="ProductRecordManagement.Views.Seller.Selling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function PrintBill() {
            var PGrid = document.getElementById('<%=BillList.ClientID %>');
            
            var PWin = window.open('', '', 'left=100,top=100,width=1024,height=768,toolbar=0,scrollbars=1,status=0,resizable=1');
            PWin.document.write('<html><head><title>Print Bill</title>');
            PWin.document.write('</head><body>');
            PWin.document.write(PGrid.outerHTML);
            PWin.document.write('</body></html>');
            PWin.document.close();
            setTimeout(function () {
                PWin.focus();
                PWin.print();
                PWin.close();
            }, 500);
            return false;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">

        </div>
        <div class="row">
            <div class="col-md-5">
                <h2 class="text-sucess text-center">Book Details</h2>
                <div class="row">
                    <div class="col">
                        <div class="mt-3">
                            <label for="productName" class="form-label">Product Name</label>
                            <input type="text" runat="server" id="productNameTb" name="productName" placeholder="Enter product name" autocomplete="off" class="form-control" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="mt-3">
                            <label for="productPrice" class="form-label">Price</label>
                            <input type="text" runat="server" id="priceTb" name="productPrice" class="form-control" />
                        </div>
                    </div>
                </div>
                <div class="row">
                     <div class="col">
                         <div class="mt-3">
                             <label for="productCategory" class="form-label">Category</label>
                             <input type="text" runat="server" id="productCategoryTb" name="productCategory" placeholder="Enter product's category" autocomplete="off" class="form-control" />
                         </div>
                     </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="mt-3"> 
                            <label for="productQuantity" class="form-label">Quantity</label>
                            <input type="text" runat="server" id="productQuantityTb" name="productQuantity" class="form-control" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="mt-3">
                            <label for="billing" class="form-label">Billing Date</label>
                            <input type="Date" runat="server" id="billingDateTb" name="billing" class="form-control" />
                        </div>
                    </div>
                    <div class="row mt-3 mb-3">
                        <div class="col d-grid">
                            
                            <asp:Button runat="server" ID="AddToBillTb" Text="AddToBill" CssClass="btn btn-success btn-block" style="background-color: #2a2416;" OnClick="AddToBillTb_Click" />
                        </div>
                    </div>
                </div>
                   <div class="row mt-5">
                        <h3 class="text-sucess text-center">Product List</h3>
                        <div class="col">
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
            <div class="col-md-7">
                <h3 class="text-sucess text-center">Client's bill</h3>
                <div class="col">
                    <asp:GridView ID="BillList" runat="server" class="table table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="BillList_SelectedIndexChanged">
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
                    <div class="d-grid">
                        <asp:Label runat="server" ID="BillTotalTb" CssClass="text-center text-danger"></asp:Label><br />
                        <asp:Button runat="server" ID="PrintBtn" Text="Print" Class="btn btn-success btn-block" OnClientClick="return PrintBill();" style="background-color: #661306;" OnClick="PrintBtn_Click" />
                    </div>
                </div>
            </div>
    </div>
        </div>
</asp:Content>
