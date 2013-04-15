<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="index.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Homework 6</title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>A Demo of Wizard Server Control</h1> 
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2" Height="411px" Width="678px" OnFinishButtonClick="Wizard1_FinishButtonClick">
            <SideBarTemplate>
                <asp:DataList ID="SideBarList" runat="server">
                    <ItemTemplate>
                        <asp:LinkButton ID="SideBarButton" runat="server"></asp:LinkButton>
                    </ItemTemplate>
                    <SelectedItemStyle Font-Bold="True" />
                </asp:DataList>
            </SideBarTemplate>
            <WizardSteps>
                <asp:WizardStep runat="server" title="User Information">
                <asp:Label ID="Name" runat="server" Text="Name:"></asp:Label>
                    <asp:TextBox ID="Namefield" runat="server" MaxLength="45" Width="175px" OnTextChanged="Namefield_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Address" runat="server" Text="Address:"></asp:Label>
                    <asp:TextBox ID="AddressField" runat="server" Height="106px" Width="301px"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep runat="server" title="Payment Information">
                    <asp:Label ID="Card" runat="server" Text="Card Type:"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="99px">
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>MasterCard</asp:ListItem>
                        <asp:ListItem>AmEX</asp:ListItem>
                        <asp:ListItem>Discovery</asp:ListItem>
                    </asp:DropDownList><br />
                    <br />
                    <asp:Label ID="Number" runat="server" Text="Card Number:"></asp:Label>
                    &nbsp;
                    <asp:TextBox ID="CardNumber" runat="server" MaxLength="16" ></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Expiry" runat="server" Text="Expiration Date:"></asp:Label>
                    &nbsp;
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </asp:WizardStep>
                <asp:WizardStep runat="server" StepType="Complete" Title="Done">
                <h3>Summary of Input</h3>
                    <asp:Label ID="result" runat="server" Text="Label"></asp:Label>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
        <br />


           </div>
    </form>
</body>
</html>
