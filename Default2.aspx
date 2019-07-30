<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


     <script type="text/javascript">
         var counter = 1;

         function uploadComplete(sender, args) {
             var filename = args.get_fileName();
             $get("img" + counter + "").src = "./test/" + filename;

             $get("ImgExSrc" + counter + "").value = "./test/" + filename;
             counter = counter + 1;


         }

         function anupam() {

         }
    </script>


</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">LinkButton</asp:LinkButton>
    <div>
       <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

         <cc1:AjaxFileUpload ID="AjaxFileUpload1" throbberid="myThrobber" OnClientUploadComplete="uploadComplete"  onuploadcomplete="AjaxFileUpload1_UploadComplete" 
                                             runat="server" MaximumNumberOfFiles="4"></cc1:AjaxFileUpload>
  
        <img src="" id="img1" alt="" />
        <img src="" id="img2" alt="" />
        <img src="" id="img3" alt="" />

        <img src="" id="img4" alt="" />

        <asp:HiddenField runat="server" ID="ImgExSrc1" />
        <asp:HiddenField runat="server" ID="ImgExSrc2" />
         <asp:HiddenField runat="server" ID="ImgExSrc3" />

        
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
        
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="CITY" DataValueField="CITY">
        </asp:DropDownList>
        

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" 
            SelectCommand="SELECT [CITY] FROM [state]"></asp:SqlDataSource>

            
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:TextBox ID="TextBox3"
            runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Button" onclick="Button2_Click" />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <Triggers>
                
                <asp:AsyncPostBackTrigger ControlID="Button1" />
                <asp:AsyncPostBackTrigger ControlID="Button2" />
                <asp:AsyncPostBackTrigger ControlID="DropDownList1" />
                
            </Triggers>
        </asp:UpdatePanel>

    </div>
    </form>
</body>
</html>
