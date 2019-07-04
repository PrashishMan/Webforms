<%@ Page Title="TeacherDetails" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeacherDetails.aspx.cs" Inherits="Courwework_db.TeacherDetails" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <div class ="jumbotron">
                <div class="container">
                    <div class ="row">
                        <div class ="col-xs-6">
                            <h2><span style = "font-weight:bold">Staff</span></h2>
                        </div>
                        <div class ="col-xs-6">
                            <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STAFF_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1" >
                                
                                <InsertItemTemplate>

                                    <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">STAFF_ID:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList5" runat="server" class="form-control" DataSourceID="SqlDataSource7" DataTextField="name" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONCAT(CONCAT(FIRST_NAME, ' '), LAST_NAME) &quot;name&quot;, USER_ID FROM MEMBER"></asp:SqlDataSource>
                                            </div>
                                            <div class="col-xs-12">
                                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Create Member" OnClick="Button1_Click1" />
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">INSTITUTE_REG:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList4" class="form-control" runat="server" DataSourceID="SqlDataSource8" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_NAME, INSTITUTE_REG FROM INSTITUTE"></asp:SqlDataSource>
                                            </div>
                                        </div>    

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">HIRE DATE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="JOIN_DATETextBox" class="form-control" runat="server" Text='<%# Bind("HIRE_DATE") %>' />
                                            </div>
                                        </div>  
                                        
                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">STAFF TYPE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList6" class="form-control" runat="server" SelectedValue='<%# Bind("STAFF_TYPE") %>'>
                                                    <asp:ListItem Value="FULL_TIME">FULL TIME</asp:ListItem>
                                                    <asp:ListItem Value="PART_TIME">PART TIME</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>  
                                        <div style="margin:10px">
                                            <asp:LinkButton ID="InsertButton" runat="server" class="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" class="btn btn-danger" CommandName="Cancel" Text="Cancel" />
                                        </div>
                                    </div>
                                </InsertItemTemplate>
                                <EmptyDataTemplate>
                                    <asp:LinkButton ID="NewButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="CREATE STAFF" />
                                </EmptyDataTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="NewButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="CREATE STAFF" />
                                </ItemTemplate>
                            </asp:FormView>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
            <div class="jumbotron" style="padding:4px">
                <asp:Button ID="staff_location_id" runat="server" class="btn btn-primary" Text="Assign Staff Location" OnClick="staff_location_id_Click" /> 
                <asp:Button ID="staff_department_id" runat="server" class="btn btn-primary" Text="Assign Staff Department" OnClick="staff_department_id_Click"  /> 
          </div>
        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" CssClass="table table-bordered" DataKeyNames="STAFF_ID,INSTITUTE_REG" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:TemplateField HeaderText="STAFF NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" class="form-control" Enabled="false" runat="server" DataSourceID="SqlDataSource122" DataTextField="NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource122" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT FIRST_NAME||' '|| LAST_NAME &quot;NAME&quot;, USER_ID FROM MEMBER"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CONTACT">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" class="form-control" Enabled="false" runat="server" DataSourceID="SqlDataSource123" DataTextField="CONTACT" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource123" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONTACT, USER_ID FROM MEMBER"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="HIRE_DATE" HeaderText="HIRE_DATE" SortExpression="HIRE_DATE" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="STAFF_TYPE" HeaderText="STAFF_TYPE" SortExpression="STAFF_TYPE" />
                    <asp:TemplateField HeaderText="EMAIL">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList3" class="form-control" Enabled="false" runat="server" DataSourceID="SqlDataSource145" DataTextField="EMAIL" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource145" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT EMAIL, USER_ID FROM MEMBER"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="INSTITUTE NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList4" class="form-control" Enabled="false" runat="server" DataSourceID="SqlDataSource167" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource167" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_REG, INSTITUTE_NAME FROM INSTITUTE"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;STAFF&quot; ORDER BY HIRE_DATE DESC" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;STAFF_ID&quot; = :STAFF_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;STAFF_ID&quot;, &quot;INSTITUTE_REG&quot;, &quot;HIRE_DATE&quot;, &quot;STAFF_TYPE&quot;) VALUES (:STAFF_ID, :INSTITUTE_REG, :HIRE_DATE, :STAFF_TYPE)" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;HIRE_DATE&quot; = :HIRE_DATE, &quot;STAFF_TYPE&quot; = :STAFF_TYPE WHERE &quot;STAFF_ID&quot; = :STAFF_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG">
            <DeleteParameters>
                <asp:Parameter Name="STAFF_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STAFF_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                <asp:Parameter Name="HIRE_DATE" Type="DateTime" />
                <asp:Parameter Name="STAFF_TYPE" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="HIRE_DATE" Type="DateTime" />
                <asp:Parameter Name="STAFF_TYPE" Type="String" />
                <asp:Parameter Name="STAFF_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;MEMBER&quot; WHERE &quot;USER_ID&quot; = :USER_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG" InsertCommand="INSERT INTO &quot;MEMBER&quot; (&quot;FIRST_NAME&quot;, &quot;LAST_NAME&quot;, &quot;CONTACT&quot;, &quot;EMAIL&quot;, &quot;USER_ID&quot;, &quot;INSTITUTE_REG&quot;) VALUES (:FIRST_NAME, :LAST_NAME, :CONTACT, :EMAIL, :USER_ID, :INSTITUTE_REG)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT FIRST_NAME||' '||LAST_NAME &quot;NAME&quot;, user_id  FROM &quot;MEMBER&quot;" UpdateCommand="UPDATE &quot;MEMBER&quot; SET &quot;FIRST_NAME&quot; = :FIRST_NAME, &quot;LAST_NAME&quot; = :LAST_NAME, &quot;CONTACT&quot; = :CONTACT, &quot;EMAIL&quot; = :EMAIL WHERE &quot;USER_ID&quot; = :USER_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG">
            <DeleteParameters>
                <asp:Parameter Name="USER_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FIRST_NAME" Type="String" />
                <asp:Parameter Name="LAST_NAME" Type="String" />
                <asp:Parameter Name="CONTACT" Type="Decimal" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="USER_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FIRST_NAME" Type="String" />
                <asp:Parameter Name="LAST_NAME" Type="String" />
                <asp:Parameter Name="CONTACT" Type="Decimal" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="USER_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>
