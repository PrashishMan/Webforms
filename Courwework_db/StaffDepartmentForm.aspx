<%@ Page Language="C#" Title ="Staff Department" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffDepartmentForm.aspx.cs" Inherits="Courwework_db.StaffDepartmentForm" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class ="jumbotron">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <asp:Button ID="staff_department_back_id" runat="server" class="btn btn-primary" Text="Back" OnClick="staff_department_back_id_Click" />
                        </div>
                    </div>
                    <div class ="row">
                        <div class ="col-xs-6">
                            <h2><span style = "font-weight:bold">Staff Department</span></h2>
                        </div>
                        <div class ="col-xs-6">
                            <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                            <asp:FormView ID="FormView2" runat="server" DataKeyNames="STAFF_ID,DEPARTMENT_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1">
                                <InsertItemTemplate>
                                    <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                        
                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">STAFF_ID:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" DataSourceID="SqlDataSource21" DataTextField="NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT m.FIRST_NAME||' '||m.LAST_NAME &quot;NAME&quot;, m.user_id FROM  MEMBER m
JOIN STAFF s ON s.STAFF_ID = m.USER_ID"></asp:SqlDataSource>
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">DEPARTMENT_ID:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList5" runat="server" class="form-control" DataSourceID="SqlDataSource22" DataTextField="DEPARTMENT_NAME" DataValueField="DEPARTMENT_ID" SelectedValue='<%# Bind("DEPARTMENT_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT DEPARTMENT_NAME, DEPARTMENT_ID FROM DEPARTMENT"></asp:SqlDataSource>
                                            </div>
                                        </div>    

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">INSTITUTE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList6" runat="server" class="form-control" DataSourceID="SqlDataSource23" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource23" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_REG, INSTITUTE_NAME FROM INSTITUTE"></asp:SqlDataSource>
                                            </div>
                                        </div>    

                                        
                                        <div style="margin:10px">
                                            <asp:LinkButton ID="InsertButton" runat="server" class="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" class="btn btn-danger" CommandName="Cancel" Text="Cancel" />
                                        </div>
                                    </div>
                                </InsertItemTemplate>
                                <EmptyDataTemplate>
                                     <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" class="btn btn-primary" CommandName="New" Text="Assign Department" />
                                </EmptyDataTemplate>
                                <ItemTemplate>
                                     <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" class="btn btn-primary" CommandName="New" Text="Assign Department" />
                                </ItemTemplate>
                            </asp:FormView>
                            </div>
                        </div>
                    </div>
                </div>
             </div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STAFF_ID,DEPARTMENT_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1" CssClass="table table-bordered" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:TemplateField HeaderText="STAFF">
                        <ItemTemplate>
                            <asp:DropDownList Enabled="false" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource21" DataTextField="NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT m.FIRST_NAME||' '||m.LAST_NAME &quot;NAME&quot;, m.user_id from MEMBER m
JOIN STAFF s on s.staff_id = m.user_id"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DEPARTMENT">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" Enabled="false" runat="server" DataSourceID="SqlDataSource22" DataTextField="DEPARTMENT_NAME" DataValueField="DEPARTMENT_ID" SelectedValue='<%# Bind("DEPARTMENT_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT DEPARTMENT_NAME, DEPARTMENT_ID FROM DEPARTMENT"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="INSTITUTE">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList3" Enabled="false" runat="server" DataSourceID="SqlDataSource24" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource24" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_REG, INSTITUTE_NAME FROM INSTITUTE"></asp:SqlDataSource>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;STAFF_DEPARTMENT&quot; WHERE &quot;STAFF_ID&quot; = :STAFF_ID AND &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG" InsertCommand="INSERT INTO &quot;STAFF_DEPARTMENT&quot; (&quot;STAFF_ID&quot;, &quot;DEPARTMENT_ID&quot;, &quot;INSTITUTE_REG&quot;) VALUES (:STAFF_ID, :DEPARTMENT_ID, :INSTITUTE_REG)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;STAFF_DEPARTMENT&quot;">
                <DeleteParameters>
                    <asp:Parameter Name="STAFF_ID" Type="String" />
                    <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STAFF_ID" Type="String" />
                    <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </InsertParameters>
            </asp:SqlDataSource>
    </asp:Content>