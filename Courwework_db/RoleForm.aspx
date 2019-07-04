<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoleForm.aspx.cs" Inherits="Courwework_db.RoleForm" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <div class ="jumbotron">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <asp:Button ID="role_back_id" runat="server" class="btn btn-primary" Text="Back" OnClick="role_back_id_Click"/>
                        </div>
                    </div>
                    <div class ="row">
                        <div class ="col-xs-6">
                            <h2><span style = "font-weight:bold">Role</span></h2>
                        </div>
                        <div class ="col-xs-6">
                            <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ROLE_ID" DataSourceID="SqlDataSource1">
                                
                                <InsertItemTemplate>
                                    <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                    <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">ROLE_ID:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="ROLE_IDTextBox" class="form-control" runat="server" Text='<%# Bind("ROLE_ID") %>' />
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">ROLE_NAME:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="ROLE_NAMETextBox" class="form-control" runat="server" Text='<%# Bind("ROLE_NAME") %>' />
                                            </div>
                                        </div>   
                                    
                                        <div class="row" style ="padding:10px">
                                                <div class="col-xs-6">
                                                    <span style ="padding: 10px; color:aliceblue; font-weight:bold;">ROLE_REQUIREMENT:</span>
                                                </div>
                                                <div class ="col-xs-6">
                                                     <asp:TextBox ID="ROLE_REQUIREMENTTextBox" class="form-control" runat="server" Text='<%# Bind("ROLE_REQUIREMENT") %>' />
                                                </div>
                                            </div>    

                                        <asp:LinkButton ID="InsertButton" class="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        <asp:LinkButton ID="InsertCancelButton" class="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </div>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                   <asp:LinkButton ID="NewButton" runat="server" class="btn btn-primary" CausesValidation="False" CommandName="New" Text="Create Role" />
                                </ItemTemplate>

                                <EmptyDataTemplate>
                                   <asp:LinkButton ID="NewButton" runat="server" class="btn btn-primary" CausesValidation="False" CommandName="New" Text="Create Role" />
                                </EmptyDataTemplate>

                            </asp:FormView>
                            </div>
                        </div>
                    </div>
                </div>
             </div>

            
            </div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ROLE_ID" DataSourceID="SqlDataSource1" CssClass="table table-bordered" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" ReadOnly="True" SortExpression="ROLE_ID" />
                    <asp:BoundField DataField="ROLE_NAME" HeaderText="ROLE_NAME" SortExpression="ROLE_NAME" />
                    <asp:BoundField DataField="ROLE_REQUIREMENT" HeaderText="ROLE_REQUIREMENT" SortExpression="ROLE_REQUIREMENT" />
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

            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;ROLE&quot; WHERE &quot;ROLE_ID&quot; = :ROLE_ID" InsertCommand="INSERT INTO &quot;ROLE&quot; (&quot;ROLE_ID&quot;, &quot;ROLE_NAME&quot;, &quot;ROLE_REQUIREMENT&quot;) VALUES (:ROLE_ID, :ROLE_NAME, :ROLE_REQUIREMENT)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;ROLE&quot;" UpdateCommand="UPDATE &quot;ROLE&quot; SET &quot;ROLE_NAME&quot; = :ROLE_NAME, &quot;ROLE_REQUIREMENT&quot; = :ROLE_REQUIREMENT WHERE &quot;ROLE_ID&quot; = :ROLE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                    <asp:Parameter Name="ROLE_NAME" Type="String" />
                    <asp:Parameter Name="ROLE_REQUIREMENT" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ROLE_NAME" Type="String" />
<asp:Parameter Name="ROLE_REQUIREMENT" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        
</asp:Content>