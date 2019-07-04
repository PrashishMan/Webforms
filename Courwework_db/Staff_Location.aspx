<%@ Page  MasterPageFile="~/Site.Master" Title="Staff Location" Language="C#" AutoEventWireup="true" CodeBehind="Staff_Location.aspx.cs" Inherits="Courwework_db.Staff_Location" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="jumbotron">
        <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <asp:Button ID="staff_location_back_id" runat="server" class="btn btn-primary" Text="Back" OnClick="staff_location_back_id_Click" />
                        </div>
                    </div>
                    <div class ="row">
                        <div class ="col-xs-6">
                            <h2><span style = "font-weight:bold">Staff Location Entry</span></h2>
                        </div>
                        <div class ="col-xs-6">
                            <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STAFF_ID,INSTITUTE_REG,LOCATION_ID" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging" >
                                <InsertItemTemplate>
                                    <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">STAFF:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList2" class ="form-control" runat="server" DataSourceID="SqlDataSource6" DataTextField="NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONCAT(CONCAT(m.FIRST_NAME, ' '), m.LAST_NAME) &quot;NAME&quot;, m.user_id FROM MEMBER m 
                                                JOIN STAFF s ON m.user_id = s.staff_id"></asp:SqlDataSource>
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">LOCATION:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList1" class ="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="loc" DataValueField="LOCATION_ID" SelectedValue='<%# Bind("LOCATION_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONCAT(CONCAT(CONCAT(CONCAT(COUNTRY, ', '),City ), ' ,'),STREET) &quot;loc&quot; , location_id from location">
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>    

                                        <div class="row">
                                            <div class="col-xs-12">
                                                <asp:Button ID="createLocationbtn" runat="server" Text="Create Location" CssClass="btn btn-primary" OnClick="createLocationbtn_Click" />
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">LOCATION TYPE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList9" class ="form-control" runat="server" SelectedValue='<%# Bind("LOCATION_TYPE") %>'>
                                                    <asp:ListItem Value="TEMPORARY">TEMPORARY</asp:ListItem>
                                                    <asp:ListItem Value="PERMANENT">PERMANENT</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>    
                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">INSTITUTE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList8" class ="form-control" runat="server" DataSourceID="SqlDataSource5" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_NAME, INSTITUTE_REG FROM INSTITUTE"></asp:SqlDataSource>
                                            </div>
                                        </div>    
                                        <div style="margin:10px">
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" class="btn btn-success" CommandName="Insert" Text="Insert" />
                                            <asp:LinkButton ID="InsertCancelButton" runat="server" class="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </div>
                                    </div>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                     <asp:LinkButton ID="NewButton" runat="server" class="btn btn-primary" CausesValidation="False" CommandName="New" Text="Add Staff Location" />
                                </ItemTemplate>
                                <EmptyDataTemplate>
                                    <asp:LinkButton ID="NewButton" runat="server" class="btn btn-primary" CausesValidation="False" CommandName="New" Text="Add Staff Location" />
                                </EmptyDataTemplate>
                            </asp:FormView>
                            </div>
                        </div>
                        
                  </div>
            </div>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STAFF_ID,INSTITUTE_REG,LOCATION_ID" DataSourceID="SqlDataSource1" CssClass="table table-bordered" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="STAFF">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList10" runat="server" DataSourceID="SqlDataSource21" DataTextField="name" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT m.FIRST_NAME||' '||m.last_name &quot;name&quot;, m.user_id FROM MEMBER m 
JOIN STAFF s on m.user_id = s.staff_id"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="INSTITUTE">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="SqlDataSource22" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_NAME, INSTITUTE_REG FROM INSTITUTE"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="LOCATION">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList12" runat="server" DataSourceID="SqlDataSource23" DataTextField="location" DataValueField="LOCATION_ID" SelectedValue='<%# Bind("LOCATION_ID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource23" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT COUNTRY||', '||CITY||' , '||STREET &quot;location&quot;, location_id FROM LOCATION"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="LOCATION_TYPE" HeaderText="LOCATION_TYPE" SortExpression="LOCATION_TYPE" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;STAFF_LOCATION&quot; WHERE &quot;STAFF_ID&quot; = :STAFF_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG AND &quot;LOCATION_ID&quot; = :LOCATION_ID" InsertCommand="INSERT INTO &quot;STAFF_LOCATION&quot; (&quot;STAFF_ID&quot;, &quot;INSTITUTE_REG&quot;, &quot;LOCATION_ID&quot;, &quot;LOCATION_TYPE&quot;) VALUES (:STAFF_ID, :INSTITUTE_REG, :LOCATION_ID, :LOCATION_TYPE)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;STAFF_LOCATION&quot;" UpdateCommand="UPDATE &quot;STAFF_LOCATION&quot; SET &quot;LOCATION_TYPE&quot; = :LOCATION_TYPE WHERE &quot;STAFF_ID&quot; = :STAFF_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG AND &quot;LOCATION_ID&quot; = :LOCATION_ID">
            <DeleteParameters>
                <asp:Parameter Name="STAFF_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                <asp:Parameter Name="LOCATION_ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STAFF_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                <asp:Parameter Name="LOCATION_ID" Type="Decimal" />
                <asp:Parameter Name="LOCATION_TYPE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="LOCATION_TYPE" Type="String" />
                <asp:Parameter Name="STAFF_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                <asp:Parameter Name="LOCATION_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>


</asp:Content>
