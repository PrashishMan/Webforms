<%@ Page Title="Students" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="StudentDetails.aspx.cs" Inherits="Courwework_db.StudentDetails" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <div class ="jumbotron">
                <div class="container">
                    <div class ="row">
                        <div class ="col-xs-6">
                            <h2><span style = "font-weight:bold">Student</span></h2>
                        </div>
                        <div class ="col-xs-6">
                            <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                                <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID,INSTITUTE_REG1" DataSourceID="SqlDataSource1">
                                    <EditItemTemplate>
                                        STUDENT_ID:
                                        <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                                        <br />
                                        JOIN_DATE:
                                        <asp:TextBox ID="JOIN_DATETextBox" runat="server" Text='<%# Bind("JOIN_DATE") %>' />
                                        <br />
                                        INSTITUTE_REG1:
                                        <asp:Label ID="INSTITUTE_REG1Label1" runat="server" Text='<%# Eval("INSTITUTE_REG1") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </EditItemTemplate>
                                    <InsertItemTemplate>
                                           <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                            <div class="row" style ="padding:10px">
                                                <div class="col-xs-6">
                                                    <span style ="padding: 10px; color:aliceblue; font-weight:bold;">STUDENT_ID:</span>
                                                </div>
                                                <div class ="col-xs-6">
                                                    <asp:DropDownList ID="DropDownList5" runat="server" class="form-control" DataSourceID="SqlDataSource7" DataTextField="name" DataValueField="USER_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
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
                                                    <asp:DropDownList ID="DropDownList4" class="form-control" runat="server" DataSourceID="SqlDataSource8" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG1") %>'>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_NAME, INSTITUTE_REG FROM INSTITUTE"></asp:SqlDataSource>
                                                </div>
                                            </div>    

                                            <div class="row" style ="padding:10px">
                                                <div class="col-xs-6">
                                                    <span style ="padding: 10px; color:aliceblue; font-weight:bold;">JOIN_DATE:</span>
                                                </div>
                                                <div class ="col-xs-6">
                                                    <asp:TextBox ID="JOIN_DATETextBox" class="form-control" runat="server" Text='<%# Bind("JOIN_DATE") %>' />
                                                </div>
                                            </div>    
                                            <div style="margin:10px">
                                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" class="btn btn-success" Text="Insert" />
                                                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" class="btn btn-danger" Text="Cancel" />
                                            </div>
                                        </div>
                                    </InsertItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" class="btn btn-primary" Text="Create Student" />
                                    </EmptyDataTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" class="btn btn-primary" Text="Create Student" />
                                    </ItemTemplate>
                                </asp:FormView>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
            <div class ="jumbotron" style="padding:5px">
                <asp:Button ID="studentCourseBtn" runat="server" Text="Student Course" class="btn btn-primary" OnClick="studentCourseBtn_Click" />
                <asp:Button ID="studentAssignmentBtn" runat="server" Text="Student Assignment" class="btn btn-primary" OnClick="studentAssignmentBtn_Click" />                
                <asp:Button ID="StudentCourseEnrollBtn" runat="server" Text="Enroll Student" class="btn btn-primary" OnClick="StudentCourseEnrollBtn_Click" />                
             </div>
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table table-bordered" AllowPaging="True" DataKeyNames="STUDENT_ID,INSTITUTE_REG1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:TemplateField HeaderText="STUDENT NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList6" class="form-control" Enabled="false" runat="server" DataSourceID="SqlDataSource122" DataTextField="NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource122" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT FIRST_NAME||' '||LAST_NAME &quot;NAME&quot;, USER_ID FROM MEMBER"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="JOIN_DATE" HeaderText="JOIN_DATE"  SortExpression="JOIN_DATE" DataFormatString="{0:dd/MM/yyyy}" />
                    <asp:TemplateField HeaderText="CONTACT">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList7" class="form-control" Enabled="false" runat="server"  DataSourceID="SqlDataSource12222" DataTextField="CONTACT" DataValueField="USER_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource12222" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONTACT, USER_ID FROM MEMBER"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EMAIL">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList8" runat="server" class="form-control" Enabled="false"  DataSourceID="SqlDataSource1121" DataTextField="EMAIL" DataValueField="USER_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1121" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT EMAIL, USER_ID FROM MEMBER"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="INSTITUTE">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList9" runat="server" class="form-control" Enabled="false" DataSourceID="SqlDataSource1222211" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG1") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1222211" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_REG, INSTITUTE_NAME FROM INSTITUTE"></asp:SqlDataSource>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;INSTITUTE_REG1&quot; = :INSTITUTE_REG1" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;JOIN_DATE&quot;, &quot;INSTITUTE_REG1&quot;) VALUES (:STUDENT_ID, :JOIN_DATE, :INSTITUTE_REG1)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot; ORDER BY JOIN_DATE DESC" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;JOIN_DATE&quot; = :JOIN_DATE WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;INSTITUTE_REG1&quot; = :INSTITUTE_REG1">
                <DeleteParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG1" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="JOIN_DATE" Type="DateTime" />
                    <asp:Parameter Name="INSTITUTE_REG1" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="JOIN_DATE" Type="DateTime" />
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG1" Type="Decimal" />
                </UpdateParameters>
        </asp:SqlDataSource>
    
    </asp:Content>
