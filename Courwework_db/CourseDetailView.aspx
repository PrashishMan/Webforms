<%@ Page MasterPageFile="~/Site.Master" Title="Staff Location" Language="C#" AutoEventWireup="true" CodeBehind="CourseDetailView.aspx.cs" Inherits="Courwework_db.CourseDetailView" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <div>
            <div class ="jumbotron">
          <div class="container">
              <h2><span style="float:left">Courses Detail View</span></h2>
              <div class="form-group" style ="float:right">
                  <label>Select Course</label>
                  <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource22" DataTextField="NAME" DataValueField="COURSE_ID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT COURSE_ID, NAME FROM COURSE"></asp:SqlDataSource>
            
              </div>
            
            </div>
            <div class ="container">
            </div>

        </div>

                    
                <div class ="jumbotron">
                    <div class="row">
                        <div class="col-xs-6">
                            <h3>Course Details</h3>
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="COURSE_ID,INSTITUTE_REG" DataSourceID="SqlDataSource2222">
                        <ItemTemplate>
                            <div style="background-color:#808080; border-radius:20px; padding:10px">
                                <div class="container-fluid">

                                    <div class="row" style ="padding:10px">
                                        <div class="col-xs-6">
                                            <span style ="padding: 10px; color:aliceblue; font-weight:bold;">COURSE_ID:</span>
                                        </div>
                                        <div class ="col-xs-6">
                                            <asp:TextBox ID="TextBox1" class="form-control" Enabled="false" runat="server" Text='<%# Bind("COURSE_ID") %>'></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row" style ="padding:10px">
                                        <div class="col-xs-6">
                                            <span style ="padding: 10px; color:aliceblue; font-weight:bold;">COURSE NAME:</span>
                                        </div>
                                        <div class ="col-xs-6">
                                            <asp:TextBox ID="TextBox4" runat="server" class="form-control" Enabled="false" Text='<%# Bind("NAME") %>'></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row" style ="padding:10px">
                                        <div class="col-xs-6">
                                            <span style ="padding: 10px; color:aliceblue; font-weight:bold;">DURATION:</span>
                                        </div>
                                        <div class ="col-xs-6">
                                            <asp:TextBox ID="TextBox3" class="form-control" Enabled="false" runat="server" Text='<%# Bind("DURATION") %>'></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row" style ="padding:10px">
                                        <div class="col-xs-6">
                                            <span style ="padding: 10px; color:aliceblue; font-weight:bold;">CREDIT HOUR:</span>
                                        </div>
                                        <div class ="col-xs-6">
                                            <asp:TextBox ID="TextBox6" runat="server" class="form-control" Enabled="false" Text='<%# Bind("CREDIT_HOUR") %>'></asp:TextBox>
                                        </div>
                                    </div>

                        </ItemTemplate>
                    </asp:FormView>
                                <asp:SqlDataSource ID="SqlDataSource2222" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM COURSE WHERE COURSE_ID = :COURSE_ID">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_ID" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                            </div>

                        <div class="col-xs-6">
                            <h3>Course Teachers</h3>
                        <div class ="row">
                             <div class ="col-xs-12">
                                <h4 style="float:left"><strong>Teacher Role For the Year</strong></h4>
                                <asp:DropDownList ID="DropDownList10" style="float:right" class="form-control" runat="server" DataSourceID="SqlDataSource2453" DataTextField="YEAR" DataValueField="YEAR" AutoPostBack="True">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2453" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT DISTINCT YEAR  FROM TEACHER_CLASS_COURSE ORDER BY YEAR DESC"></asp:SqlDataSource>
                            </div>
                            <div class="col-xs-12">
                                   <asp:GridView ID="GridView1" runat="server" Enabled="false" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="table table-bordered" ForeColor="Black" GridLines="Vertical">
                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                <Columns>
                                    <asp:TemplateField HeaderText="STAFF">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="DropDownList3" Enabled="false" runat="server" class="form-control" DataSourceID="SqlDataSource4" DataTextField="NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONCAT(CONCAT(FIRST_NAME, ' '),LAST_NAME) &quot;NAME&quot;, USER_ID FROM MEMBER"></asp:SqlDataSource>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="ROLE">
                                    <ItemTemplate>
                                        <asp:DropDownList ID="DropDownList4" Enabled="false" runat="server" class="form-control" DataSourceID="SqlDataSource7" DataTextField="ROLE_NAME" DataValueField="ROLE_ID" SelectedValue='<%# Bind("ROLE_ID") %>'>
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT ROLE_NAME, ROLE_ID FROM ROLE"></asp:SqlDataSource>
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT COURSE_ID, STAFF_ID, ROLE_ID, INSTITUTE_REG FROM STAFF_COURSE_ROLE 
                WHERE (COURSE_ID = :COURSE_ID) 
                AND YEAR = :YEAR">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="COURSE_ID" PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="DropDownList10" Name="YEAR" PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            </div>
                        </div>
                            
                         
                        </div>
                    </div>
                </div>
                </div>
            </div>

    </asp:Content>
    