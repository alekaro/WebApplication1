<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form3.aspx.cs" Inherits="WebApplication1.form3" %>

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
                        <section id="main-section">
            <h2>Uzupełnij swoje dane</h2>
       <table align="left">

          <tr>

             <td valign="top" align="left">
                Imię:</td>
             <td valign="top" align="left">
                <asp:TextBox ID="inputName" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="reqName" runat="server" 
                   ControlToValidate="inputName" Display="Dynamic" 
                   ErrorMessage="Pole imię nie może być puste!"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" controltovalidate="inputName" ErrorMessage="Imię musi zaczynać się wielką literą!" ValidationExpression="[A-Z][a-z]+"/>
             </td>
          </tr>


          <tr>
             <td valign="top" align="left">
                E-mail:</td>
             <td valign="top" align="left">
                <asp:TextBox ID="inputEmail" runat="server"></asp:TextBox>
                
                 <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="inputEmail" errormessage="Pole E-mail nie może być puste!" />
             </td>
          </tr>

           <tr>
             <td valign="top" align="left">
                Powtórz e-mail:</td>
             <td valign="top" align="left">
                <asp:TextBox ID="inputEmail2" runat="server"></asp:TextBox>
                
                 <asp:CompareValidator runat="server" id="CompareValidator1" controltovalidate="inputEmail2" controltocompare="inputEmail" errormessage="Podane adresy e-mail są różne!" />
             </td>
          </tr>


          <tr>
             <td valign="top" align="left">
                Numer telefonu:</td>
             <td valign="top" align="left">
                <asp:TextBox ID="inputPhone" runat="server"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="phoneRequiredFieldValidator" runat="server" 
                   ControlToValidate="inputPhone" Display="Dynamic" 
                   ErrorMessage="Proszę wpisać swój numer telefonu" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" controltovalidate="inputPhone" ErrorMessage="Proszę podać poprawny numer telefonu" ValidationExpression="[0-9 +]+"/>
             </td>
          </tr>

           <tr>
             <td valign="top" align="left">
                Wpisz liczbę od 8 do 138:</td>
             <td valign="top" align="left">
                <asp:TextBox ID="inputCaptcha" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="inputCaptcha" errormessage="Pole Captcha nie może być puste!" />
                <asp:RangeValidator runat="server" id="RangeValidator1" controltovalidate="inputCaptcha" type="Integer" minimumvalue="8" maximumvalue="138" errormessage="Jesteś robotem?" />
             </td>
          </tr>

       </table>
       
            <asp:Button runat="server" id="btnSubmitForm" text="Zapisz" />
           
       <p>
          <asp:Label ID="outputLabel" runat="server" Visible="False"></asp:Label>
       </p>

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
