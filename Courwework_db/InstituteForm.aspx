<%@ Page Title="Institute" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InstituteForm.aspx.cs" Inherits="Courwework_db.InstituteForm" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <div class ="jumbotron">
                <div class ="container">
                    <div class="row">
                        <div class ="col-xs-6">
                            <h2><span style = "font-weight:bold">Instiute</span></h2>
                        </div>
                        <div class ="col-xs-6">
                            <div  style="padding:1px; float:right"> 
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="INSTITUTE_REG" DataSourceID="SqlDataSource1">
                                <InsertItemTemplate>
                                    <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">INSTITUTE_NAME:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="INSTITUTE_NAMETextBox" class="form-control" runat="server" Text='<%# Bind("INSTITUTE_NAME") %>' />
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">INSTITUTE_REG:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="INSTITUTE_REGTextBox" class="form-control" runat="server" Text='<%# Bind("INSTITUTE_REG") %>' />
                                            </div>
                                        </div>    

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">REGISTERED_DATE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="REGISTERED_DATETextBox" class="form-control" runat="server" Text='<%# Bind("REGISTERED_DATE") %>' />
                                            </div>
                                        </div>    
                                        <div style="margin:10px">
                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" class="btn btn-success" />
                                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" class="btn btn-danger"/>
                                        </div>
                                    </div>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                     <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" class="btn btn-primary" CommandName="New" Text="Create Institute" />
                                </ItemTemplate>
                                <EmptyDataTemplate>
                                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" class="btn btn-primary" CommandName="New" Text="Create Institute" />
                                </EmptyDataTemplate>
                            </asp:FormView>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
            
               
               
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="INSTITUTE_REG" DataSourceID="SqlDataSource1" CssClass="table table-bordered" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="INSTITUTE_NAME" HeaderText="INSTITUTE_NAME" SortExpression="INSTITUTE_NAME" />
                    <asp:BoundField DataField="INSTITUTE_REG" HeaderText="INSTITUTE_REG" ReadOnly="True" SortExpression="INSTITUTE_REG" />
                    <asp:BoundField DataField="REGISTERED_DATE" HeaderText="REGISTERED_DATE" SortExpression="REGISTERED_DATE" DataFormatString="{0:dd/MM/yyyy}" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;INSTITUTE&quot; WHERE &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG" InsertCommand="INSERT INTO &quot;INSTITUTE&quot; (&quot;INSTITUTE_NAME&quot;, &quot;INSTITUTE_REG&quot;, &quot;REGISTERED_DATE&quot;) VALUES (:INSTITUTE_NAME, :INSTITUTE_REG, :REGISTERED_DATE)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;INSTITUTE&quot;" UpdateCommand="UPDATE &quot;INSTITUTE&quot; SET &quot;INSTITUTE_NAME&quot; = :INSTITUTE_NAME, &quot;REGISTERED_DATE&quot; = :REGISTERED_DATE WHERE &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG">
                <DeleteParameters>
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="INSTITUTE_NAME" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                    <asp:Parameter Name="REGISTERED_DATE" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="INSTITUTE_NAME" Type="String" />
                    <asp:Parameter Name="REGISTERED_DATE" Type="DateTime" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
  </asp:Content>