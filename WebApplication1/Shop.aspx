<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="WebApplication1.Shop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Katalog gitarowy</title>

    <link rel="stylesheet" href="styles.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server" Width="100%">
                <asp:TableRow runat="server" BackColor="Black" ForeColor="White">
                    <asp:TableCell runat="server" CssClass="d1">
                        <asp:HyperLink id="hyperlink1" NavigateUrl="index.aspx" Text="" runat="server"><asp:Image ID="Image1" CssClass="logo" runat="server" Height="100px" ImageUrl="~/img/logo.png" Width="100px" />
                        </asp:HyperLink></asp:TableCell>
                    <asp:TableCell runat="server" CssClass="d2"><h1 class="center">Katalog gitarowy</h1></asp:TableCell>
                    <asp:TableCell runat="server" CssClass="d3"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" CssClass="d1" BackColor="#FF9900">
                    <div id="mr-left">
                        <asp:Menu ID="Menu1" runat="server">
                        <Items>
                            <asp:MenuItem Text="Historia gitary" Value="Historia gitary"></asp:MenuItem>
                            <asp:MenuItem Text="Kalkulator" Value="Kalkulator"></asp:MenuItem>
                            <asp:MenuItem Text="Sandbox" Value="Sandbox"></asp:MenuItem>
                            <asp:MenuItem Text="O nas" Value="O nas"></asp:MenuItem>
                            <asp:MenuItem Text="Formularz" Value="Formularz" NavigateUrl="info.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Koszyk" Value="Koszyk" NavigateUrl="Cart.aspx"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                    </div>
                    </asp:TableCell>
                    <asp:TableCell runat="server" CssClass="d2">
                <div id="mr-center">
                    <section>
        <h2>Dostępne artykuły</h2>
<asp:Label ID="cartCount" runat="server" Text=""></asp:Label>
        
            <asp:RadioButtonList ID="category" runat="server" AutoPostBack="True">
              <asp:ListItem Value="elektryki">Gitary elektryczne:</asp:ListItem>
              <asp:ListItem Value="akustyki">Gitary akustyczne</asp:ListItem>
            </asp:RadioButtonList>
            
            <asp:Label ID="categoryLabel" runat="server" Visible="false"><h2>Dostępne produkty:</h2></asp:Label>
            <asp:CheckBoxList ID="productList" runat="server" visible="false"></asp:CheckBoxList>
            <asp:Button ID="btnAddCart" runat="server" Visible="false" text="Dodaj do koszyka"/>

            <asp:Label ID="Message" runat="server" Visible="true"></asp:Label>
  
    </section>
                    </div>
                    </asp:TableCell>
                    <asp:TableCell runat="server" CssClass="d3" BackColor="#999999">
                        <div id="mr-right">
                    <div id="st">
                    <h2>Spis Treści</h2>
                    <nav>
                        <ol>
                            <li><a href="#anchor0">Gitary akustyczne</a>
                                <ul>
                                    <li><a href="#anchor1">Gitara barokowa</a></li>
                                    <li><a href="#anchor2">Gitara klasyczna</a></li>
                                    <li><a href="#anchor3">Gitara akustyczna</a></li>
                                </ul>
                            </li>
                            <li><a href="#anchor4">Gitary akustyczne z wbudowanym mikrofonem lub przetwornikiem</a></li>
                            <li><a href="#anchor5">Gitary elektryczne</a>
                                <ul>
                                    <li><a href="#anchor6">Gitara elektryczna</a></li>
                                    <li><a href="#anchor7">Gitara basowa</a></li>
                                    <li><a href="#anchor8">Gitara elektroklasyczna</a></li>
                                    <li><a href="#anchor9">Cigar Box Guitar</a></li>
                                </ul>
                            </li>
                            <li><a href="#anchor10">Inne gitary</a>
                                <ul>
                                    <li><a href="#anchor11">Basowa akustyczna</a></li>
                                    <li><a href="#anchor12">gitara wielogryfowa</a></li>
                                </ul>
                            </li>
                        </ol>
                        </nav>
                    </div>
                    </div>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#3399FF">
                    <asp:TableCell runat="server" CssClass="d1"></asp:TableCell>
                    <asp:TableCell runat="server" CssClass="d2">
                        &copy; Copyright. All right reserved

                            <p>Newsletter:</p>
                            <a href="newsletter.html"><img src="img/newsletter.png" height="30" width="30" alt="Newsletter" /></a>
                    </asp:TableCell>
                    <asp:TableCell runat="server" CssClass="d3"></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
