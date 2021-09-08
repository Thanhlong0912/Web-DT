<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="Shop_Online.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phHome" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="container">
        <div style="text-align:center">
                    <asp:GridView ID="QLGioHang" runat="server" AllowSorting="True" AutoGenerateColumns="False" ShowFooter="true"
                        CellPadding="4" DataKeyNames="MaSANPHAM" DataSourceID="DataGioHang" ForeColor="#333333" GridLines="None" Width="100%" AllowPaging="True" 
                        PageSize="10" OnRowDataBound="QLGioHang_RowDataBound">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>                
                            <asp:TemplateField HeaderText="Mã SP" InsertVisible="False">
                                <EditItemTemplate>
                                    <asp:Label ID="lblMaSP" runat="server" Text='<%# Eval("MaSANPHAM", "{0}") %>' Font-Bold="True"></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbMaSP" runat="server" Text='<%# Eval("MaSANPHAM", "{0}") %>' Font-Bold="True"></asp:Label>
                                </ItemTemplate>  
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tên SP">
                                <EditItemTemplate>
                                   <asp:Label ID="lblTenSP" runat="server" Text='<%# Bind("TenSP", "{0}") %>' Width="200px"></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbTenSP" runat="server" Text='<%# Bind("TenSP", "{0}") %>' Width="200px"></asp:Label>
                                </ItemTemplate>                                            
                            </asp:TemplateField>    
                            <asp:TemplateField HeaderText="Hình Ảnh">
                                <EditItemTemplate>
                                    <asp:Image ID="imageSP" runat="server" ImageUrl='<%# Eval("Image", "images/{0}") %>' Width="100px" Height="100px"/>                        
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="imageSP" runat="server" ImageUrl='<%# Eval("Image", "images/{0}") %>' Width="100px" Height="100px"/>                        
                                </ItemTemplate>                    
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Giá">
                                <EditItemTemplate>
                                    <asp:Label ID="lblGiaBan" runat="server" Text='<%# Eval("Tien", "{0}") %>' Width="75px"></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblGia" runat="server" Text='<%# Eval("Tien", "{0}") %>' Width="75px"></asp:Label>
                                </ItemTemplate>                      
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Số Lượng">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Bind("SoLuong", "{0}") %>' Width="75px" TextMode="Number" min="1" ForeColor="Black"></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblSoLuong" runat="server" Text='<%# Eval("SoLuong", "{0}") %>' Width="75px"></asp:Label>
                                </ItemTemplate>                                                                     
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tổng">
                                <EditItemTemplate>
                                    <asp:Label ID="lblTong" runat="server" Visible="False" Text='<%# Eval("TongTien", "{0}") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTong" runat="server" Text='<%# Eval("TongTien", "{0}") %>'></asp:Label>
                                </ItemTemplate>
                                <FooterTemplate>
                                    <b>Tổng tiền: </b>
                                    <asp:Label ID="lbltt" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
                                </FooterTemplate>                                
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">                                
                                <EditItemTemplate>
                                    <asp:ImageButton ID="btnCapNhat" runat="server" CausesValidation="True" CommandName="Update" ImageUrl="~/images/check2-circle.svg" ForeColor="White" OnClick="btnCapNhat_Click"></asp:ImageButton>
                                    &nbsp;<asp:ImageButton ID="btnQuayLai" runat="server" CausesValidation="False" CommandName="Cancel" ImageUrl="~/images/x-circle.svg"></asp:ImageButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:ImageButton ID="btnChinhSua" runat="server" CausesValidation="False" CommandName="Edit" ImageUrl="~/images/edit.png"></asp:ImageButton>
                                    &nbsp;<asp:ImageButton ID="btnXoa" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/images/Delete.png" OnClientClick="return confirm('Bạn có chắc muốn xóa không');" OnClick="btnXoa_Click"></asp:ImageButton>                    
                                </ItemTemplate>                                              
                            </asp:TemplateField>    
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="DataGioHang" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="select MaSANPHAM,SoLuong,TenSP,Tien,Image,MoTa, (SoLuong*Tien) as 'TongTien' from giohang ,SanPham where GioHang.MaSANPHAM = SanPham.MaSP and UserName = @username"
                        DeleteCommand="DELETE FROM GioHang where username = @username and MaSANPHAM = @MaSP"
                        UpdateCommand="UPDATE GioHang set SoLuong = @SoLuongSP where username = @username and MaSANPHAM = @MaSP"
                        >
                        <DeleteParameters>
                            <asp:Parameter Name="MaSP" Type="String" />
                            <asp:Parameter Name="username" Type="String" />
                        </DeleteParameters>    
                        <UpdateParameters>
                            <asp:Parameter Name="MaSP" Type="String" />
                            <asp:Parameter Name="SoLuongSP" Type="Int32" />
                            <asp:Parameter Name="username" Type="String" />  
                        </UpdateParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="username" SessionField="name" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                  </div>
    </div>
 </asp:Content>
