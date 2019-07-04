<%@ Page Title="Student Course" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentCourseEntry.aspx.cs" Inherits="Courwework_db.StudentCourseEntry" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class ="jumbotron">
                <div class="container">
                    <div class ="row">
                        <div class="col-xs-12">
                            <asp:Button ID ="BackBtnid" runat="server" Text="Back" class ="btn btn-primary" OnClick="BackBtnid_Click"  />
                        </div>
                        <div class ="col-xs-6">
                            <h2><span style = "font-weight:bold">Student Course</span></h2>
                        </div>
                        <div class ="col-xs-6">
                            <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID,INSTITUTE_REG,COURSE_ID" DataSourceID="SqlDataSource1">
                                <InsertItemTemplate>
                                    <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">COMPLETED YEAR:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                        <asp:TextBox ID="COMPLETED_YEARTextBox" runat="server" Text='<%# Bind("COMPLETED_YEAR") %>' />
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">MARKS OBTAINED:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="MARKS_OBTAINEDTextBox" runat="server" Text='<%# Bind("MARKS_OBTAINED") %>' />
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
                                                <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT &quot;INSTITUTE_REG&quot;, &quot;INSTITUTE_NAME&quot; FROM &quot;INSTITUTE&quot;"></asp:SqlDataSource>
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
                                            <div class ="col-xs-6"> 
                                            </div>
                                        </div>    

                                        
                                        <div style="margin:10px">
                                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" class ="btn btn-success"/>
                                            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" class="btn btn-danger" />
                                        </div>
                                    </div>
                                </InsertItemTemplate>
                                <EmptyDataTemplate>
                                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" class="btn btn-primary" CommandName="New" Text="Insert Student Course" />
                                </EmptyDataTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" class="btn btn-primary" CommandName="New" Text="Insert Student Course" />
                                </ItemTemplate>
                            </asp:FormView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID,INSTITUTE_REG,COURSE_ID" DataSourceID="SqlDataSource1" CssClass="table table-bodered" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="COMPLETED_YEAR" HeaderText="COMPLETED_YEAR" SortExpression="COMPLETED_YEAR" />
                    <asp:TemplateField HeaderText="Course">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSourcec1" DataTextField="Name" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourcec1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT COURSE_ID||' - '||NAME &quot;Name&quot;, COURSE_ID FROM COURSE"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Student">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSources1" DataTextField="NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSources1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT m.FIRST_NAME||' '||m.LAST_NAME as &quot;NAME&quot;, m.USER_ID FROM MEMBER m
JOIN STUDENT s ON s.STUDENT_ID=m.USER_ID"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="MARKS_OBTAINED" HeaderText="MARKS_OBTAINED" SortExpression="MARKS_OBTAINED" />
                    <asp:TemplateField HeaderText="Institute">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSourcei1" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourcei1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_NAME, INSTITUTE_REG FROM INSTITUTE"></asp:SqlDataSource>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;STUDENT_COURSE&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG AND &quot;COURSE_ID&quot; = :COURSE_ID" InsertCommand="INSERT INTO &quot;STUDENT_COURSE&quot; (&quot;COMPLETED_YEAR&quot;, &quot;MARKS_OBTAINED&quot;, &quot;STUDENT_ID&quot;, &quot;INSTITUTE_REG&quot;, &quot;COURSE_ID&quot;) VALUES (:COMPLETED_YEAR, :MARKS_OBTAINED, :STUDENT_ID, :INSTITUTE_REG, :COURSE_ID)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT_COURSE&quot;" UpdateCommand="UPDATE &quot;STUDENT_COURSE&quot; SET &quot;COMPLETED_YEAR&quot; = :COMPLETED_YEAR, &quot;MARKS_OBTAINED&quot; = :MARKS_OBTAINED WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG AND &quot;COURSE_ID&quot; = :COURSE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="COMPLETED_YEAR" Type="Decimal" />
                    <asp:Parameter Name="MARKS_OBTAINED" Type="Decimal" />
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="COMPLETED_YEAR" Type="Decimal" />
                    <asp:Parameter Name="MARKS_OBTAINED" Type="Decimal" />
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
            
</asp:Content>