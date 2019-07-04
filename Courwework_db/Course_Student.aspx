<%@ Page title= "Student Course" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Course_Student.aspx.cs" Inherits="Courwework_db.Course_Student" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
      <div class ="jumbotron">
          <div class="container">
              <div class="row">
                  <div class="col-xs-6">
                      <h2><span style="float:left">Student Course Record</span></h2>
                  </div>
                  <div class="col-xs-6">
                      <div class="form-group" style ="float:right">
                          <label>Select Course
                              <asp:DropDownList ID="DropDownList12" class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource23243" DataTextField="NAME" DataValueField="COURSE_ID">
                              </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSource23243" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT COURSE_ID, NAME FROM COURSE"></asp:SqlDataSource>
                          </label>
                          &nbsp;</div>
                  </div>
              </div>
              <div class="row">
                  <div class ="col-xs-6"></div>
                    <div class ="col-xs-6">
                        <div class="form-group" style ="float:right">
                            <label>Select Year</label>
                            <asp:DropDownList ID="DropDownList10" style="float:right" class="form-control" runat="server" DataSourceID="SqlDataSource2453" DataTextField="YEAR" DataValueField="YEAR" AutoPostBack="True">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2453" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT DISTINCT YEAR  FROM CLASSCOURSES ORDER BY YEAR DESC"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
          
        </div>
    
      <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" CssClass="table table-bordered" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
              <AlternatingRowStyle BackColor="#CCCCCC" />
              <Columns>
                  <asp:BoundField DataField="COMPLETED_YEAR" HeaderText="COMPLETED_YEAR" SortExpression="COMPLETED_YEAR" />
                  <asp:BoundField DataField="USER_ID" HeaderText="USER_ID" SortExpression="USER_ID" />
                  <asp:BoundField DataField="STUDENT NAME" HeaderText="STUDENT NAME" SortExpression="STUDENT NAME" />
                  <asp:BoundField DataField="COURSE" HeaderText="COURSE" SortExpression="COURSE" />
                  <asp:BoundField DataField="MARKS_OBTAINED" HeaderText="MARKS_OBTAINED" SortExpression="MARKS_OBTAINED" />
                  <asp:BoundField DataField="SUBMIT_DATE" HeaderText="SUBMIT_DATE" SortExpression="SUBMIT_DATE" />

                  <asp:BoundField DataField="ASSIGNMENT_NO" HeaderText="ASSIGNMENT_NO" SortExpression="ASSIGNMENT_NO" />
                  <asp:TemplateField HeaderText="Total Marks">


                      <ItemTemplate>
                          <asp:DropDownList ID="DropDownList11" runat="server" DataSourceID="SqlDataSource14432" DataTextField="TOTAL MARKS" DataValueField="STUDENT_ID" SelectedValue='<%# Bind("USER_ID") %>'>
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource14432" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand="SELECT SUM(sa.MARKS_OBTAINED * (a.WEIGHTAGE/100)) &quot;TOTAL MARKS&quot;, sa.STUDENT_ID 
FROM STUDENT_ASSIGNMENT sa 
JOIN ASSIGNMENT a ON sa.ASSIGNMENT_YEAR = a.YEAR AND  sa.COURSE_ID = a.COURSE_ID AND sa.ASSIGNMENT_NO =  a.ASSIGNMENT_NO
WHERE sa.COURSE_ID = :COURSE_ID
GROUP BY STUDENT_ID">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="DropDownList12" Name="COURSE_ID" PropertyName="SelectedValue" />
                              </SelectParameters>
                          </asp:SqlDataSource>
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
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prashish %>" ProviderName="<%$ ConnectionStrings:Prashish.ProviderName %>" SelectCommand=" 
SELECT stc.COMPLETED_YEAR,  std.USER_ID, CONCAT(CONCAT(std.first_name,' '), std.last_name) &quot;STUDENT NAME&quot;,CONCAT(CONCAT(c.COURSE_ID, ' '),c.Name) &quot;COURSE&quot; , sa.MARKS_OBTAINED,sa.SUBMIT_DATE,sa.ASSIGNMENT_NO
FROM STUDENT_ASSIGNMENT sa
JOIN COURSE c ON c.COURSE_ID = sa.COURSE_ID
INNER JOIN MEMBER std ON std.USER_ID = sa.STUDENT_ID AND std.INSTITUTE_REG = sa.INSTITUTE_REG
JOIN STUDENT_COURSE stc ON stc.COURSE_ID = sa.COURSE_ID AND stc.STUDENT_ID = sa.STUDENT_ID AND stc.INSTITUTE_REG = sa.INSTITUTE_REG
WHERE (c.COURSE_ID = :COURSE_ID) AND stc.COMPLETED_YEAR = :COMPLETED_YEAR
ORDER BY stc.COMPLETED_YEAR, sa.ASSIGNMENT_NO">
              <SelectParameters>
                  <asp:ControlParameter ControlID="DropDownList12" Name="COURSE_ID" PropertyName="SelectedValue" />
                  <asp:ControlParameter ControlID="DropDownList10" Name="COMPLETED_YEAR" PropertyName="SelectedValue" />
              </SelectParameters>
          </asp:SqlDataSource>
      </asp:Content>