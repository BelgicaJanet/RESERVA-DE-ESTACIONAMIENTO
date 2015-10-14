<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainCliente.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sistema de Estacionamiento</title>
</head>
<body>
    <h1>Bienvenido: <%= Session["Session_user"] %></h1> 
</body>
</html>
