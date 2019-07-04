<%@ Page Language="C#" Title="Student Assignment" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentAssignmentEntry.aspx.cs" Inherits="Courwework_db.StudentAssignmentEntry" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class ="jumbotron">
                <div class="container">
                    <div class ="row">
                        <div class="col-xs-12">
                            <asp:Button ID ="BackBtnid" runat="server" Text="Back" class ="btn btn-primary" OnClick="BackBtnid_Click"  />
                        </div>
                        <div class ="col-xs-6">
                            <h2><span style = "font-weight:bold">Student Assignment</span></h2>
                        </div>
                        <div class ="col-xs-6">
                            <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID,INSTITUTE_REG,ASSIGNMENT_NO,COURSE_ID,ATTEMPT_NO,ASSIGNMENT_YEAR" DataSourceID="SqlDataSource1" Height="16px">
                               
                                <InsertItemTemplate>
                                    <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">SUBMIT_DATE:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="SUBMIT_DATETextBox" class="form-control" runat="server" Text='<%# Bind("SUBMIT_DATE") %>' />
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">MARKS OBTAINED:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="MARKS_OBTAINEDTextBox" class="form-control" runat="server" Text='<%# Bind("MARKS_OBTAINED") %>' />
                                            </div>
                                        </div>    

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">STUDENT:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" DataSourceID="SqlDataSource21" DataTextField="NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT m.FIRST_NAME||' '||m.LAST_NAME &quot;NAME&quot;, m.user_id FROM MEMBER m 
JOIN STUDENT s ON s.STUDENT_ID = m.USER_ID"></asp:SqlDataSource>
                                            </div>
                                        </div>    

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">INSTITUTE:</span>
                                            </div>
                                            <div class ="col-xs-6"> 
                                                <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" DataSourceID="SqlDataSource22" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_REG, INSTITUTE_NAME FROM INSTITUTE"></asp:SqlDataSource>
                                            </div>
                                        </div>   
                                        
                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">COURSE:</span>
                                            </div>
                                            <div class ="col-xs-6"> 
                                                <asp:DropDownList ID="DropDownList3" class="form-control" runat="server" DataSourceID="SqlDataSource24" DataTextField="NAME" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource24" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT COURSE_ID||' - '||NAME as &quot;NAME&quot;, COURSE_ID FROM COURSE"></asp:SqlDataSource>
                                            </div>
                                        </div>    

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">Assignment No:</span>
                                            </div>
                                            <div class ="col-xs-6"> 
                                                <asp:TextBox ID="TextBox1" class="form-control" runat="server" Text='<%# Bind("ASSIGNMENT_NO") %>' />
                                            </div>
                                        </div>   
                                        
                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">Assignment YEAR:</span>
                                            </div>
                                            <div class ="col-xs-6"> 
                                                <asp:TextBox ID="TextBox2" class="form-control" runat="server" Text='<%# Bind("ASSIGNMENT_YEAR") %>' />
                                            </div>
                                        </div> 

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">Attempt No:</span>
                                            </div>
                                            <div class ="col-xs-6"> 
                                                <asp:TextBox ID="ATTEMPT_NOTextBox" class="form-control" runat="server" Text='<%# Bind("ATTEMPT_NO") %>' />
                                            </div>
                                        </div>    

                                        
                                        <div style="margin:10px">
                                            <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            <asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btn btn-danger" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </div>
                                    </div>

                                    
                                    
                                   
                                </InsertItemTemplate>
                                <EmptyDataTemplate>
                                     <asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="New" Text="Insert Student Assignment" />
                                </EmptyDataTemplate>
                                <ItemTemplate>
                                     <asp:LinkButton ID="NewButton" runat="server" CssClass="btn btn-primary" CausesValidation="False" CommandName="New" Text="Insert Student Assignment" />
                                </ItemTemplate>
                            </asp:FormView>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID,INSTITUTE_REG,ASSIGNMENT_NO,COURSE_ID,ATTEMPT_NO,ASSIGNMENT_YEAR" DataSourceID="SqlDataSource1" CssClass="table table-bordered" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="SUBMIT_DATE" HeaderText="SUBMIT_DATE" SortExpression="SUBMIT_DATE" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:TemplateField HeaderText="STUDENT">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList4" Enabled="false" runat="server" DataSourceID="SqlDataSource41" DataTextField="Name" DataValueField="USER_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource41" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT m.FIRST_NAME||' '||m.LAST_NAME &quot;Name&quot;, m.USER_ID FROM MEMBER m
