<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WinDevOps._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>
            <table style="width:100%;">
                <tr>
                    <td style="font-size: x-small">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="121px" ImageUrl="~/Images/Rackspace.jpg" Width="305px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 38px; text-align: center;">
                        <asp:Image ID="Image1" runat="server" Height="96px" ImageUrl="~/Images/Marquee Logo.jpg" Width="131px" />
                    </td>
                    <td style="height: 38px">&nbsp;</td>
                    <td style="height: 38px; text-align: center; font-size: 53px; font-weight: bold;">&nbsp;Windows DevOps</td>
                    <td style="height: 38px; text-align: center;">
                        <asp:Image ID="Image4" runat="server" Height="112px" ImageUrl="~/Images/windows.jpg" Width="109px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td style="text-align: center">
                        &nbsp;</td>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="4" style="font-size: small">This site is hosted on two Windows web servers behind a cloud load balancer, the servers were built using a standard API call (<span class="">supernova marqdfw boot --image 240b8fb2-da7a-482a-9429-891b374cb57c --flavor performance1-4 --file &quot;C:\cloud-automation\bootstrap.cmd=C:\cloud-automation\bootstrap.cmd&quot; Test12</span>). Once the servers came online they are automatically configured with the identity and location of the Pull Server which distributes their role configurations.&nbsp; Once the role configurations were received from the Pull Server the role servers configured themselves and downloaded the website content and began to display this page.<br />
                        <br />
                        This entire process is unattended once the API call is executed to build the servers.&nbsp; All of the configurations and content are located on GitHub, all configurations changes are made locally at a DevOps workstation and pushed to GitHub which is automatically deployed to all servers for changes to be automatically applied.</td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: center">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/DSC.png" />
                    </td>
                </tr>
            </table>
        </h1>
    </div>

</asp:Content>
