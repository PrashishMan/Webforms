<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssignTeacherClass.aspx.cs" Inherits="Courwework_db.AssignTeacherClass" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class ="jumbotron">
            <div class="container">
                <div class ="row">
                    <div class="col-xs-4">
                        <asp:Button ID="ClassCourseBtn" style="width:100%" Text="Course Classes" runat="server" CssClass="btn btn-primary" OnClick="ClassCourseBtn_Click"/>
                    </div>
                    <div class="col-xs-4" ></div>
                    <div class="col-xs-4">
                        <asp:Button ID="TeachersClassBtn" style="width:100%" Text="Teacher Classes" runat="server" CssClass="btn btn-primary" OnClick="TeachersClassBtn_Click"/>
                    </div>
                </div>
                <div class ="row">
                    <div class ="col-xs-6">
                        <h2><span style = "font-weight:bold">Teachers Class Time</span></h2>
                        </div>
                    
                    <div class ="col-xs-6">
                        <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STAFF_ID,CLASS_ID,COURSE_ID,INSTITUTE_REG,YEAR" DataSourceID="SqlDataSource1">
                                <InsertItemTemplate>
                                    <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">STAFF_ID:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList1"  CssClass="form-control" runat="server" DataSourceID="SqlDataSource1221" DataTextField="Name" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1221" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT first_name||' '||last_name &quot;Name&quot;, user_id from Member JOIN staff ON staff.staff_id = Member.User_Id"></asp:SqlDataSource>
                                                <asp:SqlDataSource ID="SqlDataSource122" runat="server"></asp:SqlDataSource>
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">CLASS_ID:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList10" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1778" DataTextField="TIME" DataValueField="CLASS_ID" SelectedValue='<%# Bind("CLASS_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1778" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT TO_CHAR(START_TIME, 'HH24:MI')||' - '||TO_CHAR(END_TIME,'HH24:MI')||', '||class_room &quot;TIME&quot;, class_id from class"></asp:SqlDataSource>
                                            </div>
                                        </div>

                                        <div class ="row">
                                            <div class="col-xs-6">
                                                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Create Class" />
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">COURSE_ID:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList3" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1554" DataTextField="NAME" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1554" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT COURSE_ID, NAME FROM COURSE"></asp:SqlDataSource>
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">INSTITUTE_REG:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList4" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1667" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1667" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_REG, INSTITUTE_NAME FROM INSTITUTE"></asp:SqlDataSource>
                                            </div>
                                        </div>

                                        <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">YEAR:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="YEARTextBox" CssClass="form-control" runat="server" Text='<%# Bind("YEAR") %>' />
                                            </div>
                                        </div>
                                        <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                        <asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton ID="NewButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Create Teacher Class" />
                                    </ItemTemplate>

                                <EmptyDataTemplate>
                                    <asp:LinkButton ID="NewButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Create Teacher Class" />
                                </EmptyDataTemplate>
                                </asp:FormView>
                            </div>
                        </div>
                    
                </div>
                <div class="row">
                    <div class ="col-xs-6">
                        <div class="row" style="background:#808080; padding:10px; border-radius: 10px">
                            <div class ="col-xs-9">
                                <h4 style="float:right; color:aliceblue"><strong>If you have added new year, Please refresh the page</strong></h4>
                            </div>
                            <div class ="col-xs-3">
                                <asp:Button runat="server" ID="refresh_btn" CssClass="btn btn-primary" Text="Refresh" OnClick="refresh_btn_Click" />
                            </div>
                        </div>
                    </div>
                    <div class ="col-xs-6">
                        <h4 style="float:right"><strong>Class Schedule For the Year</strong></h4>
                        <asp:DropDownList ID="DropDownList10" style="float:right" class="form-control" runat="server" DataSourceID="SqlDataSource2453" DataTextField="YEAR" DataValueField="YEAR" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2453" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT DISTINCT YEAR FROM TEACHER_CLASS_COURSE ORDER BY YEAR DESC"></asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STAFF_ID,CLASS_ID,COURSE_ID,INSTITUTE_REG,YEAR" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="table table-bordered" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="YEAR" HeaderText="YEAR" ReadOnly="True" SortExpression="YEAR" />
                <asp:TemplateField HeaderText="STAFF">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList5" Enabled="false" runat="server" DataSourceID="SqlDataSource121" DataTextField="NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource121"  runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT first_name||' '||last_name &quot;NAME&quot;, user_id from Member"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CLASSROOM">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList6" runat="server" Enabled="false" DataSourceID="SqlDataSource141" DataTextField="CLASS_ROOM" DataValueField="CLASS_ID" SelectedValue='<%# Bind("CLASS_ID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource141" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT &quot;CLASS_ROOM&quot;, &quot;CLASS_ID&quot; FROM &quot;CLASS&quot;"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="CLASS TIME">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList7" runat="server" Enabled="false" DataSourceID="SqlDataSource161" DataTextField="TIME" DataValueField="CLASS_ID" SelectedValue='<%# Bind("CLASS_ID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource161" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT TO_CHAR(START_TIME, 'HH24:MM')||' - '||TO_CHAR(END_TIME, 'HH24:MM') &quot;TIME&quot;, class_id FROM class"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="COURSE">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList8" runat="server" Enabled="false" DataSourceID="SqlDataSource187" DataTextField="NAME" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource187" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT &quot;COURSE_ID&quot;, &quot;NAME&quot; FROM &quot;COURSE&quot;"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="INSTITUTE">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList9" runat="server" Enabled="false" DataSourceID="SqlDataSource165" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource165" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_REG, INSTITUTE_NAME FROM INSTITUTE"></asp:SqlDataSource>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;TEACHER_CLASS_COURSE&quot; WHERE &quot;STAFF_ID&quot; = :STAFF_ID AND &quot;CLASS_ID&quot; = :CLASS_ID AND &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG AND &quot;YEAR&quot; = :YEAR" InsertCommand="INSERT INTO &quot;TEACHER_CLASS_COURSE&quot; (&quot;STAFF_ID&quot;, &quot;CLASS_ID&quot;, &quot;COURSE_ID&quot;, &quot;INSTITUTE_REG&quot;, &quot;YEAR&quot;) VALUES (:STAFF_ID, :CLASS_ID, :COURSE_ID, :INSTITUTE_REG, :YEAR)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHER_CLASS_COURSE&quot; WHERE YEAR = :YEAR">
            <DeleteParameters>
                <asp:Parameter Name="STAFF_ID" Type="String" />
                <asp:Parameter Name="CLASS_ID" Type="Decimal" />
                <asp:Parameter Name="COURSE_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                <asp:Parameter Name="YEAR" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STAFF_ID" Type="String" />
                <asp:Parameter Name="CLASS_ID" Type="Decimal" />
                <asp:Parameter Name="COURSE_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
                <asp:Parameter Name="YEAR" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList10" Name="YEAR" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
            
</asp:Content>