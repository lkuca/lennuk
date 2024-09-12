<%@ Page Title="Home Page" Language="VB" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Sugupuu._Default" %>

<!DOCTYPE html>
<html>
    <head>
        <title>xml ja xslt andmete kuvamine</title>
    </head>
    <body>
        <h1>xml ja xslt andmete kuvamine</h1>
        <div>
            <asp:Xml runat="server" DocumentSource="~/lennujaam.xml" TransformSource="~/lennujaamAdd.xslt" />
        </div>
    </body>
</html>
