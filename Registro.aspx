<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registro.aspx.cs" Inherits="Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrar Cliente</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"/>
    <script type="text/javascript">
    // <![CDATA[
            function Reset1_onclick() {
            }
    // ]]>
    </script>
</head>
<body>
   
    <div>
     <h1 class="text-center">Registrar Clientes</h1>
    </div>
    <hr />
    <div class="col-md-6 col-md-offset-3">   
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="tb_nom">Nombres (*)</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="<div class='alert alert-danger' role='alert'>El nombre es obligatorio" ControlToValidate="tb_nom" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:TextBox ID="tb_nom" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div>
                <label for="tb_apePat">Apellido Paterno (*)</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="<div class='alert alert-danger' role='alert'>El apellido paterno es obligatorio" ControlToValidate="tb_apePat" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:TextBox ID="tb_apePat" CssClass="form-control" runat="server" />
            </div>

            <div>
                <label for="tb_apeMat">Apellido Materno (*)</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="<div class='alert alert-danger' role='alert'>El apellido materno es obligatorio" ControlToValidate="tb_apeMat" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:TextBox ID="tb_apeMat" CssClass="form-control" runat="server" />
            </div>

            <div>
                <label for="tb_dni">Documento de Identidad (*)</label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="<div class='alert alert-danger' role='alert'>El documento de identidad es obligatorio" ControlToValidate="tb_dni" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:TextBox ID="tb_dni" CssClass="form-control" runat="server" />
            </div>

            <div class="form-group">
            <label for="tb_usu">Nombre de Usuario (*)</label>
             <asp:TextBox ID="tb_usu" CssClass="form-control" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tb_usu" ErrorMessage="<div class='alert alert-danger' role='alert'>El nombre de usuario es obligatorio</div>" 
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
          </div>

          <div class="form-group">
            <label for="tb_cor">Correo Electr&oacute;nico (*)</label>
            <asp:TextBox ID="tb_cor" CssClass="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tb_cor" ErrorMessage="<div class='alert alert-danger' id='emailValidator' role='alert'>El correo es obligatorio</div>" 
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="tb_cor" 
                        ErrorMessage="El formato debe ser de correo electronico" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>          
          </div>
          
          <div class="form-group">
            <label for="tb_con">Contraseña (*)</label>
            <asp:TextBox ID="tb_con" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="tb_con" ErrorMessage="<div class='alert alert-danger' role='alert'>La contraseña es obligatoria</div>" 
                        ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
          </div>
                    
          <div class="form-group">
            <label for="tb_cco"> Confirmar Contraseña (*)</label>
           <asp:TextBox ID="tb_cco" CssClass="form-control"  runat="server" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="tb_cco" 
                        ErrorMessage="<div class='alert alert-danger' role='alert'>La confirmacion de la contraseña es obligatoria</div>" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="tb_con" ControlToValidate="tb_cco" 
                        ErrorMessage="Las contraseñas deben ser iguales" Display="Dynamic"></asp:CompareValidator>
          </div>


          <div class="form-group">
            <label for="lb_pai">Modelo de Carro:</label>
                     <asp:DropDownList ID="lb_pai" runat="server" CssClass="form-control">
                        <asp:ListItem Selected="True">Seleccionar Marca</asp:ListItem>
                        <asp:ListItem>Honda</asp:ListItem>
                        <asp:ListItem>Toyota</asp:ListItem>
                        <asp:ListItem>Suzuki</asp:ListItem>
                        <asp:ListItem>Holanda</asp:ListItem>
                        <asp:ListItem>Brasil</asp:ListItem>
                    </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="lb_pai" ErrorMessage="<div class='alert alert-danger' role='alert'>Debe seleccionar un pais</div>" 
                        ForeColor="Red" InitialValue="Seleccione un Pais" Display="Dynamic"></asp:RequiredFieldValidator>              
          </div>
        <asp:Button ID="Button1" cssClass="btn btn-primary" runat="server" Text="Enviar" onclick="Button1_Click" />
        <input id="Reset1" type="reset" class="btn btn-default" value="Borrar" onclick="return Reset1_onclick()" />
       </form>              
    </div>
</body>
</html>
