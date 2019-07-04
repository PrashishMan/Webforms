<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TeacherCourseEntries.aspx.cs" Inherits="Courwework_db.TeacherCourseEntries" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <div class ="jumbotron">
                <div class="container">
                    <div class ="row">
                        <div class="col-xs-12">
                            <asp:Button ID ="BackBtnid" runat="server" Text="Back" class ="btn btn-primary" OnClick="BackBtnid_Click"  />
                        </div>
                        <div class ="col-xs-6">
                            <h2><span style = "font-weight:bold">Assign Teacher Course </span></h2>
                        </div>
                        <div class ="col-xs-6">
                            <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="COURSE_ID,STAFF_ID,ROLE_ID,INSTITUTE_REG,YEAR" DataSourceID="SqlDataSource1">
                                
                                <InsertItemTemplate>
                                    <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">COURSE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList5" class="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONCAT(CONCAT(COURSE_ID, ' '),NAME) &quot;name&quot;, COURSE_ID FROM COURSE"></asp:SqlDataSource>
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">STAFF:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList6" class="form-control" runat="server" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONCAT(CONCAT(s.FIRST_NAME, ' '),s.LAST_NAME) &quot;Name&quot;, s.USER_ID FROM MEMBER s 
Join STAFF st ON st.staff_id = s.USER_ID"></asp:SqlDataSource>
                                            </div>
                                        </div>    

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">ROLE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList7" class="form-control" runat="server" DataSourceID="SqlDataSource4" DataTextField="ROLE_NAME" DataValueField="ROLE_ID" SelectedValue='<%# Bind("ROLE_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT ROLE_ID, ROLE_NAME FROM ROLE"></asp:SqlDataSource>
                                            </div>
                                            <div class="col-xs-12">
                                                <asp:Button ID="create_role_id" runat="server" class ="btn btn-primary" Text="Create Role" OnClick="create_role_id_Click" />
                                            </div>
                                        </div>    
                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">INSTITUTE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList9" class="form-control" runat="server" DataSourceID="SqlDataSource1324" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1324" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_NAME, INSTITUTE_REG FROM INSTITUTE"></asp:SqlDataSource>
                                            </div>
                                        </div>   
                                        
                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">YEAR:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="YEARTextBox" class="form-control" runat="server" Text='<%# Bind("YEAR") %>' />
                                            </div>
                                        </div>   

                                        <div style="margin:10px">
                                            <asp:LinkButton ID="InsertButton" runat="server" class="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            <asp:LinkButton ID="InsertCancelButton" class="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </div>
                                    </div>
                                    
                                </InsertItemTemplate>
                                <EmptyDataTemplate>
                                    <asp:LinkButton ID="NewButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Assign Course Role" />
                                </EmptyDataTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="NewButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Assign Course Role" />
                                </ItemTemplate>
                            </asp:FormView>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COURSE_ID,STAFF_ID,ROLE_ID,INSTITUTE_REG,YEAR" DataSourceID="SqlDataSource1" AllowPaging="True" CssClass="table table-bordered" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="YEAR" HeaderText="YEAR" ReadOnly="True" SortExpression="YEAR" />
                    <asp:TemplateField HeaderText="COURSE NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList10" Enabled="False" runat="server" class="form-control" DataSourceID="SqlDataSource12" DataTextField="NAME" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT NAME, COURSE_ID FROM COURSE"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TEACHER NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList11" Enabled="False" runat="server" class="form-control" DataSourceID="SqlDataSource133" DataTextField="NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource133" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT m.FIRST_NAME||' '||m.LAST_NAME &quot;NAME&quot;, m.USER_ID FROM MEMBER m
JOIN STAFF s ON m.USER_ID = s.STAFF_ID"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TEACHER ROLE">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList12" Enabled="false" class="form-control" runat="server" DataSourceID="SqlDataSource166" DataTextField="ROLE_NAME" DataValueField="ROLE_ID" SelectedValue='<%# Bind("ROLE_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource166" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT ROLE_ID, ROLE_NAME FROM ROLE"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="INSTITUTE NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList13" Enabled="false" class="form-control" runat="server" DataSourceID="SqlDataSource1345" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1345" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_NAME, INSTITUTE_REG FROM INSTITUTE"></asp:SqlDataSource>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;STAFF_COURSE_ROLE&quot; WHERE &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;STAFF_ID&quot; = :STAFF_ID AND &quot;ROLE_ID&quot; = :ROLE_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG AND &quot;YEAR&quot; = :YEAR" InsertCommand="INSERT INTO &quot;STAFF_COURSE_ROLE&quot; (&quot;COURSE_ID&quot;, &quot;STAFF_ID&quot;, &quot;ROLE_ID&quot;, &quot;INSTITUTE_REG&quot;, &quot;YEAR&quot;) VALUES (:COURSE_ID, :STAFF_ID, :ROLE_ID, :INSTITUTE_REG, :YEAR)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;STAFF_COURSE_ROLE&quot;">
                <DeleteParameters>
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                    <asp:Parameter Name="STAFF_ID" Type="String" />
                    <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                    <asp:Parameter Name="YEAR" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                    <asp:Parameter Name="STAFF_ID" Type="String" />
                    <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                    <asp:Parameter Name="YEAR" Type="Decimal" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
 </asp:Content>
