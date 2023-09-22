<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrar Prestamistas</title>
<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/dataTables.bootstrap5.min.css" rel="stylesheet">
<style>
.modal-header {
	color: #fff;
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
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="Menu.jsp">Inicio</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Mantenimiento </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="Usuario.jsp">Mantenimiento
									Usuario</a></li>
							<li><a class="dropdown-item" href="Cuota.jsp">Mantenimiento
									de cuota</a></li>		
							<li><a class="dropdown-item" href="Planilla.jsp">Generar
									planilla</a></li>
							<li><a class="dropdown-item" href="#">Registrar
									Asistencia</a></li>
							<li><a class="dropdown-item" href="RegistraSolicitud.jsp">Registro Solicitud</a></li>
							<li><a class="dropdown-item" href="Prestamistas.jsp">Registrar Prestamistas</a></li>
						</ul></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Transaccion </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="OrdenPago.jsp">Generar
									Orden de Pago</a></li>

						</ul>
						
						<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Consultas
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="BuscaAsistencia.jsp">Buscar Asistencia</a></li> 
            <li><a class="dropdown-item" href="#">Consulta02</a></li> 
      	  </ul>
      	</li>
      
      	<li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Reportes
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Reporte 01</a></li> 
            <li><a class="dropdown-item" href="#">Reporte 02</a></li> 
      	  </ul>
      	</li>
			</div>
		</div>
	</nav>

	</br>

	<div class="container">
		<c:if test="${param.MENSAJE!=NULL}">
			<div class="alert alert-warning alert-dismissible fade show"
				role="alert">
				<strong>Sistema : </strong> ${param.MENSAJE}
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>
		</c:if>

		<h1 style="text-align: center;font-family: inherit;">Registrar Prestamistas</h1>

		<button type="button" class="btn btn-primary" data-bs-toggle="modal"
			data-bs-target="#ModalPrestamista">Nuevo Prestamista</button>
		<div class="modal fade" id="ModalPrestamista" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel">PRESTAMISTA</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form action="ServletPrestamista?accion=GRABAR" method="post"
							id="frmPrestamista">
							<div class="form-group">
								<label for="codigo">Código</label> <input type="text" class="form-control"
									name="codigo" readonly value="0" id="id-codigo">
							</div>
							<div class="form-group">
								<label for="nombre">Nombre</label> <input type="text" name="nombre"
									class="form-control" id="idNombre">
							</div>
							<div class="form-group">
								<label for="apellido">Apellido</label> <input type="text" name="apellido"
									class="form-control" id="idApellido">
							</div>
							<div class="form-group">
								<label for="direccion">Dirección</label> <input type="text" name="direccion"
									class="form-control" id="idDireccion">
							</div>
							<div class="form-group">
								<label for="correo">Correo Electrónico</label> <input type="text" name="correo"
									class="form-control" id="idCorreo">
							</div>
							<div class="form-group">
								<label for="dni">DNI</label> <input type="text" name="dni"
									class="form-control" id="idDNI">
							</div>
							<div class="form-group">
								<label for="telefono">Teléfono</label> <input type="text" name="telefono"
									class="form-control" id="idTelefono">
							</div>

							<div class="modal-footer">
								<button type="submit" class="btn btn-primary">Grabar</button>
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Cerrar</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="mt-4">
			<table id="tablePrestamista" class="table table-striped table-bordered"
				style="width: 100%;text-align: center">
				<thead>
					<tr>
						<th>CÓDIGO</th>
						<th>NOMBRE</th>
						<th>APELLIDO</th>
						<th>DIRECCIÓN</th>
						<th>CORREO</th>
						<th>DNI</th>
						<th>TELÉFONO</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>


	</div>
	<script src="js/jquery-3.5.1.js"></script>

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<!-- JS para la tabla -->
	<script
		src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
	<!--JS para validar  -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>
	
	<script src="datepicker/bootstrap-datepicker.js"></script> 
	
	

	<script>
		cargarTipoPersonal();
		cargarUsuario();

		function cargarTipoPersonal() {
			//función en JQUERY que permite leer un JSON
			$.get("ServletTipoUsuarioJSON", function(response) {
				//console.log(response);
				//bucle para realizar recorrido sobre "response"
				$.each(response, function(index, item) {
					$("#id-personal").append(
							"<option value='"+item.codigoPersonal+"'>"
									+ item.tipoPersonal + "</option>");
				})
			})
		}

		$(document).on("click", ".btn-eliminar", function() {
			//variable
			let cod;
			//leer columna còdigo de la fila actual según el botòn eliminar que hizo click
			cod = $(this).parents("tr").find("td")[0].innerHTML;
			//alert(cod);
			$("#codEliminar").val(cod);
		})

		function cargarUsuario() {
			$.get("ServletUsuarioJSON",
				function(e) {
				//console.log(e);
					$.each(e,
						function(i, item) {
							$("#tableUsuario").append(
									"<tr>"																			
									+ "<td>"+ item.codigoUsuario+ "</td>"
									+ "<td>"+ item.usuario+ "</td>"
									+ "<td>"+ item.clave+ "</td>"
									+ "<td>"+ item.tipoPersonal+ "</td>"
									+ "<td><button type='button' class='btn btn-info btn-buscar' data-bs-toggle='modal' data-bs-target='#ModalUsuario'>BUSCAR</button></td>"
									+ "<td><button type='button' class='btn btn-danger btn-eliminar' data-bs-toggle='modal' data-bs-target='#modalEliminar'>ELIMINAR</button></td>"
									+ "</tr>");
									})
								$('#tableUsuario').DataTable();
							})

		}
		$(document).on(
				"click",
				".btn-buscar",
				function() {
					//variables
					let cod, usu, clave;
					cod = $(this).parents("tr").find("td")[0].innerHTML;
					/*nom=$(this).parents("tr").find("td")[1].innerHTML;
					pat=$(this).parents("tr").find("td")[2].innerHTML;
					mat=$(this).parents("tr").find("td")[3].innerHTML;
					sexo=$(this).parents("tr").find("td")[4].innerHTML;
					hijos=$(this).parents("tr").find("td")[5].innerHTML;
					sue=$(this).parents("tr").find("td")[6].innerHTML;*/
					$.get("ServletUsuario?accion=BUSCAR&codigo="+cod,function(response) {
								console.log(response);
								//mostrar en las controles del modsalDocente
								$("#id-codigo").val(response.codigoUsuario);
								$("#id-usuario").val(response.usuario);
								$("#id-clave").val(response.clave);
								$("#id-personal").val(response.codigoPersonal);

							})

				})
	</script>
	
		<script>
		$(document).ready(function () {
		    //validación
		    $('#frmUsuario').bootstrapValidator({      
	        	 fields:{
	        		 	usuario:{
	        		 		validators:{
	        		 			notEmpty:{
	        		 				message:'Campo usuario es obligatorio'
	        		 			},
	        		 			regexp:{
	        		 				regexp:/^[a-zA-Z\s\ñ\Ñ\á\é\í\ó\ú\Á\É\Í\Ó\Ú]{5,25}$/,
	        		 				message:'Campo Usuario solo letras MIN:5 MAX:25'
	        		 			}
	        		 		}
	        		 	},
	        		 	clave:{
	        		 		validators:{
	        		 			notEmpty:{
	        		 				message:'Campo clave es obligatorio'
	        		 			},
	        		 			regexp:{
	        		 				regexp:/^{5,8}$/,
	        		 				message:'Campo clave MIN:5 MAX:25'
	        		 			}
	        		 		}
	        		 	},
	        		 	codigoPersonal:{
	        		 		validators:{
	        		 			notEmpty:{
	        		 				message:'Campo Tipo Empleado es obligatorio'
	        		 			}
	        		 		}
	        		 	},
	        	 }
	        })
	        
		});
	</script>
</body>
</html>









