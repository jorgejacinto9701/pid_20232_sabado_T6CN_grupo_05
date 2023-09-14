<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTRAR USUARIO</title>
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
			<a class="navbar-brand" href="#">Inicio</a>
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
									cuotas </a></li>	
							<li><a class="dropdown-item" href="Planilla.jsp">Generar
									planilla</a></li>
							<li><a class="dropdown-item" href="#">Registrar
									Asistencia</a></li>
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

		<h1>Registrar Usuarios</h1>

		<button type="button" class="btn btn-primary" data-bs-toggle="modal"
			data-bs-target="#ModalUsuario">Nuevo Usuario</button>
		<div class="modal fade" id="ModalUsuario" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel">USUARIO</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form action="ServletUsuarioss?accion=GRABAR" method="post"
							id="frmUsuario">
							<div class="form-group">
								<label for="codigo">Código</label> <input type="text" class="form-control"
									name="codigoUsuario" readonly value="0" id="id-codigo">
							</div>
							<div class="form-group">
								<label for="usuario">Nombre</label> <input type="text" name="nombre"
									class="form-control" id="id-nombre">
							</div>
							<div class="form-group">
								<label for="usuario">Apellido</label> <input type="text" name="usuario"
									class="form-control" id="id-usuario">
							</div>
							<div class="form-group">
								<label for="usuario">Email</label> <input type="text" name="usuario"
									class="form-control" id="id-usuario">
							</div>
							<div class="form-group">
								<label for="usuario">Contraseña</label> <input type="text" name="usuario"
									class="form-control" id="id-usuario">
							</div>
							<div class="form-group">
								<label for="usuario">Telefono</label> <input type="text" name="usuario"
									class="form-control" id="id-usuario">
							</div>
						

							<div class="form-group">
								<label for="tipo" class="form-label">Estado de cuenta</label>
								<select class="form-select form-control" name="codigoPersonal"
									id="id-personal">
									<option value="" selected>[Seleccione su tipo de empleado]</option>

								</select>
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


		<!-- Modal PARA ELIMINAR-->
		<div class="modal fade" id="modalEliminar" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel">SISTEMA</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<form id="formUsuario" action="ServletUsuario?accion=ELIMINAR"
							method="post">
							<h4>¿Seguro de eliminar el Usuario?</h4>
							<input type="hidden" class="form-control" name="codigoEliminar"
								id="codEliminar">
							<div class="modal-footer">
								<button type="submit" class="btn btn-primary">Eliminar</button>
								<button type="button" class="btn btn-secondary"
									data-bs-dismiss="modal">Cancelar</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!--fin modal PARA ELIMINAR-->

		<div class="mt-4">
			<table id="tableUsuario" class="table table-striped table-bordered"
				style="width: 100%">
				<thead>
					<tr>
						<th>CÓDIGO</th>
						<th>NOMBRE</th>
						<th>APELLIDO</th>
						<th>EMAIL</th>
						<th>CONTRASEÑA</th>
						<th>TELEFONO</th>
						<th>FECHA REGISTRO</th>
						<th>ESTADO</th>
						<th></th>
						<th></th>
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
			$.get("ServletSUsuariossJSON",
				function(e) {
				//console.log(e);
					$.each(e,
						function(i, item) {
							$("#tableUsuario").append(
									"<tr>"																			
									+ "<td>"+ item.IdUsuario+ "</td>"
									+ "<td>"+ item.nombre+ "</td>"
									+ "<td>"+ item.apellido+ "</td>"
									+ "<td>"+ item.email+ "</td>"
									+ "<td>"+ item.contraseña+ "</td>"
									+ "<td>"+ item.telefono+ "</td>"
									+ "<td>"+ item.FechaRegistro+ "</td>"
									+ "<td>"+ item.Estado+ "</td>"
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
		 $(document).ready(function(){     
		        $('#frmUsuario').bootstrapValidator({      
		        	 fields:{
		        		 nombre:{
		        			 validators:{
		        				 notEmpty:{
		        					 message:'Campo nombre es obligatorio'
		        				 },
		        						 regexp:{
		 	        		 				regexp:/^[a-zA-Z\s\ñ\Ñ\á\é\í\ó\ú\Á\É\Í\Ó\Ú]{5,50}$/,
		 	        		 				message:'Campo nombre solo letras MIN:5 MAX:50'
		 	        		 			}
		 	        		 		}
		        		 },
		        		 costo:{
		        			 validators:{
		        				 notEmpty:{
		        					 message:'Campo costo es obligatorio'
		        				 },
		        				 regexp:{
		      		 				regexp:/^[0-9]{1,5}$/,
		      		 				message:'Campo costo solo numeros MIN:5000 MAX:25000'
		      		 			}
		        			 }
		        		 },
		        		 numero:{
		        			 validators:{
		        				 notEmpty:{
		        					 message:'Campo numero es obligatorio'
		        				 },
		        				 regexp:{
		       		 				regexp:/^([2-6]||[1][0-0])$/,
		       		 				message:'Campo numero solo numeros MIN:2 MAX:6'
		       		 			}
		        			 }
		        		 },  
		        	 }
		        });   
					
		    });    
	</script>
</body>
</html>









