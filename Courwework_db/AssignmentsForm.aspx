<%@ Page Language="C#" Title="Course Assignments" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssignmentsForm.aspx.cs" Inherits="Courwework_db.AssignmentsForm" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="jumbotron">
        <div class="container">
            <div class ="row">
                 <div class="col-xs-12">
                    <asp:Button ID="assignment_back_btn" runat="server" class="btn btn-primary" Text="Back" OnClick="assignment_back_btn_Click"/>
                </div>
                <div class ="col-xs-6">
                    <h2><span style = "font-weight:bold">Course Assignments</span></h2>
                </div>
                <div class="col-xs-6" >
                    <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ASSIGNMENT_NO,COURSE_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1">
                            <EditItemTemplate>
                                ASSIGNMENT_TITLE:
                                <asp:TextBox ID="ASSIGNMENT_TITLETextBox" runat="server" Text='<%# Bind("ASSIGNMENT_TITLE") %>' />
                                <br />
                                HANDOUT_DATE:
                                <asp:TextBox ID="HANDOUT_DATETextBox" runat="server" Text='<%# Bind("HANDOUT_DATE") %>' />
                                <br />
                                DUE_DATE:
                                <asp:TextBox ID="DUE_DATETextBox" runat="server" Text='<%# Bind("DUE_DATE") %>' />
                                <br />
                                WEIGHTAGE:
                                <asp:TextBox ID="WEIGHTAGETextBox" runat="server" Text='<%# Bind("WEIGHTAGE") %>' />
                                <br />
                                ASSIGNMENT_TYPE:
                                <asp:TextBox ID="ASSIGNMENT_TYPETextBox" runat="server" Text='<%# Bind("ASSIGNMENT_TYPE") %>' />
                                <br />
                                ASSIGNMENT_NO:
                                <asp:Label ID="ASSIGNMENT_NOLabel1" runat="server" Text='<%# Eval("ASSIGNMENT_NO") %>' />
                                <br />
                                COURSE_ID:
                                <asp:Label ID="COURSE_IDLabel1" runat="server" Text='<%# Eval("COURSE_ID") %>' />
                                <br />
                                INSTITUTE_REG:
                                <asp:Label ID="INSTITUTE_REGLabel1" runat="server" Text='<%# Eval("INSTITUTE_REG") %>' />
                                <br />
                                YEAR:
                                <asp:TextBox ID="YEARTextBox" runat="server" Text='<%# Bind("YEAR") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>

                            <EmptyDataTemplate>
                                <asp:LinkButton ID="NewButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Create Assignment" />
                            </EmptyDataTemplate>
                            <InsertItemTemplate>

                                <div style="background-color:#808080; border-radius:20px; padding:10px">
                                     <div class="container-fluid">
                                         <div class="row" style ="padding:10px">
                                            
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">ASSIGNMENT TITLE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="TextBox1" class="form-control" runat="server" Text='<%# Bind("ASSIGNMENT_TITLE") %>' />
                                            </div>
                                        </div>

                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">HANDOUT DATE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="TextBox2" class="form-control" runat="server" Text='<%# Bind("HANDOUT_DATE") %>' />
                                            </div>
                                        </div>

                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">DUE DATE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="TextBox3" class="form-control" runat="server" Text='<%# Bind("DUE_DATE") %>' />
                                            </div>
                                        </div>

                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">WEIGHTAGE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="TextBox4" class="form-control" runat="server" Text='<%# Bind("WEIGHTAGE") %>' />
                                            </div>
                                        </div>

                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">ASSIGNMENT TYPE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="TextBox5" class="form-control" runat="server" Text='<%# Bind("ASSIGNMENT_TYPE") %>' />
                                            </div>
                                        </div>

                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">ASSIGNMENT NO:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="TextBox6" class="form-control" runat="server" Text='<%# Bind("ASSIGNMENT_NO") %>' />
                                            </div>
                                        </div>


                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">COURSE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" DataSourceID="SqlDataSource51" DataTextField="NAME" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource51" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT COURSE_ID, NAME FROM COURSE"></asp:SqlDataSource>
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">INSTITUTE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList3" class="form-control" runat="server" DataSourceID="SqlDataSource61" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource61" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_REG, INSTITUTE_NAME FROM INSTITUTE"></asp:SqlDataSource>
                                            </div>
                                        </div>

                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">YEAR:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="TextBox7" class="form-control" runat="server" Text='<%# Bind("YEAR") %>' />
                                            </div>
                                        </div>
                                        <div style ="float:right">
                                            <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            <asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </div>
                                </div>


                                
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="New" Text="Create Assignment" />
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                </div>
            </div>
        </div>
    </div>   
        <div>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ASSIGNMENT_NO,COURSE_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1" CssClass="table table-bordered" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="INSTITUTE">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" class="form-control" Enabled="false" runat="server" DataSourceID="SqlDataSource41" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource41" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_NAME, INSTITUTE_REG FROM INSTITUTE"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="COURSE">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" class="form-control" Enabled="false" runat="server" DataSourceID="SqlDataSource21" DataTextField="NAME" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT NAME, COURSE_ID FROM COURSE"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ASSIGNMENT_TITLE" HeaderText="TITLE" SortExpression="ASSIGNMENT_TITLE" />
                    <asp:BoundField DataField="HANDOUT_DATE" HeaderText="HANDOUT_DATE" SortExpression="HANDOUT_DATE" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="DUE_DATE" HeaderText="DUE_DATE" SortExpression="DUE_DATE" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:BoundField DataField="WEIGHTAGE" HeaderText="WEIGHTAGE" SortExpression="WEIGHTAGE" />
                    <asp:BoundField DataField="ASSIGNMENT_TYPE" HeaderText="TYPE" SortExpression="ASSIGNMENT_TYPE" />
                    <asp:BoundField DataField="ASSIGNMENT_NO" HeaderText="NUMBER" ReadOnly="True" SortExpression="ASSIGNMENT_NO" />
                    <asp:BoundField DataField="YEAR" HeaderText="YEAR" ReadOnly="True" SortExpression="YEAR" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;ASSIGNMENT&quot; WHERE &quot;ASSIGNMENT_NO&quot; = :ASSIGNMENT_NO AND &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG" InsertCommand="INSERT INTO &quot;ASSIGNMENT&quot; (&quot;ASSIGNMENT_TITLE&quot;, &quot;HANDOUT_DATE&quot;, &quot;DUE_DATE&quot;, &quot;WEIGHTAGE&quot;, &quot;ASSIGNMENT_TYPE&quot;, &quot;ASSIGNMENT_NO&quot;, &quot;COURSE_ID&quot;, &quot;INSTITUTE_REG&quot;, &quot;YEAR&quot;) VALUES (:ASSIGNMENT_TITLE, :HANDOUT_DATE, :DUE_DATE, :WEIGHTAGE, :ASSIGNMENT_TYPE, :ASSIGNMENT_NO, :COURSE_ID, :INSTITUTE_REG, :YEAR)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;ASSIGNMENT&quot;" UpdateCommand="UPDATE &quot;ASSIGNMENT&quot; SET &quot;ASSIGNMENT_TITLE&quot; = :ASSIGNMENT_TITLE, &quot;HANDOUT_DATE&quot; = :HANDOUT_DATE, &quot;DUE_DATE&quot; = :DUE_DATE, &quot;WEIGHTAGE&quot; = :WEIGHTAGE, &quot;ASSIGNMENT_TYPE&quot; = :ASSIGNMENT_TYPE, &quot;YEAR&quot; = :YEAR WHERE &quot;ASSIGNMENT_NO&quot; = :ASSIGNMENT_NO AND &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG">
                <DeleteParameters>
                    <asp:Parameter Name="ASSIGNMENT_NO" Type="Decimal" />
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ASSIGNMENT_TITLE" Type="String" />
                    <asp:Parameter Name="HANDOUT_DATE" Type="DateTime" />
                    <asp:Parameter Name="DUE_DATE" Type="DateTime" />
                    <asp:Parameter Name="WEIGHTAGE" Type="Decimal" />
                    <asp:Parameter Name="ASSIGNMENT_TYPE" Type="String" />
                    <asp:Parameter Name="ASSIGNMENT_NO" Type="Decimal" />
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                    <asp:Parameter Name="YEAR" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ASSIGNMENT_TITLE" Type="String" />
                    <asp:Parameter Name="HANDOUT_DATE" Type="DateTime" />
                    <asp:Parameter Name="DUE_DATE" Type="DateTime" />
                    <asp:Parameter Name="WEIGHTAGE" Type="Decimal" />
                    <asp:Parameter Name="ASSIGNMENT_TYPE" Type="String" />
                    <asp:Parameter Name="YEAR" Type="Decimal" />
                    <asp:Parameter Name="ASSIGNMENT_NO" Type="Decimal" />
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
   
</asp:Content>
