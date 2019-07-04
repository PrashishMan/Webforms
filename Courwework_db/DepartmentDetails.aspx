<%@ Page Title="Department" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="DepartmentDetails.aspx.cs" Inherits="Courwework_db.DepartmentDetails" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <div class ="jumbotron">
                <div class="container">
                    <div class ="row">
                        <div class ="col-xs-6">
                            <h2><span style = "font-weight:bold">Department</span></h2>
                        </div>
                        <div class ="col-xs-6">
                            <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                            <asp:FormView ID="FormView1" runat="server"  DataKeyNames="DEPARTMENT_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1" BorderStyle="None" ForeColor="#333333">
                                <InsertItemTemplate>
                                      <div style="background-color:#808080; border-radius:20px; padding:10px">
                                            <div class="container-fluid">
                                                <div class="row" style ="padding:10px">
                                                    <div class="col-xs-6">
                                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">DEPARTMENT_ID:</span>
                                                    </div>
                                                    <div class ="col-xs-6">
                                                        <asp:TextBox ID="DEPARTMENT_IDTextBox" class="form-control" runat="server" Text='<%# Bind("DEPARTMENT_ID") %>' />
                                                    </div>
                                                </div>
                                                <div class="row" style ="padding:10px">
                                                    <div class="col-xs-6">
                                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">DEPARTMENT_NAME:</span>
                                                    </div>
                                                    <div class ="col-xs-6">
                                                        <asp:TextBox ID="TextBox1" class="form-control" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />
                                                    </div>
                                                </div>
                                                <div class="row" style ="padding:10px">
                                                    <div class="col-xs-6">
                                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">DEPARTMENT_MANAGER:</span>
                                                    </div>
                                                    <div class ="col-xs-6">
                                                         <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" DataSourceID="SqlDataSource5" DataTextField="Name" DataValueField="USER_ID" SelectedValue='<%# Bind("DEPARTMENT_MANAGER") %>'>
                                                            </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONCAT(CONCAT(m.FIRST_NAME, ' '),m.LAST_NAME) &quot;Name&quot;, m.USER_ID from Member m JOIN Staff s on s.staff_id = m.user_id"></asp:SqlDataSource>
                                                    </div>
                                                </div>
                                                <div class="row" style ="padding:10px">
                                                    <div class="col-xs-6">
                                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">INSTITUTE_REG:</span>
                                                    </div>
                                                    <div class ="col-xs-6">
                                                        <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" DataSourceID="SqlDataSource9" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_NAME, INSTITUTE_REG FROM INSTITUTE"></asp:SqlDataSource>
                                                    </div>
                                                </div>
                                        
                                                <div style ="float:right">
                                                    <asp:LinkButton ID="InsertButton" class="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                                    <asp:LinkButton ID="InsertCancelButton" class="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                                </div> 
                                      
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="NewButton" style="float:left" runat="server" CausesValidation="False" CommandName="New" Text="Create Department" CssClass="btn btn-primary" />
                                    </ItemTemplate>
                                <EmptyDataTemplate>
                                    <asp:LinkButton ID="NewButton" style="float:left" runat="server" CausesValidation="False" CommandName="New" Text="Create Department" CssClass="btn btn-primary" />
                                </EmptyDataTemplate>
                                </asp:FormView>
                            </div>
                        </div>
                    </div>
                </div>
             </div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DEPARTMENT_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1" BackColor="White" CssClass="table table-borderd" PageSize="20" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
                    <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
                    <asp:TemplateField HeaderText="DEPARTMENT_MANAGER">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" Enabled="false" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="USER_ID" SelectedValue='<%# Bind("DEPARTMENT_MANAGER") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONCAT(CONCAT(m.FIRST_NAME, ' '),m.LAST_NAME) &quot;Name&quot;, m.USER_ID from Member m JOIN Staff s on s.staff_id = m.user_id"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONCAT(CONCAT(m.FIRST_NAME, ' '),m.LAST_NAME) &quot;Name&quot;, m.USER_ID from Member m JOIN Staff s on s.staff_id = m.user_id and m.user_id like 'TC-%'"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="INSTITUTE">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" Enabled="false" class="form-control" runat="server" DataSourceID="SqlDataSource12" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT &quot;INSTITUTE_REG&quot;, &quot;INSTITUTE_NAME&quot; FROM &quot;INSTITUTE&quot;"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;DEPARTMENT_MANAGER&quot;, &quot;INSTITUTE_REG&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME, :DEPARTMENT_MANAGER, :INSTITUTE_REG)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME, &quot;DEPARTMENT_MANAGER&quot; = :DEPARTMENT_MANAGER WHERE &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG">
                <DeleteParameters>
                    <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                    <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
                    <asp:Parameter Name="DEPARTMENT_MANAGER" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
                    <asp:Parameter Name="DEPARTMENT_MANAGER" Type="String" />
                    <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Panel ID="Panel1" runat="server" BackColor="#666666">
                <asp:Panel ID="Panel2" runat="server" BackColor="#999999" Width="617px">
                </asp:Panel>
            </asp:Panel>
        </div>
    </asp:Content>