JOIN STUDENT s ON s.STUDENT_ID = m.USER_ID"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="COURSE">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList6" Enabled="false" runat="server" DataSourceID="SqlDataSource43" DataTextField="NAME" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource43" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT COURSE_ID||' - '||NAME AS &quot;NAME&quot;, COURSE_ID FROM COURSE"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ASSIGNMENT_NO" HeaderText="ASSIGNMENT NO" ReadOnly="True" SortExpression="ASSIGNMENT_NO" />
                <asp:BoundField DataField="Assignment_year" HeaderText="ASSIGNMENT YEAR" ReadOnly="True" SortExpression="Assignment_year" />
                <asp:BoundField DataField="MARKS_OBTAINED" HeaderText="MARKS OBTAINED" SortExpression="MARKS_OBTAINED" />
                <asp:TemplateField HeaderText="INSTITUTE">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList5" Enabled="false" runat="server" DataSourceID="SqlDataSource42" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource42" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_NAME, INSTITUTE_REG FROM INSTITUTE"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ATTEMPT_NO" HeaderText="ATTEMPT NO" ReadOnly="True" SortExpression="ATTEMPT_NO" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT_ASSIGNMENT&quot;" DeleteCommand="DELETE FROM &quot;STUDENT_ASSIGNMENT&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG AND &quot;ASSIGNMENT_NO&quot; = :ASSIGNMENT_NO AND &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;ATTEMPT_NO&quot; = :ATTEMPT_NO AND &quot;ASSIGNMENT_YEAR&quot; = :ASSIGNMENT_YEAR" InsertCommand="INSERT INTO &quot;STUDENT_ASSIGNMENT&quot; (&quot;SUBMIT_DATE&quot;, &quot;MARKS_OBTAINED&quot;, &quot;STUDENT_ID&quot;, &quot;INSTITUTE_REG&quot;, &quot;ASSIGNMENT_NO&quot;, &quot;COURSE_ID&quot;, &quot;ATTEMPT_NO&quot;, &quot;ASSIGNMENT_YEAR&quot;) VALUES (:SUBMIT_DATE, :MARKS_OBTAINED, :STUDENT_ID, :INSTITUTE_REG, :ASSIGNMENT_NO, :COURSE_ID, :ATTEMPT_NO, :ASSIGNMENT_YEAR)" UpdateCommand="UPDATE &quot;STUDENT_ASSIGNMENT&quot; SET &quot;SUBMIT_DATE&quot; = :SUBMIT_DATE, &quot;MARKS_OBTAINED&quot; = :MARKS_OBTAINED WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG AND &quot;ASSIGNMENT_NO&quot; = :ASSIGNMENT_NO AND &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;ATTEMPT_NO&quot; = :ATTEMPT_NO AND &quot;ASSIGNMENT_YEAR&quot; = :ASSIGNMENT_YEAR">
            <DeleteParameters>
                <asp:Parameter Name="STUDENT_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                <asp:Parameter Name="ASSIGNMENT_NO" Type="Decimal" />
                <asp:Parameter Name="COURSE_ID" Type="String" />
                <asp:Parameter Name="ATTEMPT_NO" Type="Decimal" />
                <asp:Parameter Name="ASSIGNMENT_YEAR" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SUBMIT_DATE" Type="DateTime" />
                <asp:Parameter Name="MARKS_OBTAINED" Type="Decimal" />
                <asp:Parameter Name="STUDENT_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                <asp:Parameter Name="ASSIGNMENT_NO" Type="Decimal" />
                <asp:Parameter Name="COURSE_ID" Type="String" />
                <asp:Parameter Name="ATTEMPT_NO" Type="Decimal" />
                <asp:Parameter Name="ASSIGNMENT_YEAR" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SUBMIT_DATE" Type="DateTime" />
                <asp:Parameter Name="MARKS_OBTAINED" Type="Decimal" />
                <asp:Parameter Name="STUDENT_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                <asp:Parameter Name="ASSIGNMENT_NO" Type="Decimal" />
                <asp:Parameter Name="COURSE_ID" Type="String" />
                <asp:Parameter Name="ATTEMPT_NO" Type="Decimal" />
                <asp:Parameter Name="ASSIGNMENT_YEAR" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>