<%@ Page Title="TeacherDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Location.aspx.cs" Inherits="Courwework_db.Location" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class ="jumbotron">
                <div class="container">
                    <div class ="row">
                        <div class ="col-xs-12">
                            <asp:Button runat="server" Text="Back" ID="locationbackID" CssClass="btn btn-primary" OnClick="locationbackID_Click" />
                        </div>
                        <div class ="col-xs-6">
                            <h2><span style = "font-weight:bold">Location</span></h2>
                        </div>
                        <div class ="col-xs-6">
                            <div class="jumbotron" style="padding:1px; padding-left:20px; float:right">             
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="LOCATION_ID" DataSourceID="SqlDataSource1">
                            <InsertItemTemplate>
                                <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                <div class="row" style ="padding:10px">
                                    <div class="col-xs-6">
                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">COUNTRY:</span>
                                    </div>
                                    <div class ="col-xs-6">
                                        <asp:TextBox ID="COUNTRYTextBox" CssClass="form-control" runat="server" Text='<%# Bind("COUNTRY") %>' />
                                    </div>
                                </div>  
                                <div class="row" style ="padding:10px">
                                    <div class="col-xs-6">
                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">DISTRICY:</span>
                                    </div>
                                    <div class ="col-xs-6">
                                        <asp:TextBox ID="DISTRICTTextBox" CssClass="form-control" runat="server" Text='<%# Bind("DISTRICT") %>' />
                                    </div>
                                </div>  
                                <div class="row" style ="padding:10px">
                                    <div class="col-xs-6">
                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">City:</span>
                                    </div>
                                    <div class ="col-xs-6">
                                        <asp:TextBox ID="CITYTextBox" CssClass="form-control" runat="server" Text='<%# Bind("CITY") %>' />
                                    </div>
                                </div>  
                                <div class="row" style ="padding:10px">
                                    <div class="col-xs-6">
                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">STREET:</span>
                                    </div>
                                    <div class ="col-xs-6">
                                        <asp:TextBox ID="STREETTextBox" CssClass="form-control" runat="server" Text='<%# Bind("STREET") %>' />
                                    </div>
                                </div>  
                                <div class="row" style ="padding:10px">
                                    <div class="col-xs-6">
                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">LOCATION ID:</span>
                                    </div>
                                    <div class ="col-xs-6">
                                        <asp:TextBox ID="LOCATION_IDTextBox" CssClass="form-control" runat="server" Text='<%# Bind("LOCATION_ID") %>' />
                                    </div>
                                </div>  
                                <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                <asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </div>
                            </InsertItemTemplate>
                            <ItemTemplate>
                               <asp:LinkButton ID="NewButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Add Location" />
                            </ItemTemplate>
                            <EmptyDataTemplate>
                                <asp:LinkButton ID="NewButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Add Location" />
                            </EmptyDataTemplate>
                        </asp:FormView>
                    </div>
                </div>
            </div>
        </div>
            </div>
    

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="LOCATION_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="table table-bordered" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                    <asp:BoundField DataField="DISTRICT" HeaderText="DISTRICT" SortExpression="DISTRICT" />
                    <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                    <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
                    <asp:BoundField DataField="LOCATION_ID" HeaderText="LOCATION_ID" ReadOnly="True" SortExpression="LOCATION_ID" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;LOCATION&quot; WHERE &quot;LOCATION_ID&quot; = :LOCATION_ID" InsertCommand="INSERT INTO &quot;LOCATION&quot; (&quot;COUNTRY&quot;, &quot;DISTRICT&quot;, &quot;CITY&quot;, &quot;STREET&quot;, &quot;LOCATION_ID&quot;) VALUES (:COUNTRY, :DISTRICT, :CITY, :STREET, :LOCATION_ID)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;LOCATION&quot;" UpdateCommand="UPDATE &quot;LOCATION&quot; SET &quot;COUNTRY&quot; = :COUNTRY, &quot;DISTRICT&quot; = :DISTRICT, &quot;CITY&quot; = :CITY, &quot;STREET&quot; = :STREET WHERE &quot;LOCATION_ID&quot; = :LOCATION_ID">
                <DeleteParameters>
                    <asp:Parameter Name="LOCATION_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="COUNTRY" Type="String" />
                    <asp:Parameter Name="DISTRICT" Type="String" />
                    <asp:Parameter Name="CITY" Type="String" />
                    <asp:Parameter Name="STREET" Type="String" />
                    <asp:Parameter Name="LOCATION_ID" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="COUNTRY" Type="String" />
                    <asp:Parameter Name="DISTRICT" Type="String" />
                    <asp:Parameter Name="CITY" Type="String" />
                    <asp:Parameter Name="STREET" Type="String" />
                    <asp:Parameter Name="LOCATION_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </div>
</asp:Content>
