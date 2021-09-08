<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="Shop_Online.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phHome" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div>

        <asp:ListView ID="ListView1" runat="server" DataKeyNames="MaSP" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FFFFFF;color: #284775;">
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="590px" ImageUrl='<%# Eval("Image", "images/{0}") %>' PostBackUrl='<%# Eval("MaSP", "ChiTietSanPham.aspx?MaSP={0}") %>' Width="505px" />
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# Eval("MaSP", "ChiTietSanPham.aspx?MaSP={0}") %>' Text='<%# Eval("TenSP", "Tên Sản Phẩm:{0}") %>'></asp:HyperLink>
                    <br />Tien:
                    <asp:Label ID="TienLabel" runat="server" Text='<%# Eval("Tien") %>' />
                    <br /><br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #999999;">MaSP:
                    <asp:Label ID="MaSPLabel1" runat="server" Text='<%# Eval("MaSP") %>' />
                    <br />TenSP:
                    <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                    <br />Tien:
                    <asp:TextBox ID="TienTextBox" runat="server" Text='<%# Bind("Tien") %>' />
                    <br />Image:
                    <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                    <br />MoTa:
                    <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                    <br />MaLoai:
                    <asp:TextBox ID="MaLoaiTextBox" runat="server" Text='<%# Bind("MaLoai") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">MaSP:
                    <asp:TextBox ID="MaSPTextBox" runat="server" Text='<%# Bind("MaSP") %>' />
                    <br />TenSP:
                    <asp:TextBox ID="TenSPTextBox" runat="server" Text='<%# Bind("TenSP") %>' />
                    <br />Tien:
                    <asp:TextBox ID="TienTextBox" runat="server" Text='<%# Bind("Tien") %>' />
                    <br />Image:
                    <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
                    <br />MoTa:
                    <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                    <br />MaLoai:
                    <asp:TextBox ID="MaLoaiTextBox" runat="server" Text='<%# Bind("MaLoai") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #E0FFFF;color: #333333;">
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="590px" ImageUrl='<%# Eval("Image", "images/{0}") %>' PostBackUrl='<%# Eval("MaSP", "ChiTietSanPham.aspx?MaSP={0}") %>' Width="505px" />
                    <br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("MaSP", "ChiTietSanPham.aspx?MaSP={0}") %>' Text='<%# Eval("TenSP", "Tên Sản Phẩm:{0}") %>'></asp:HyperLink>
                    <br />Tien:
                    <asp:Label ID="TienLabel" runat="server" Text='<%# Eval("Tien") %>' />
                    <br /><br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">MaSP:
                    <asp:Label ID="MaSPLabel" runat="server" Text='<%# Eval("MaSP") %>' />
                    <br />TenSP:
                    <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' />
                    <br />Tien:
                    <asp:Label ID="TienLabel" runat="server" Text='<%# Eval("Tien") %>' />
                    <br />Image:
                    <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                    <br />MoTa:
                    <asp:Label ID="MoTaLabel" runat="server" Text='<%# Eval("MoTa") %>' />
                    <br />MaLoai:
                    <asp:Label ID="MaLoaiLabel" runat="server" Text='<%# Eval("MaLoai") %>' />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [SanPham]"></asp:SqlDataSource>

    </div>
</asp:Content>
