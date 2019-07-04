<%@ Page Language="C#" Title="Staff Member" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="STAFF_Member_form.aspx.cs" Inherits="Courwework_db.WebForm1" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
             <div class ="jumbotron">
                <div class="container">
                    <div class ="row">
                        <div class="col-xs-12">
                            <asp:Button ID="Button1" runat="server" Text="Back" class="btn btn-info" OnClick="Button1_Click1"  />
                        </div>
                    </div>
                    <div class ="row">
                        <div class ="col-xs-6">
                            <h2><span style = "font-weight:bold">Staff-Member Details</span></h2>
                        </div>
                        <div class="col-xs-6" >
                            <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                                <asp:FormView ID="FormView1" runat="server" DataKeyNames="USER_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1">
                                      
                                      <InsertItemTemplate>

                                          <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                                <div class="row" style ="padding:10px">
                                                    <div class="col-xs-6">
                                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">FIRST_NAME:</span>
                                                    </div>
                                                    <div class ="col-xs-6">
                                                        <asp:TextBox ID="TextBox1" runat="server" class ="form-control" Text='<%# Bind("FIRST_NAME") %>' />
                                                    </div>
                                                </div>
                                                <div class="row" style ="padding:10px">
                                                    <div class="col-xs-6">
                                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">LAST_NAME:</span>
                                                    </div>
                                                    <div class ="col-xs-6">
                                                        <asp:TextBox ID="TextBox2" runat="server" class ="form-control" Text='<%# Bind("LAST_NAME") %>' />
                                                    </div>
                                                </div>
                                                <div class="row" style ="padding:10px">
                                                    <div class="col-xs-6">
                                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">CONTACT:</span>
                                                    </div>
                                                    <div class ="col-xs-6">
                                                        <asp:TextBox ID="TextBox3" runat="server" class ="form-control" Text='<%# Bind("CONTACT") %>' />
                                                    </div>
                                                </div>
                                                <div class="row" style ="padding:10px">
                                                    <div class="col-xs-6">
                                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">EMAIL:</span>
                                                    </div>
                                                    <div class ="col-xs-6">
                                                        <asp:TextBox ID="TextBox4" runat="server" class ="form-control" Text='<%# Bind("EMAIL") %>' />
                                                    </div>
                                                </div>
                                                <div class="row" style ="padding:10px">
                                                    <div class="col-xs-6">
                                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">USER_ID:</span>
                                                    </div>
                                                    <div class ="col-xs-6">
                                                        <asp:TextBox ID="TextBox5" runat="server" class ="form-control" Text='<%# Bind("USER_ID") %>' />
                                                    </div>
                                                </div>
                                                <div class="row" style ="padding:10px">
                                                    <div class="col-xs-6">
                                                        <span style ="padding: 10px; color:aliceblue; font-weight:bold;">INSTITUTE_REG:</span>
                                                    </div>
                                                    <div class ="col-xs-6">
                                                        <asp:DropDownList ID="DropDownList1" runat="server" class ="form-control" DataSourceID="SqlDataSource2" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                                                        </asp:DropDownList>
                                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_REG, INSTITUTE_NAME FROM INSTITUTE"></asp:SqlDataSource>
                                                        <br />
                                                    </div>
                                                </div>
                                            
                                                <div style ="float:right">
                                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" class ="btn btn-primary"/>
                                         <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" class ="btn btn-danger"/>
                                                </div>
                                            </div>
                                        </div>
                                    </InsertItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Create Memeber"  CssClass="btn btn-primary"/>
                                    </EmptyDataTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Create Memeber"  CssClass="btn btn-primary"/>
                                    </ItemTemplate>
                                    
                                </asp:FormView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="USER_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1" CssClass="table table-bordered" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST_NAME" SortExpression="FIRST_NAME" />
                    <asp:BoundField DataField="LAST_NAME" HeaderText="LAST_NAME" SortExpression="LAST_NAME" />
                    <asp:BoundField DataField="CONTACT" HeaderText="CONTACT" SortExpression="CONTACT" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="USER_ID" HeaderText="USER_ID" ReadOnly="True" SortExpression="USER_ID" />
                    <asp:TemplateField HeaderText="INSTITUTE">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_REG, INSTITUTE_NAME FROM INSTITUTE"></asp:SqlDataSource>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;MEMBER&quot; WHERE &quot;USER_ID&quot; = :USER_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG" InsertCommand="INSERT INTO &quot;MEMBER&quot; (&quot;FIRST_NAME&quot;, &quot;LAST_NAME&quot;, &quot;CONTACT&quot;, &quot;EMAIL&quot;, &quot;USER_ID&quot;, &quot;INSTITUTE_REG&quot;) VALUES (:FIRST_NAME, :LAST_NAME, :CONTACT, :EMAIL, :USER_ID, :INSTITUTE_REG)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;MEMBER&quot;" UpdateCommand="UPDATE &quot;MEMBER&quot; SET &quot;FIRST_NAME&quot; = :FIRST_NAME, &quot;LAST_NAME&quot; = :LAST_NAME, &quot;CONTACT&quot; = :CONTACT, &quot;EMAIL&quot; = :EMAIL WHERE &quot;USER_ID&quot; = :USER_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG">
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
