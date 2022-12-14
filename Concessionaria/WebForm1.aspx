<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Concessionaria.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Concessionaria Auto</h1>
            <h2>Listino Auto:</h2>
            <div class="row">
                    <div class="col-md-6">   
                        <asp:DropDownList ID="ListAuto" runat="server" Width="250px" AutoPostBack="true"
                            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control">
                            <asp:ListItem Text="" Value="0" />
                            <asp:ListItem Text="Ford Fiesta Active 1.1 75 CV Titanium" Value="24000" />
                            <asp:ListItem Text="Audi A1 allstreet 35 TFSI" Value="22000" />
                            <asp:ListItem Text="BMW X1 xDrive 25e" Value="41000" />
                            <asp:ListItem Text="Jeep 1.5 T4 MHEV Renegade Upland" Value="25000" />
                        </asp:DropDownList>
                    </div>
           
                <div class="col-md-6">
                    <asp:Image ID="Image1" runat="server" CssClass="img-Auto" />
                    <asp:Label ID="PrezzoBase" runat="server" Text=""></asp:Label>
                </div>
                
            </div>
            <div class="row mx-2">
                <h2>Scegli gli Opitonal per la tua nuova Auto:</h2>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                  <asp:ListItem Text="Fari LED (+350,00)" Value="350" />
                  <asp:ListItem Text="Cambio Automatico(+ 2000.00)" Value="2000" />
                  <asp:ListItem Text="Sensori di Parcheggio posteriori ( + 600,00)" Value="600" />
                  <asp:ListItem Text="Cruise Control ( + 400,00)" Value="400" />
                </asp:CheckBoxList>
            </div>
            <br />
            <div>
                <h2>Seleziona la garanzia (120,00) per ogni anno </h2>
            <asp:DropDownList ID="elencoGaranzia" runat="server">
                <asp:ListItem Text="1 anno di garanzia" Value="1" />
                <asp:ListItem Text="2 anni di garanzia" Value="2" />
                <asp:ListItem Text="3 anni di garanzia" Value="3" />
            </asp:DropDownList>
                </div>
                
            <br />
            
            <asp:Button ID="Button2" runat="server" Text="Caloca Preventivo" OnClick="CalcolaPreventivo_click" />
            <hr />
            <div id="RiepilogoPreventivo" runat="server" class="alert alert-success">
                <asp:Label ID="RiepilogoTotale" runat="server" Text=""></asp:Label>
                <hr />
                <asp:Label ID="Preventivo" runat="server" Font-Bold="true" Font-Size="20px"   Text=""></asp:Label>
            </div>

        </div>
    </form>
</body>
</html>
