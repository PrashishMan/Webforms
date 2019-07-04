<%@ Page Language="C#" Title="TeacherStudent" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="TeacherStudent.aspx.cs" Inherits="Courwework_db.TeacherStudent" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div>
            <div class ="jumbotron">
          <div class="container">
              <h2><span style="float:left">Teacher's Student</span></h2>
              <div class="form-group" style ="float:right">
                  <label>Select Teacher</label>
                  <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="USER_ID">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT CONCAT(CONCAT(m.FIRST_NAME, ' '), m.LAST_NAME) &quot;name&quot;, USER_ID 
                    FROM MEMBER m 
                    JOIN STAFF_DEPARTMENT sd ON m.USER_ID = sd.STAFF_ID AND m.INSTITUTE_REG = sd.INSTITUTE_REG
                    AND sd. DEPARTMENT_ID = 1004"></asp:SqlDataSource>
              </div>
            
            </div>
        </div>

            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" CssClass="table table-bordered" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    
                    <asp:TemplateField HeaderText="TEACHER NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" Enabled="false" class="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="TEACHER NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT m.FIRST_NAME||' '||m.LAST_NAME &quot;TEACHER NAME&quot;, m.user_id FROM MEMBER m 
JOIN STAFF s ON s.STAFF_ID = m.USER_ID"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="STUDENT NAME">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList3" Enabled="false" class="form-control" runat="server" DataSourceID="SqlDataSource133" DataTextField="STUDENT NAME" DataValueField="USER_ID" SelectedValue='<%# Bind("STUDENT_ID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource133" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT m.FIRST_NAME||' '||m.LAST_NAME &quot;STUDENT NAME&quot;, m.user_id FROM MEMBER m 
JOIN STUDENT s ON s.STUDENT_ID = m.USER_ID"></asp:SqlDataSource>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT s.staff_id, st.student_id, c.name
FROM STAFF_COURSE_ROLE scr
JOIN STAFF s ON scr.staff_id = s.staff_id AND s.INSTITUTE_REG=scr.INSTITUTE_REG
JOIN COURSE_ENROLLMENT ce 
ON ce.COURSE_ID = scr.COURSE_ID
JOIN STUDENT st ON st.STUDENT_ID = ce.STUDENT_ID AND st.INSTITUTE_REG1=ce.INSTITUTE_REG AND ce.ENROLLED_YEAR = scr.YEAR
JOIN COURSE c ON ce.COURSE_ID = c.COURSE_ID
WHERE (s.staff_id = :staff_id)
GROUP BY st.STUDENT_ID,s.STAFF_id, c.name">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="staff_id" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            
        </div>
    </asp:Content>
