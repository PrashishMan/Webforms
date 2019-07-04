<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Courwework_db._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Institute Management System</h1>
        <p class="lead">Place to record and manage your institue's employees, students, courses and classes in one place. Start your journey by creating an insititue </p>
        <p><a href="InstituteForm" class="btn btn-primary btn-lg">Create institute &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                Create your institue and start storing information about your insitutes policy in one place
            </p>
        </div>
        <div class="col-md-4">
            <h2>Rules</h2>
            <p>
                When storing the records please consider the following rules            
            </p>
            <ul>
                <li>Always member to fill all the fields specially id's</li>
                <li>Id's for institute, department, class and location must be a number</li>
                <li>Prefix the student id with "ST-" and Staff id with "TC-" </li>
            </ul>
        </div>
        <div class="col-md-4">
            <h2>Conditions</h2>
            <ul>
                <li>This application is totally free for use and distribution but at your own risk</li>
                
            </ul>
            <ul>
               <li>Anybody who wish to modify this application is free to do so</li>
            </ul>
        </div>
    </div>

</asp:Content>
