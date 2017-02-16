<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1 style="color:whitesmoke; text-align:center">Hello and Welcome to the Area Calculator!</h1>

        <br /><br />

        <h3 style="color:whitesmoke; text-align:center">Please Enter the Values and Click the Calculate Button:</h3>
        
        <br /><br />

        <%-- Display for Rectangle Calculator --%>

        <%-- Using UpdatePanel option to update an area of the webpage so the entire page doesn't refresh, rememeber to include AJAX ScriptManager! --%>

       <div class="row">
           <div class="col-sm-6">
        <asp:UpdatePanel ID="RectangleUpdate" runat="server">
            <ContentTemplate>
         <asp:Label ID="LabelRectangle" runat="server" Text="Rectangle " Font-Bold="True" Font-Size="Medium" ForeColor="WhiteSmoke"></asp:Label>
        <img src="Content/Pictures/rectangle.png" height="75" width="100"/>
        <br />
        <h5 style="color:whitesmoke">Length: </h5>
        <asp:TextBox ID="RectangleLength" runat="server"></asp:TextBox>
        <asp:DropDownList ID="LengthList" runat="server">
            <asp:ListItem>Millimeter</asp:ListItem>
            <asp:ListItem>Centimeter</asp:ListItem>
            <asp:ListItem>Meter</asp:ListItem>
        </asp:DropDownList>
        <br />
        <h5 style="color:whitesmoke">Height: </h5>
        <asp:TextBox ID="RectangleHeight" runat="server"></asp:TextBox>
        <asp:DropDownList ID="HeightList" runat="server">
            <asp:ListItem>Millimeter</asp:ListItem>
            <asp:ListItem>Centimeter</asp:ListItem>
            <asp:ListItem>Meter</asp:ListItem>
        </asp:DropDownList>
        <br /><br />
                <div class="rectangleButton">
        <asp:Button ID="RectangleButton" runat="server" Text="Calculate" OnClick="RectangleButton_Click" CssClass="btn-success"/>           
                    <asp:Label ID="RectangleReponse" runat="server" ForeColor="WhiteSmoke" Font-Bold="true"></asp:Label>
                </div>
                </ContentTemplate>
            </asp:UpdatePanel>    

        <%-- Display For Triangle Calculator --%>

        <asp:UpdatePanel ID="TriangleUpdate" runat="server">
            <ContentTemplate>
        <asp:Label ID="LabelTriangle" runat="server" Text="Triangle " Font-Bold="True" Font-Size="Medium" ForeColor="WhiteSmoke"></asp:Label>
        <img src="Content/Pictures/triangle.png" height="80" width="120"/>
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

                <div class="triangleButton">
        <asp:Button ID="TriangleButton" runat="server" Text="Calculate" OnClick="TriangleButton_Click" CssClass="btn-success" />
        <asp:Label ID="TriangleResponse" runat="server" ForeColor="WhiteSmoke" Font-Bold="true"></asp:Label>    
                </div>
                </ContentTemplate>
            </asp:UpdatePanel>    
           </div>         


        <%-- Display for Trapezoid --%>
           <div class="col-sm-6">
        <asp:UpdatePanel ID="TrapezoidUpdate" runat="server">
            <ContentTemplate>
        <asp:Label ID="LabelTrapezoid" runat="server" Text="Trapezoid " Font-Bold="True" Font-Size="Medium" ForeColor="WhiteSmoke"></asp:Label>
        <img src="Content/Pictures/trapezoid.png" height="80" width="80" style="border-color:white;"/>
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

                <div class="trapButton">
        <asp:Button ID="TrapezoidButton" runat="server" Text="Calculate" OnClick="TrapezoidButton_Click" CssClass="btn-success"/>
        <asp:Label ID="TrapezoidResponse" runat="server" ForeColor="WhiteSmoke" Font-Bold="true"></asp:Label>    
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>    


        <%-- Display for circle! --%>
        <asp:UpdatePanel ID="CircleUpdate" runat="server">
            <ContentTemplate>
        <asp:Label ID="Label1" runat="server" Text="Circle " font-bold="true" Font-Size="Medium" ForeColor="WhiteSmoke"></asp:Label>
        <img src="Content/Pictures/circle.png" height="70" width="70"/>
        <br />
        <h5 style="color:whitesmoke">Radius: </h5>
        <asp:TextBox ID="CircleRadius" runat="server"></asp:TextBox>
        <asp:DropDownList ID="RadiusDropDown" runat="server">
            <asp:ListItem>Millimeter</asp:ListItem>
            <asp:ListItem>Centimeter</asp:ListItem>
            <asp:ListItem>Meter</asp:ListItem>
        </asp:DropDownList>

                <div class="circleButton">
        <asp:Button ID="CircleButton" runat="server" Text="Calculate" OnClick="CircleButton_Click" CssClass="btn-success"/>
        <asp:Label ID="CircleResponse" runat="server" ForeColor="WhiteSmoke" Font-Bold="true"></asp:Label>        
                </div>
                </ContentTemplate>
            </asp:UpdatePanel>        
           </div>
    </div>
</asp:Content>
