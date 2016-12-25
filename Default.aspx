<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <h1 style="color:whitesmoke">Hello and Welcome to the Area Calculator!</h1>

        <br /><br />

        <h3 style="color:whitesmoke">Please Enter the Values and Click the Calculate Button:</h3>
        
        <br /><br />

    <div class="col-md-6 leftSide">
        <%-- Display for Rectangle Calculator --%>
         <asp:Label ID="LabelRectangle" runat="server" Text="Rectangle " Font-Bold="True" Font-Size="Medium" ForeColor="WhiteSmoke"></asp:Label>
        <img src="Content/Pictures/rectangle.jpg.gif" />
        <br />
        <h5 style="color:whitesmoke">Length: </h5>
        <asp:TextBox ID="RectangleLength" runat="server"></asp:TextBox>
        <asp:DropDownList ID="LengthList" runat="server">
            <asp:ListItem>Millimeter</asp:ListItem>
            <asp:ListItem>Centimeter</asp:ListItem>
            <asp:ListItem>Meter</asp:ListItem>
        </asp:DropDownList>
        <br />
        <h5 style="color:whitesmoke">Height: </h5><asp:TextBox ID="RectangleHeight" runat="server"></asp:TextBox>
        <asp:DropDownList ID="HeightList" runat="server">
            <asp:ListItem>Millimeter</asp:ListItem>
            <asp:ListItem>Centimeter</asp:ListItem>
            <asp:ListItem>Meter</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <asp:Button ID="RectangleButton" runat="server" Text="Calculate" OnClick="RectangleButton_Click" CssClass="btn-success"/>
        <br /><br />
        <asp:Label ID="RectangleReponse" runat="server" ForeColor="WhiteSmoke" Font-Bold="true"></asp:Label>
        <br /><br />

        <%-- Display For Triangle Calculator --%>
        <asp:Label ID="LabelTriangle" runat="server" Text="Triangle " Font-Bold="True" Font-Size="Medium" ForeColor="WhiteSmoke"></asp:Label>
        <img src="Content/Pictures/triangle.gif" height="70" width="80"/>
        <br />
        <h5 style="color:whitesmoke">Base: </h5>
        <asp:TextBox ID="TriangleBase" runat="server"></asp:TextBox>
        <asp:DropDownList ID="TriangleDropDownBase" runat="server">
            <asp:ListItem>Millimeter</asp:ListItem>
            <asp:ListItem>Centimeter</asp:ListItem>
            <asp:ListItem>Meter</asp:ListItem>
        </asp:DropDownList>
        <h5 style="color:whitesmoke">Height: </h5>
        <asp:TextBox ID="TriangleHeight" runat="server"></asp:TextBox>
        <asp:DropDownList ID="TriangleDropDownHeight" runat="server">
            <asp:ListItem>Millimeter</asp:ListItem>
            <asp:ListItem>Centimeter</asp:ListItem>
            <asp:ListItem>Meter</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <asp:Button ID="TriangleButton" runat="server" Text="Calculate" OnClick="TriangleButton_Click" CssClass="btn-success" />
        <br /><br />
        <asp:Label ID="TriangleResponse" runat="server" ForeColor="WhiteSmoke" Font-Bold="true"></asp:Label>    
            <br /><br />
    </div>

    <div class="col-md-6 rightSide">
        <%-- Display for Trapezoid --%>
        <asp:Label ID="LabelTrapezoid" runat="server" Text="Trapezoid " Font-Bold="True" Font-Size="Medium" ForeColor="WhiteSmoke"></asp:Label>
        <img src="Content/Pictures/trapezoid.gif" />
        <br />
        <h5 style="color:whitesmoke">Top Width: </h5>
        <asp:TextBox ID="TrapTopLength" runat="server"></asp:TextBox>
        <asp:DropDownList ID="TrapezoidTopWidth" runat="server">
            <asp:ListItem>Millimeter</asp:ListItem>
            <asp:ListItem>Centimeter</asp:ListItem>
            <asp:ListItem>Meter</asp:ListItem>
        </asp:DropDownList>

        <h5 style="color:whitesmoke">Bottom Width: </h5>
        <asp:TextBox ID="TrapBottomLength" runat="server"></asp:TextBox>
        <asp:DropDownList ID="TrapezoidBottomWidth" runat="server">
            <asp:ListItem>Millimeter</asp:ListItem>
            <asp:ListItem>Centimeter</asp:ListItem>
            <asp:ListItem>Meter</asp:ListItem>
        </asp:DropDownList>

        <h5 style="color:whitesmoke">Height: </h5>
        <asp:TextBox ID="TrapHeight" runat="server"></asp:TextBox>
        <asp:DropDownList ID="TrapezoidHeight" runat="server">
            <asp:ListItem>Millimeter</asp:ListItem>
            <asp:ListItem>Centimer</asp:ListItem>
            <asp:ListItem>Meter</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <asp:Button ID="TrapezoidButton" runat="server" Text="Calculate" OnClick="TrapezoidButton_Click" CssClass="btn-success"/>
        <br /><br />
        <asp:Label ID="TrapezoidResponse" runat="server" ForeColor="WhiteSmoke" Font-Bold="true"></asp:Label>
        <br /><br />

        <%-- Display for circle! --%>

        <asp:Label ID="Label1" runat="server" Text="Circle " font-bold="true" Font-Size="Medium" ForeColor="WhiteSmoke"></asp:Label>
        <img src="Content/Pictures/circle.gif" height="65" width="65"/>
        <br />
        <h5 style="color:whitesmoke">Radius: </h5>
        <asp:TextBox ID="CircleRadius" runat="server"></asp:TextBox>
        <asp:DropDownList ID="RadiusDropDown" runat="server">
            <asp:ListItem>Millimeter</asp:ListItem>
            <asp:ListItem>Centimeter</asp:ListItem>
            <asp:ListItem>Meter</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
        <asp:Button ID="CircleButton" runat="server" Text="Calculate" OnClick="CircleButton_Click" CssClass="btn-success"/>
        <br /><br /><br />
        <asp:Label ID="CircleResponse" runat="server" ForeColor="WhiteSmoke" Font-Bold="true"></asp:Label>        
        <br /><br />
    </div>    
    
</asp:Content>
