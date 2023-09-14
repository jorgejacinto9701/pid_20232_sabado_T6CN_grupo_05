<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link href="css/dataTables.bootstrap5.min.css" rel="stylesheet">
<link href="datepicker/bootstrap-datepicker.css" rel="stylesheet">
 <link rel="stylesheet" href="tu-archivo-css.css">


	<style>
		.modal-header{
			color:#fff;
			background: #428bca;
			display: flex;
	  		justify-content: center;
	  		
		}
		.help-block {
		  		color: red;
		}
		.form-group.has-error .form-control-label {
		  color: red;
		}
		.form-group.has-error .form-control {
		  border: 1px solid red;
		  box-shadow: 0 0 0 0.2rem rgba(250, 16, 0, 0.18);
		}
	</style>

</head>
<body >
	<%
	String rpta = "";
	if (request.getParameter("rpta") != null) {
		int r = Integer.parseInt(request.getParameter("rpta"));
		if (r == 0) {
			rpta = "Error: El usuario o contraseña no son validos";
		}
	}
	%>
	
 </br>
 
	<div class="container mt-4 col-lg-4">
	       
		<div class="card col-sm-10">
			<div class="card-body ">
	
	
				<form action="ServletLoginUsuarios" class="form-sign" method="POST">
					<div class="form-group text-center">
						<h3>Inicio de Sesion :)</h3>
					</div>
					<div class="form-group">
						<label>Ingrese Usuario</label> <input type="text"  id="idUsuario" name="nombre"
							class="form-control">
					</div>
					<div class="form-group">
						<label>Ingrese la contraseña</label> <input type="password"  id="idPassword" name="contraseña"
							class="form-control">
					</div>
					<input type="submit" name="accion" value="Ingresar"
						class="btn btn-primary btn-block mt-2">
					<p style="color: gren"><%=rpta%></p>
				</form>
			</div>
		</div>
	</div>






	<!-- Scripts -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
		
		
		
		
	<script src="js/jquery-3.5.1.js"></script>
	
<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<!-- JS para la tabla -->
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>

<!-- JS para la validación-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>
		
		
		
		
		
		<!-- VALIDAR FORMULARIO -->
	<script type="text/javascript">
		$(document).ready(function(){    
	        $('#idForm').bootstrapValidator({    
	        	feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove'
            	}, 
	        	 fields:{
	        		 Usuario: {
	     	    		selector:'#idUsuario',   
	                    validators: {    
	                        notEmpty: {    
	                            message: 'Debes ingresar un nombre válido'    
	                        }      
	                    }    
	                },
	        		Password:{
	        			selector:'#idPassword',
	        			validators:{
	        				notEmpty:{
	        					message: 'Debes ingresar tu contraseña'
	        				}
	        			}
	        		}
	        	 }
	        });
	    });
	</script>
		
		
		
		
</body>

</html>