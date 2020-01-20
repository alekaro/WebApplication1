<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication1.Cart" %>

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
                        </Items>
                    </asp:Menu>
                    </div>
                    </asp:TableCell>
                    <asp:TableCell runat="server" CssClass="d2">
                <div id="mr-center">
                    <section>
                  <h2>Koszyk</h2>
        <asp:Label ID="congrats" runat="server" Visible="false" Text="Złożono zamówienie!"></asp:Label>
        <br />

        

     <asp:ListView ID="cartList" runat="server" 
                GroupItemCount="4"
                ItemType="WebApplication1.CartItem">

                

                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>Koszyk jest pusty.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                   
                        <div style="min-height: 100px;">
                          
                                    
                                        <img alt="produkt" class="small" src="Images/<%#:Item.item.image%>"
                                             />
                           <p>
                                            <%#:Item.item.name%> (<%#:Item.item.price%> zł)
                                        </p>
                                    
                              
                        </div>
                        
                    
                </ItemTemplate>
                <LayoutTemplate>
                  
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                   
                </LayoutTemplate>
            </asp:ListView>
          
<asp:DropDownList AutoPostBack="true" runat="server" ID="shippingList" 
                CssClass="text" OnSelectedIndexChanged="myListDropDown_Change" Visible="false"/>
                 <asp:Label ID="wybranaDostawa" runat="server" Visible="false" Text=""></asp:Label>
 <br />
  
  <asp:Label ID="summaryProducts" runat="server" Visible="false" Text="Label"></asp:Label>
  <br />
  <asp:Label ID="summary" runat="server" Visible="false" Text="Label"></asp:Label>
           
<br />
             <asp:Button ID="btnOrder" runat="server" Visible="false" text="Złóż zamówienie"/>
            
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
