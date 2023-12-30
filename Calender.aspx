<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calender.aspx.cs" Inherits="Samples.Calender" MasterPageFile="~/Main.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /*#FeaturedContent_Calendar1 td{
            width:150px !important;
            height:150px !important
        }
          #FeaturedContent_Calendar1 tbody td{
            width:15% !important;
            height:15px !important
        }*/
        td{
            vertical-align:top !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    <form id="form1" runat="server">  
   <section class="content">
            <div class="tab-pane fade show active card-body" id="custom-content-above-home" role="tabpanel" aria-labelledby="custom-content-above-home-tab">
        <p style="text-align: center">  
        <b></b>  
       <%-- <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="Medium"  
            ForeColor="#0066FF">Indian List of Holidays 2009</asp:Label><br /></b>  --%>
        </p>  
        <asp:Calendar ID="Calendar1" runat="server" BackColor="white" BorderColor="white"  
            BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"  Width="100%"
            ForeColor="#663399" ShowGridLines="True" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"  
            OnVisibleMonthChanged="Calendar1_VisibleMonthChanged" Font-Bold="True">  
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />  
            <SelectorStyle BackColor="#FFCC66" />  
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />  
            <OtherMonthDayStyle ForeColor="#CC9966" />  
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />  
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />  
            <TitleStyle BackColor="#4b545c" Font-Bold="True" Font-Size="9pt" ForeColor="white" />  
        </asp:Calendar>       
        <b></b>  
        <asp:Label ID="LabelAction" runat="server"></asp:Label><br />         
    </div></section>
    </form> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
