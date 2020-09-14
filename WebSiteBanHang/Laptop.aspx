<%@ Page Title="" Language="C#" MasterPageFile="~/TrangChinh.master" AutoEventWireup="true" CodeFile="Laptop.aspx.cs" Inherits="Laptop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <p>
        <asp:Label ID="Label6" runat="server" Text="Sắp xếp theo:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Selected="True" Value="1">Tăng dần theo tên SP</asp:ListItem>
            <asp:ListItem Value="2">Giảm dần theo tên SP</asp:ListItem>
            <asp:ListItem Value="3">Tăng dần theo giá bán</asp:ListItem>
            <asp:ListItem Value="4">Giảm dần theo giá bán</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Sắp xếp" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" CellPadding="10" CellSpacing="10">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Image/"+Eval("HINHANH") %>' />
                <br />
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("DONGIA")+" VNĐ" %>' Font-Bold="True" ForeColor="#993300"></asp:Label>
                <br />
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("TENSP") %>' Font-Bold="True"></asp:Label>
                <br />
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Image/giohang.PNG" />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:qlmt %>"
            SelectCommand="SELECT * FROM SANPHAM WHERE MALOAI=1"
            ></asp:SqlDataSource>
    </p>
</asp:Content>

