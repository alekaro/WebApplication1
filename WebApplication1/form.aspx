<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="WebApplication1.form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Katalog gitarowy</title>

    <link rel="stylesheet" href="styles.css" type="text/css" />
</head>
<body>
    
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
                       
                    </div>
                    </asp:TableCell>
                    <asp:TableCell runat="server" CssClass="d2">
                <div id="mr-center">
                   <section>
        <h2>Uzupełnij swoje dane</h2>
        <asp:Label ID="uploadedLabel" runat="server" visible="false"></asp:Label>
        <form id="userForm" runat="server">
            <div class="formDiv">
                <asp:Label id="inputNameLabel" runat="server">Imię</asp:Label>
                <asp:TextBox id="inputName" runat="server" type="text"/>
                <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="inputName" errormessage="Pole Imię nie może być puste!" />
                <asp:RegularExpressionValidator ID="validName" runat="server" controltovalidate="inputName" ErrorMessage="Imię musi zaczynać się wielką literą!" ValidationExpression="[A-Z][a-z]+"/>
            </div>
            <div class="formDiv">
                <asp:Label id="inputSurnameLabel" runat="server">Nazwisko</asp:Label>
                <asp:TextBox id="inputSurname" runat="server" type="text"/>
                <asp:RequiredFieldValidator runat="server" id="reqSurname" controltovalidate="inputSurname" errormessage="Pole Nazwisko nie może być puste!" />
                <asp:RegularExpressionValidator ID="validSurname" runat="server" controltovalidate="inputSurname" ErrorMessage="Nazwisko musi zaczynać się wielką literą!" ValidationExpression="[A-Z][a-z]+"/>
            </div>
            <div class="formDiv">
                <asp:Label id="inputEmailLabel" runat="server">E-mail</asp:Label>
                <asp:TextBox id="inputEmail" runat="server" type="email"/>
                <asp:RequiredFieldValidator runat="server" id="reqEmail" controltovalidate="inputEmail" errormessage="Pole E-mail nie może być puste!" />
            </div>
            <div class="formDiv">
                <asp:Label id="inputEmail2Label" runat="server">Powtórz e-mail</asp:Label>
                <asp:TextBox id="inputEmail2" runat="server" type="email"/>
                <asp:CompareValidator runat="server" id="reqEmail2" controltovalidate="inputEmail2" controltocompare="inputEmail" errormessage="Podane adresy e-mail są różne!" />
            </div>
            <div class="formDiv">
                <asp:Label id="inputPhoneLabel" runat="server">Telefon</asp:Label>
                <asp:TextBox id="inputPhone" runat="server" type="text"/>
                <asp:RegularExpressionValidator ID="validPhone" runat="server" controltovalidate="inputPhone" ErrorMessage="Proszę podać poprawny numer telefonu" ValidationExpression="[0-9 +]+"/>
            </div>
            <div class="formDiv">
                <asp:Label id="inputStreetLabel" runat="server">Ulica i nr domu</asp:Label>
                <asp:TextBox id="inputStreet" runat="server" type="text"/>
            </div>
            <div class="formDiv">
                <asp:Label id="inputPostcodeLabel" runat="server">Kod pocztowy</asp:Label>
                <asp:TextBox id="inputPostcode" runat="server" type="text"/>
                <asp:RegularExpressionValidator ID="validPostcode" runat="server" controltovalidate="inputPostcode" ErrorMessage="Proszę podać poprawny kod pocztowy" ValidationExpression="\d\d\-\d\d\d"/>
            </div>
            <div class="formDiv">
                <asp:Label id="inputCityLabel" runat="server">Miasto</asp:Label>
                <asp:TextBox id="inputCity" runat="server" type="text"/>
            </div>
            <div class="formDiv">
                <asp:Label id="inputCaptchaLabel" runat="server">Wpisz liczbę od 5 do 115</asp:Label>
                <asp:TextBox id="inputCaptcha" runat="server" type="text"/>
                <asp:RequiredFieldValidator runat="server" id="reqCaptcha" controltovalidate="inputCaptcha" errormessage="Pole Captcha nie może być puste!" />
                <asp:RangeValidator runat="server" id="validInputCaptcha" controltovalidate="inputCaptcha" type="Integer" minimumvalue="5" maximumvalue="115" errormessage="Jesteś robotem?" />
            </div>
            <asp:Button runat="server" id="btnSubmitForm" text="Zapisz" />
        </form>
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
</body>
</html>
