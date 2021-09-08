<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="QuanLySP.aspx.cs" Inherits="Shop_Online.QuanLyTK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="phHome" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
    <div class="container">
        Mã Sản Phẩm:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtMaSP" runat="server"></asp:TextBox>
        <br />
        <br />
        Tên Sản Phẩm:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTen" runat="server"></asp:TextBox>
        <br />
        <br />
        Tiền:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtTien" runat="server"></asp:TextBox>
        <br />
        <br />
        Ảnh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAnh" runat="server"></asp:TextBox>
        <br />
        <br />
        Mô Tả:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtMoTa" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnInsert" runat="server" Text="Insert" Height="28px" OnClick="btnInsert_Click"/>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:GridView ID="grvThongtin" runat="server" AutoGenerateColumns="false" OnRowCancelingEdit="grvThongtin_RowCancelingEdit" OnRowDeleting="grvThongtin_RowDeleting" OnRowEditing="grvThongtin_RowEditing" OnRowUpdating="grvThongtin_RowUpdating" >
            <Columns>
                <asp:BoundField DataField="MaSP" HeaderText="Mã Sản Phẩm" ReadOnly="true" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên Sản Phẩm" />
                <asp:BoundField DataField="Tien" HeaderText="Tiền " />
                <asp:BoundField DataField="Image" HeaderText="Ảnh " />
                <asp:BoundField DataField="MoTa" HeaderText="Mô Tả " />
                <asp:CommandField ShowEditButton="true" />
                <asp:CommandField ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>
        
        <asp:Label ID="lblResult" runat="server" ></asp:Label> 
        </div>
</asp:Content>
