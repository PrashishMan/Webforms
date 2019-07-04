<%@ Page Language="C#" Title="Teacher Course" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TeacherCourseForm.aspx.cs" Inherits="Courwework_db.TeacherCourseForm" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
            <div class ="jumbotron">
          <div class="container">
              <h2><span style="float:left">Teacher's Courses</span></h2>
              <div class="form-group" style ="float:right">
                  <label>Select Teacher</label>
                  <asp:DropDownList ID="DropDownList5" class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="USER_ID">
            </asp:DropDownList>
                  
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONCAT(CONCAT(m.FIRST_NAME, ' '), m.LAST_NAME) &quot;name&quot;, USER_ID 
                FROM MEMBER m 
                JOIN STAFF_DEPARTMENT sd ON m.USER_ID = sd.STAFF_ID AND m.INSTITUTE_REG = sd.INSTITUTE_REG
                AND sd. DEPARTMENT_ID = 1004"></asp:SqlDataSource>
              </div>
            
            </div>
            <div class ="container">
            </div>

        </div>


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COURSE_ID,STAFF_ID,ROLE_ID,INSTITUTE_REG,YEAR" DataSourceID="SqlDataSource1" PageSize="20" CssClass="table table-bordered" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="STAFF">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList3" Enabled="false" runat="server" class="form-control" DataSourceID="SqlDataSource4" DataTextField="NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONCAT(CONCAT(FIRST_NAME, ' '),LAST_NAME) &quot;NAME&quot;, USER_ID FROM MEMBER"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Course">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList1" Enabled="false" runat="server" class="form-control" DataSourceID="SqlDataSource99" DataTextField="CONCAT(CONCAT(COURSE_ID,'-'),NAME)" DataValueField="COURSE_ID" SelectedValue='<%# Bind("COURSE_ID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource99" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT COURSE_ID, CONCAT(CONCAT(COURSE_ID, ' - '),NAME) FROM COURSE"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ROLE">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList4" Enabled="false" runat="server" class="form-control" DataSourceID="SqlDataSource7" DataTextField="ROLE_NAME" DataValueField="ROLE_ID" SelectedValue='<%# Bind("ROLE_ID") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT ROLE_NAME, ROLE_ID FROM ROLE"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="INSTITUTE">
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList2" Enabled="false" class="form-control" runat="server" DataSourceID="SqlDataSource22" DataTextField="INSTITUTE_NAME" DataValueField="INSTITUTE_REG" SelectedValue='<%# Bind("INSTITUTE_REG") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT INSTITUTE_NAME, INSTITUTE_REG FROM INSTITUTE"></asp:SqlDataSource>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" DeleteCommand="DELETE FROM &quot;STAFF_COURSE_ROLE&quot; WHERE &quot;COURSE_ID&quot; = :COURSE_ID AND &quot;STAFF_ID&quot; = :STAFF_ID AND &quot;ROLE_ID&quot; = :ROLE_ID AND &quot;INSTITUTE_REG&quot; = :INSTITUTE_REG" InsertCommand="INSERT INTO &quot;STAFF_COURSE_ROLE&quot; (&quot;COURSE_ID&quot;, &quot;STAFF_ID&quot;, &quot;ROLE_ID&quot;, &quot;INSTITUTE_REG&quot;) VALUES (:COURSE_ID, :STAFF_ID, :ROLE_ID, :INSTITUTE_REG)" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT * FROM &quot;STAFF_COURSE_ROLE&quot; WHERE (&quot;STAFF_ID&quot; = :STAFF_ID) ORDER BY YEAR">
            <DeleteParameters>
                <asp:Parameter Name="COURSE_ID" Type="String" />
                <asp:Parameter Name="STAFF_ID" Type="String" />
                <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="COURSE_ID" Type="String" />
                <asp:Parameter Name="STAFF_ID" Type="String" />
                <asp:Parameter Name="ROLE_ID" Type="Decimal" />
                <asp:Parameter Name="INSTITUTE_REG" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList5" Name="STAFF_ID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
