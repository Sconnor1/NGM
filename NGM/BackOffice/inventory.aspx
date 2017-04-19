<%@ Page Title="" Language="VB" MasterPageFile="backoffice.Master" AutoEventWireup="false" CodeFile="inventory.aspx.vb" Inherits="inventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .sectionContent{
            width:700px;
            height:400px;
            padding-left:50px;
            padding-right:50px;
        }
        #calendarDD{
            width:30em;
            height:2em;
        }
        h3{display:inline-block;}
        .detailedView{
            height:50px;
            width: 650px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_112307_ngmConnectionString %>" SelectCommand="Select [Product_ID], [Product_Description], [Product_Name], [Product_Price], [Product_Discount], [Product_Serial_No], [Category_ID] from [Products]"></asp:SqlDataSource>
     <section>
		<div id="sectionHeader">Inventory</div>
         <div id="bank" class="sectionContent">
            <div id="searchBarContainer">
				<asp:TextBox runat="server" ID="searchBar" style="width:350px;"></asp:TextBox>
				<a><asp:ImageButton runat="server" type="image" class="roundIcons" id="searchIcon" src="../images/roundIcons/searchIcon.png" alt="searchIcon"/></a>
			</div>
            <h3>Deposit on: </h3>
		    <asp:DropDownList ID="calendarDD" runat="server" Width="8em" Height="2em">
                <asp:ListItem>Test</asp:ListItem>
            </asp:DropDownList>
              <img class="roundIcons" id="calendarIcon" src="../images/roundIcons/calendarIcon.png" width="50" height="50" alt="calendarIcon"/>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Deposit_ID" DataSourceID="SqlDataSource1" CellPadding="4" GridLines="None" ForeColor="#333333" CssClass="detailedView">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                <EditRowStyle BackColor="#7C6F57" />
                <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" Width="125px" />
                <Fields>
                   <asp:BoundField DataField=" Product_ID " HeaderText=" Product ID " InsertVisible="False" ReadOnly="True" SortExpression=" Product_ID " />
		   <asp:BoundField DataField="Product_Description" HeaderText=" Product Description " ReadOnly="True" SortExpression="Product_Description" />
                   <asp:BoundField DataField=" Product_Name " HeaderText=" Product Name " ReadOnly="True" SortExpression=" Product_Name " />
                   <asp:BoundField DataField=" Product_Price " HeaderText=" Product Price " ReadOnly="True" SortExpression=" Product_Price " />
                   <asp:BoundField DataField=" Product_Discount " HeaderText=" Product Discount " ReadOnly="True" SortExpression=" Product_Discount " />
                   <asp:BoundField DataField=" Product_Serial_No " HeaderText=" Serial_No " ReadOnly="True" SortExpression=" Product_Serial_No " />
                   <asp:BoundField DataField=" Category_ID "  HeaderText=" Category ID " ReadOnly="True" SortExpression=" Category_ID " />
                </Fields>
                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
            </asp:DetailsView><br />
              <h3>Bank Info </h3>
              
        </div>
	</section>
</asp:Content>

