<%@ Page Language="C#" Title="Course Enrollment" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseEnrollment.aspx.cs" Inherits="Courwework_db.CourseEnrollment" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <div class ="jumbotron">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <asp:Button ID="enrollment_back_btn" class="btn btn-primary" runat="server" Text="Back" OnClick="enrollment_back_btn_Click" />
                </div>
            </div>
            <div class ="row">
                <div class ="col-xs-6">
                    <h2><span style = "font-weight:bold">Course Enrollment</span></h2>
                </div>
                <div class="col-xs-6" >
                    <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="COURSE_ID,STUDENT_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1">
                            <InsertItemTemplate>
                                <div style="background-color:#808080; border-radius:20px; padding:10px">
                                     <div class="container-fluid">

                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">COURSE_ID:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList5" class="form-control" runat="server" DataSourceID="SqlDataSource101" DataTextField="NAME" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource101"  runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT NAME, COURSE_ID FROM COURSE"></asp:SqlDataSource>
                                            </div>
                                        </div>

                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">ENROLLED YEAR:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="ENROLLED_YEARTextBox" class="form-control" runat="server" Text='<%# Bind("ENROLLED_YEAR") %>' />
                                            </div>
                                        </div>
                                         
                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">STUDENT:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList6" runat="server" class="form-control" DataSourceID="SqlDataSource102" DataTextField="NAME" DataValueField="USER_ID" Text='<%# Bind("STUDENT_ID") %>' SelectedValue='<%# Bind("STUDENT_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource102" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT m.FIRST_NAME||' '||m.LAST_NAME &quot;NAME&quot;, m.USER_ID FROM MEMBER m
JOIN STUDENT s ON m.USER_ID = s.STUDENT_ID"></asp:SqlDataSource>
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
                                        <div style ="float:right">
                                            <asp:LinkButton ID="InsertButton" runat="server" class="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            <asp:LinkButton ID="InsertCancelButton" class="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </div>
                                </div>
                          </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="NewButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Add Course Enrollment" />
                            </ItemTemplate>
                            <EmptyDataTemplate>
                                <asp:LinkButton ID="NewButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Add Course Enrollment" />
                            </EmptyDataTemplate>

                        </asp:FormView>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="row" style="background:#808080; padding:10px; border-radius: 10px">
                        <div class ="col-xs-9">
                            <h4 style="float:right; color:aliceblue"><strong>If you have added new year, Please refresh the page</strong></h4>
                        </div>
                        <div class ="col-xs-3">
                            <asp:Button runat="server" ID="refresh_btn" CssClass="btn btn-primary" Text="Refresh" OnClick="refresh_btn_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-xs-2"></div>
                <div class="col-xs-4">
                    <h4 style="float:left"><Strong>Enrolled Year</Strong></h4>
                     <asp:DropDownList ID="DropDownList7" class="form-control" runat="server" style="float:right" AutoPostBack="True" DataSourceID="SqlDataSource222" DataTextField="ENROLLED_YEAR" DataValueField="ENROLLED_YEAR">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource222" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT DISTINCT ENROLLED_YEAR FROM Course_Enrollment ORDER BY ENROLLED_YEAR DESC"></asp:SqlDataSource>
                </div>
               </div>
        </div>
            </div>
           
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COURSE_ID,STUDENT_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1" CssClass="table table-bordered" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    
<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:TemplateField HeaderText="INSTITUTE">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList3" Enabled="false" class="form-control" runat="server" DataSourceID="SqlDataSource52" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource52" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_REG, INSTITUTE_NAME FROM INSTITUTE"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="COURSE">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" Enabled="false" class="form-control" runat="server" DataSourceID="SqlDataSource51" DataTextField="NAME" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource51" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT COURSE_ID, NAME FROM COURSE"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="STUDENT">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList4" Enabled="false" class="form-control" runat="server" DataSourceID="SqlDataSource53" DataTextField="NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource53" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT FIRST_NAME||' '||LAST_NAME &quot;NAME&quot;, USER_ID FROM MEMBER"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ENROLLED_YEAR" HeaderText="ENROLLED_YEAR" SortExpression="ENROLLED_YEAR" />
                

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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;COURSE_ENROLLMENT&quot; WHERE &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG" InsertCommand="INSERT INTO &quot;COURSE_ENROLLMENT&quot; (&quot;COURSE_ID&quot;, &quot;ENROLLED_YEAR&quot;, &quot;STUDENT_ID&quot;, &quot;INSTITUTE_REG&quot;) VALUES (:COURSE_ID, :ENROLLED_YEAR, :STUDENT_ID, :INSTITUTE_REG)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE_ENROLLMENT&quot; WHERE ENROLLED_YEAR = :ENROLLED_YEAR" UpdateCommand="UPDATE &quot;COURSE_ENROLLMENT&quot; SET &quot;ENROLLED_YEAR&quot; = :ENROLLED_YEAR WHERE &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;STUDENT_ID&quot; = :STUDENT_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG">
                <DeleteParameters>
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                    <asp:Parameter Name="ENROLLED_YEAR" Type="Decimal" />
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList7" Name="ENROLLED_YEAR" PropertyName="SelectedValue" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ENROLLED_YEAR" Type="Decimal" />
                    <asp:Parameter Name="COURSE_ID" Type="String" />
                    <asp:Parameter Name="STUDENT_ID" Type="String" />
                    <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </asp:Content>
