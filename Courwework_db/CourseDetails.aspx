<%@ Page Language="C#" Title="Course Details" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseDetails.aspx.cs" Inherits="Courwework_db.CourseDetails" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class ="jumbotron">
        <div class="container">
            <div class ="row">
                <div class ="col-xs-6">
                    <h2><span style = "font-weight:bold">Course Details</span></h2>
                </div>
                <div class="col-xs-6" >
                    <div class="jumbotron" style="padding:1px; padding-left:20px; float:right"> 
                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="COURSE_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1">
                            <InsertItemTemplate>
                                <div style="background-color:#808080; border-radius:20px; padding:10px">
                                     <div class="container-fluid">

                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">COURSE_ID:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" Text='<%# Bind("COURSE_ID") %>' />
                                            </div>
                                        </div>

                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">NAME:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="NAMETextBox" class="form-control" runat="server" Text='<%# Bind("NAME") %>' />
                                            </div>
                                        </div>

                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">DURATION:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" SelectedValue='<%# Bind("DURATION") %>'>
                                                    <asp:ListItem Value="YEAR_LONG">YEAR LONG</asp:ListItem>
                                                    <asp:ListItem Value="SEMESTER_LONG">SEMESTER LONG</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                         <div class="row" style ="padding:10px">
                                            <div class="col-xs-6">
                                                <span style ="padding: 10px; color:aliceblue; font-weight:bold;">CREDIT HOUR:</span>
                                            </div>
                                            <div class ="col-xs-6">
                                                <asp:TextBox ID="CREDIT_HOURTextBox" class="form-control" runat="server" Text='<%# Bind("CREDIT_HOUR") %>' />
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
                            <EmptyDataTemplate>
                                <asp:LinkButton ID="NewButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Add Course" />
                            </EmptyDataTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="NewButton" class="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Add Course" />
                            </ItemTemplate>
                        </asp:FormView>
                    </div>
                </div>
            </div>
        </div>
    </div>   
        <div class ="jumbotron" style="padding:5px">
            <asp:Button ID="Course_Assignment_BTN"  runat="server" class="btn btn-primary" Text="Create Assignments" OnClick="Course_Assignment_BTN_Click" />
            <asp:Button ID="courseteacherassignmentBtn"  runat="server" class="btn btn-primary" Text="Assign Teachers" OnClick="courseteacherassignmentBtn_Click"  />
        </div>    
  </div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COURSE_ID,INSTITUTE_REG" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="table table-bordered" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                <asp:BoundField DataField="DURATION" HeaderText="DURATION" SortExpression="DURATION" />
                <asp:BoundField DataField="CREDIT_HOUR" HeaderText="CREDIT_HOUR" SortExpression="CREDIT_HOUR" />
                <asp:TemplateField HeaderText="INSTITUTE">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource21" class="form-control" Enabled="false" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_REG, INSTITUTE_NAME FROM INSTITUTE"></asp:SqlDataSource>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;COURSE&quot; WHERE &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG" InsertCommand="INSERT INTO &quot;COURSE&quot; (&quot;COURSE_ID&quot;, &quot;NAME&quot;, &quot;DURATION&quot;, &quot;CREDIT_HOUR&quot;, &quot;INSTITUTE_REG&quot;) VALUES (:COURSE_ID, :NAME, :DURATION, :CREDIT_HOUR, :INSTITUTE_REG)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;COURSE&quot;" UpdateCommand="UPDATE &quot;COURSE&quot; SET &quot;NAME&quot; = :NAME, &quot;DURATION&quot; = :DURATION, &quot;CREDIT_HOUR&quot; = :CREDIT_HOUR WHERE &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG">
            <DeleteParameters>
                <asp:Parameter Name="COURSE_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="COURSE_ID" Type="String" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="DURATION" Type="String" />
                <asp:Parameter Name="CREDIT_HOUR" Type="Decimal" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="DURATION" Type="String" />
                <asp:Parameter Name="CREDIT_HOUR" Type="Decimal" />
                <asp:Parameter Name="COURSE_ID" Type="String" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
</asp:Content>