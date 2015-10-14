<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Iniciar Sesi&oacute;n</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"/>
    <!-- Latest compiled and minified JavaScript -->
    <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
    <link rel="stylesheet" type="text/css" href="CSS/index.css"/>
    <script type="text/javascript" src="JS/index.js"></script>
</head>
<body>
    <div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Inicio Sesion </h3>
			 	</div>
			  	<div class="panel-body">

			    	<form id="form1" runat="server">
                    
			    	  	<div class="form-group">
			    		    <!-- <input class="form-control" placeholder="E-mail" name="email" type="text"> -->
			    		    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="<div class='alert alert-danger'><strong>Error! </strong>No deje vacìo el campo e-mail</div>" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
			    		    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="<div class='alert alert-danger'><strong>Error! </strong>No deje vacìo el campo clave</div>" ControlToValidate="txtPassword" Display="Dynamic"></asp:RequiredFieldValidator>
			    		    <div class="alert alert-danger" id="loginFail" runat="server" visible="False"><strong>Error! </strong>Email o clave equivocados</div>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
			    		</div>
			    		<div class="form-group">
			    			<!-- <input class="form-control" placeholder="Password" name="password" type="password" value="">-->
			    		    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"  TextMode="Password"></asp:TextBox>
			    		</div>
			    		<div class="checkbox">
			    	    	<label>
			    	    		<!--<input name="remember" type="checkbox" value="Remember Me"> Remember Me-->
                                <asp:CheckBox ID="chbRemember" runat="server" /> Recordarme
			    	    	</label>
			    	    </div>
                        <asp:Button ID="Button1" CssClass="btn btn-lg btn-success btn-block" runat="server" Text="Inicar Sesi&oacute;n" OnClick="Button1_Click" />
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
