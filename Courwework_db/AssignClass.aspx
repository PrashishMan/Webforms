<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AssignClass.aspx.cs" Inherits="Courwework_db.AssignClass" %>
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
                            <h2><span style = "font-weight:bold">Class Schedules</span></h2>
                        </div>
                        <div class ="col-xs-6">
                            <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="CLASS_ID,COURSE_ID,INSTITUTE_REG,YEAR">
                                    <InsertItemTemplate>
                                        <div class="container-fluid" style="background-color:#808080; border-radius:20px; padding:10px">
                                            <div class="row" style ="padding:10px">
                                                <div class="col-xs-6">
                                                    <span style ="padding: 10px; color:aliceblue; font-weight:bold;">CLASS_ID:</span>
                                                </div>
                                                <div class ="col-xs-6">
                                                    <asp:DropDownList class="form-control" ID="DropDownList18" runat="server" DataSourceID="SqlDataSource1112" DataTextField="CLASS" DataValueField="CLASS_ID" SelectedValue='<%# Bind("CLASS_ID") %>'>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource1112" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CLASS_ID, TO_CHAR(START_TIME, 'HH24:MI')||' - '||TO_CHAR(END_TIME, 'HH24:MI')||', '||CLASS_ROOM||', '||day &quot;CLASS&quot;  FROM CLASS"></asp:SqlDataSource>
                                                    
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
                                                     <asp:DropDownList ID="DropDownList12" CssClass="form-control" runat="server" DataSourceID="SqlDataSource189898" DataTextField="NAME" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource189898" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT COURSE_ID, NAME FROM COURSE"></asp:SqlDataSource>
                                                </div>
                                            </div>

                                            <div class="row" style ="padding:10px">
                                                <div class="col-xs-6">
                                                    <span style ="padding: 10px; color:aliceblue; font-weight:bold;">INSTITUTE_REG:</span>
                                                </div>
                                                <div class ="col-xs-6">
                                                    <asp:DropDownList ID="DropDownList13" CssClass="form-control" runat="server" DataSourceID="SqlDataSource109809" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource109809" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_NAME, INSTITUTE_REG FROM INSTITUTE"></asp:SqlDataSource>
                                                </div>
                                            </div>

                                            <div class="row" style ="padding:10px">
                                                <div class="col-xs-6">
                                                    <span style ="padding: 10px; color:aliceblue; font-weight:bold;">YEAR:</span>
                                                </div>
                                                <div class ="col-xs-6">
                                                    <asp:TextBox ID="YEARTextBox" runat="server" CssClass="form-control" Text='<%# Bind("YEAR") %>' />
                                                </div>
                                            </div>
                                            <div class="row" style ="padding:10px">
                                                <div class="col-xs-6">
                                                    <span style ="padding: 10px; color:aliceblue; font-weight:bold;">CLASS_TYPE:</span>
                                                </div>
                                                <div class ="col-xs-6">
                                                    <asp:TextBox ID="CLASS_TYPETextBox" CssClass="form-control" runat="server" Text='<%# Bind("CLASS_TYPE") %>' />
                                                </div>
                                            </div>
                                        
                                        
                                            <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-success" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                            <asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                        </div>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Assign Class Course" />
                                    </ItemTemplate>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton CssClass="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Assign Class Course" />
                                    </EmptyDataTemplate>
                                </asp:FormView>
                            </div>
                        </div>
                        <div class ="col-xs-6">
                            <div class="row" style="background:#808080; padding:10px; border-radius: 10px">
                            <div class ="col-xs-9">
                                <h4 style="float:right; color:aliceblue"><strong>If you have added new year, Please refresh the page</strong></h4>
                            </div>
                            <div class ="col-xs-3">
                                <asp:Button runat="server" ID="refresh_btn" CssClass="btn btn-primary" Text="Refresh" OnClick="refresh_btn_Click"/>
                            </div>
                        </div>
                        </div>
                        <div class ="col-xs-6">
                            <h4 style="float:right"><strong>Class Schedule For the Year</strong></h4>
                            <asp:DropDownList ID="DropDownList10" style="float:right" class="form-control" runat="server" DataSourceID="SqlDataSource2453" DataTextField="YEAR" DataValueField="YEAR" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2453" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT DISTINCT YEAR  FROM CLASSCOURSES ORDER BY YEAR DESC"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
        </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CLASS_ID,COURSE_ID,INSTITUTE_REG,YEAR" DataSourceID="SqlDataSource1" AllowPaging="True" CssClass="table table-bordered" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" >
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="CLASS TIME">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList17" runat="server" DataSourceID="SqlDataSource190800" DataTextField="time" DataValueField="CLASS_ID" SelectedValue='<%# Bind("CLASS_ID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource190800" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT TO_CHAR(START_TIME,'HH24:MI')||' - '||TO_CHAR(END_TIME,'HH24:MI') &quot;time&quot;, CLASS_ID FROM CLASS"></asp:SqlDataSource>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="COURSE">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList15" runat="server" DataSourceID="SqlDataSource1656" DataTextField="NAME" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1656" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT COURSE_ID, NAME FROM COURSE"></asp:SqlDataSource>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CLASS_TYPE" HeaderText="CLASS_TYPE" SortExpression="CLASS_TYPE" />
            <asp:TemplateField HeaderText="CLASS ROOM">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList14" runat="server" DataSourceID="SqlDataSource1112" DataTextField="CLASS_ROOM" DataValueField="CLASS_ID" SelectedValue='<%# Bind("CLASS_ID") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1112" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CLASS_ID, CLASS_ROOM FROM CLASS"></asp:SqlDataSource>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="YEAR" HeaderText="YEAR" ReadOnly="True" SortExpression="YEAR" />
            <asp:TemplateField HeaderText="INSTITUTE">
                <ItemTemplate>
                    <asp:DropDownList ID="DropDownList16" runat="server" DataSourceID="SqlDataSource17678" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource17678" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_NAME, INSTITUTE_REG FROM INSTITUTE"></asp:SqlDataSource>
                </ItemTemplate>
            </asp:TemplateField>
           
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;CLASSCOURSES&quot; WHERE YEAR = :YEAR" DeleteCommand="DELETE FROM &quot;CLASSCOURSES&quot; WHERE &quot;CLASS_ID&quot; = :CLASS_ID AND &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG AND &quot;YEAR&quot; = :YEAR" InsertCommand="INSERT INTO &quot;CLASSCOURSES&quot; (&quot;CLASS_ID&quot;, &quot;COURSE_ID&quot;, &quot;INSTITUTE_REG&quot;, &quot;YEAR&quot;, &quot;CLASS_TYPE&quot;) VALUES (:CLASS_ID, :COURSE_ID, :INSTITUTE_REG, :YEAR, :CLASS_TYPE)" UpdateCommand="UPDATE &quot;CLASSCOURSES&quot; SET &quot;CLASS_TYPE&quot; = :CLASS_TYPE WHERE &quot;CLASS_ID&quot; = :CLASS_ID AND &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG AND &quot;YEAR&quot; = :YEAR" >
        <DeleteParameters>
            <asp:Parameter Name="CLASS_ID" Type="Decimal" />
            <asp:Parameter Name="COURSE_ID" Type="String" />
            <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
            <asp:Parameter Name="YEAR" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CLASS_ID" Type="Decimal" />
            <asp:Parameter Name="COURSE_ID" Type="String" />
            <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
            <asp:Parameter Name="YEAR" Type="Decimal" />
            <asp:Parameter Name="CLASS_TYPE" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList10" Name="YEAR" PropertyName="SelectedValue" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CLASS_TYPE" Type="String" />
            <asp:Parameter Name="CLASS_ID" Type="Decimal" />
            <asp:Parameter Name="COURSE_ID" Type="String" />
            <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
            <asp:Parameter Name="YEAR" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>