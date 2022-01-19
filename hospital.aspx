<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hospital.aspx.cs" Inherits="Assessment4.hospital" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField NewText="Insert" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Doc_Id" HeaderText="Doc_Id" SortExpression="Doc_Id" />
            <asp:BoundField DataField="Hos_Name" HeaderText="Hos_Name" SortExpression="Hos_Name" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Start_Date" HeaderText="Start_Date" SortExpression="Start_Date" />
            <asp:BoundField DataField="End_Date" HeaderText="End_Date" SortExpression="End_Date" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [hospital] WHERE [Id] = @original_Id AND [Doc_Id] = @original_Doc_Id AND [Hos_Name] = @original_Hos_Name AND [City] = @original_City AND [Country] = @original_Country AND [Start_Date] = @original_Start_Date AND [End_Date] = @original_End_Date" InsertCommand="INSERT INTO [hospital] ([Doc_Id], [Hos_Name], [City], [Country], [Start_Date], [End_Date]) VALUES (@Doc_Id, @Hos_Name, @City, @Country, @Start_Date, @End_Date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [hospital]" UpdateCommand="UPDATE [hospital] SET [Doc_Id] = @Doc_Id, [Hos_Name] = @Hos_Name, [City] = @City, [Country] = @Country, [Start_Date] = @Start_Date, [End_Date] = @End_Date WHERE [Id] = @original_Id AND [Doc_Id] = @original_Doc_Id AND [Hos_Name] = @original_Hos_Name AND [City] = @original_City AND [Country] = @original_Country AND [Start_Date] = @original_Start_Date AND [End_Date] = @original_End_Date">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Doc_Id" Type="Int32" />
            <asp:Parameter Name="original_Hos_Name" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_Country" Type="String" />
            <asp:Parameter DbType="Date" Name="original_Start_Date" />
            <asp:Parameter DbType="Date" Name="original_End_Date" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Doc_Id" Type="Int32" />
            <asp:Parameter Name="Hos_Name" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter DbType="Date" Name="Start_Date" />
            <asp:Parameter DbType="Date" Name="End_Date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Doc_Id" Type="Int32" />
            <asp:Parameter Name="Hos_Name" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter DbType="Date" Name="Start_Date" />
            <asp:Parameter DbType="Date" Name="End_Date" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Doc_Id" Type="Int32" />
            <asp:Parameter Name="original_Hos_Name" Type="String" />
            <asp:Parameter Name="original_City" Type="String" />
            <asp:Parameter Name="original_Country" Type="String" />
            <asp:Parameter DbType="Date" Name="original_Start_Date" />
            <asp:Parameter DbType="Date" Name="original_End_Date" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Search Here"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Txt" type="text" />&nbsp;
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/hospital.aspx" Text="Search" />
</asp:Content>
