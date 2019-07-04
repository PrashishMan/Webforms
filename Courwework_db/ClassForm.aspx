<%@ Page title= "Class"  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClassForm.aspx.cs" Inherits="Courwework_db.ClassForm" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="jumbotron">
        <div class="container">
            <div class ="row">

                <div class="col-xs-12">
                    <asp:Button ID ="BackBtnid" runat="server" Text="Back" class ="btn btn-primary" OnClick="BackBtnid_Click1" />
                </div>
                <div class ="col-xs-6">
                    <h2><span style = "font-weight:bold">Class Schedule</span></h2>
                </div>
                <div class="col-xs-6">
                    <div class="jumbotron" style=" padding:1px; padding-left:20px; float:right"> 
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="CLASS_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1">
                            
                            <InsertItemTemplate>
                                <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                    <div class="row" style ="padding:10px">
                                        <div class="col-xs-6">
                                            <span style ="padding: 10px; color:aliceblue; font-weight:bold;">CLASS_ID:</span>
                                        </div>
                                        <div class ="col-xs-6">
                                            <asp:TextBox ID="TextBox1" class="form-control" runat="server" Text='<%# Bind("CLASS_ID") %>' />
                                        </div>
                                    </div>    

                                    <div class="row" style ="padding:10px">
                                        <div class="col-xs-6">
                                            <span style ="padding: 10px; color:aliceblue; font-weight:bold;">START TIME:</span>
                                        </div>
                                        <div class ="col-xs-6">
                                            <asp:TextBox ID="TextBox2" class="form-control" runat="server" Text='<%# Bind("START_TIME") %>' />
                                        </div>
                                    </div>    

                                    <div class="row" style ="padding:10px">
                                        <div class="col-xs-6">
                                            <span style ="padding: 10px; color:aliceblue; font-weight:bold;">END TIME:</span>
                                        </div>
                                        <div class ="col-xs-6">
                                            <asp:TextBox ID="TextBox3" class="form-control" runat="server" Text='<%# Bind("END_TIME") %>' />
                                        </div>
                                    </div>    

                                    <div class="row" style ="padding:10px">
                                        <div class="col-xs-6">
                                            <span style ="padding: 10px; color:aliceblue; font-weight:bold;">CLASS ROOM:</span>
                                        </div>
                                        <div class ="col-xs-6">
                                            <asp:TextBox ID="TextBox4" class="form-control" runat="server" Text='<%# Bind("CLASS_ROOM") %>' />
                                        </div>
                                    </div>    

                                    <div class="row" style ="padding:10px">
                                        <div class="col-xs-6">
                                            <span style ="padding: 10px; color:aliceblue; font-weight:bold;">INSTITUTE:</span>
                                        </div>
                                        <div class ="col-xs-6">
                                            <asp:DropDownList ID="DropDownList3" class="form-control" runat="server" DataSourceID="SqlDataSource199" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource199" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT &quot;INSTITUTE_NAME&quot;, &quot;INSTITUTE_REG&quot; FROM &quot;INSTITUTE&quot;"></asp:SqlDataSource>
                                        </div>
                                    </div>    

                                    <div class="row" style ="padding:10px">
                                        <div class="col-xs-6">
                                            <span style ="padding: 10px; color:aliceblue; font-weight:bold;">DAY:</span>
                                        </div>
                                        <div class ="col-xs-6">
                                            <asp:TextBox ID="DAYTextBox" CssClass="form-control" runat="server" Text='<%# Bind("DAY") %>' />
                                        </div>
                                    </div>    
                                    
                                    <div style="margin:10px">
                                        <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        <asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </div>
                                </div>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="NewButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Create Class" />
                            </ItemTemplate>
                            <EmptyDataTemplate>
                                <asp:LinkButton ID="NewButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Create Class" />
                            </EmptyDataTemplate>
                        </asp:FormView>
                    </div>
                    
                </div>
                <div class ="col-xs-12">
                </div>
              </div>
        </div>
    </div>    
       
        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CLASS_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1" AllowPaging="True" CssClass="table table-bordered" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CLASS_ID" HeaderText="CLASS_ID" ReadOnly="True" SortExpression="CLASS_ID" />
                    <asp:BoundField DataField="START_TIME" DataFormatString="{0:h:mm tt}" HeaderText="START_TIME" SortExpression="START_TIME" />
                    <asp:BoundField DataField="END_TIME" DataFormatString="{0:h:mm tt}" HeaderText="END_TIME" SortExpression="END_TIME" />
                    <asp:BoundField DataField="CLASS_ROOM" HeaderText="CLASS_ROOM" SortExpression="CLASS_ROOM" />
                    <asp:TemplateField HeaderText="INSTITUTE">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" class="form-control" Enabled="false" runat="server" DataSourceID="SqlDataSource12" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_REG, INSTITUTE_NAME FROM INSTITUTE"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="DAY" HeaderText="DAY" SortExpression="DAY" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;CLASS&quot;" DeleteCommand="DELETE FROM &quot;CLASS&quot; WHERE &quot;CLASS_ID&quot; = :CLASS_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG" InsertCommand="INSERT INTO &quot;CLASS&quot; (&quot;CLASS_ID&quot;, &quot;START_TIME&quot;, &quot;END_TIME&quot;, &quot;CLASS_ROOM&quot;, &quot;INSTITUTE_REG&quot;, &quot;DAY&quot;) VALUES (:CLASS_ID, :START_TIME, :END_TIME, :CLASS_ROOM, :INSTITUTE_REG, :DAY)" UpdateCommand="UPDATE &quot;CLASS&quot; SET &quot;START_TIME&quot; = :START_TIME, &quot;END_TIME&quot; = :END_TIME, &quot;CLASS_ROOM&quot; = :CLASS_ROOM, &quot;DAY&quot; = :DAY WHERE &quot;CLASS_ID&quot; = :CLASS_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG">
                <DeleteParameters>
                    <asp:Parameter Name="CLASS_ID" Type="Decimal" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CLASS_ID" Type="Decimal" />
                    <asp:Parameter Name="START_TIME" Type="DateTime" />
                    <asp:Parameter Name="END_TIME" Type="DateTime" />
                    <asp:Parameter Name="CLASS_ROOM" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                    <asp:Parameter Name="DAY" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="START_TIME" Type="DateTime" />
                    <asp:Parameter Name="END_TIME" Type="DateTime" />
                    <asp:Parameter Name="CLASS_ROOM" Type="String" />
                    <asp:Parameter Name="DAY" Type="String" />
                    <asp:Parameter Name="CLASS_ID" Type="Decimal" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Content>
