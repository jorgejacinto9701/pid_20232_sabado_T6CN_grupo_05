<!-- trabajar con la libreria core de jstl -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/dataTables.bootstrap5.min.css" rel="stylesheet">

<title>Registrar Asistencia</title>
<style>
	.modal-header{
		color:#fff;
		background: #198754;
		display: flex;
  		justify-content: center;
  		
	}
	.modal-card{
		color:#fff;
		background: #198754;
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
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       
       
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Mantenimiento
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="Usuario.jsp">Mantenimiento Usuario</a></li>
            <li><a class="dropdown-item" href="Planilla.jsp">Generar planilla</a></li>
            <li><a class="dropdown-item" href="Asistencia.jsp">Registrar Asistencia</a></li>
            <li><a class="dropdown-item" href="RegistraSolicitud.jsp">Registro Solicitud</a></li>
            <li><a class="dropdown-item" href="Prestamistas.jsp">Registrar Prestamistas</a></li>
          </ul>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Transaccion
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="OrdenPago.jsp">Generar Orden de Pago</a></li>
        
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

<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
Date date = new Date();
DateFormat dateFormat1 = new SimpleDateFormat("dd-MM-yyyy");

DateFormat dateFormat2 = new SimpleDateFormat("HH:mm");
%>



	  <h1>Registrar Asistencia</h1>
		<form action="ServletAsistencia?accion=GRABAR" method="post"
							id="frmAsistencia">
			<div class="col-6">
				<div>
					<label style="margin-bottom:10px">Datos del Personal</label>
				</div>
						
				<div class="form-group d-flex">
					<div class="col-sm-6 d-flex">
						<input type="text" name="codigoPersonal"  class="form-control" placeholder="Codigo" id="id-personal"> 
						<input type="button" name="buscarPersonal" value="Buscar" class="btn btn-primary btn-buscar">
					</div>		
				</div>
				<div class="form-group">
						<label>Codigo</label> <input type="text" name="codigoAsistencia"
							class="form-control" id="id-codigoAsistencia" readonly value="0" >
					</div>
				
				
				<div class="form-group">
						<label>Nombres</label> <input type="text" name="nombre"
							class="form-control" id="id-nombrePersonal">
					</div>
					
					<div class="form-group">
						<label>Apellidos</label> <input type="text" name="apellido"
							class="form-control" id="id-apellidoPersonal">
					</div>
					
					<div class="form-group">
						<label>Fecha</label> <input type="text" 
						id="fch" name="fecha" value="<%=dateFormat1.format(date)%>" class="form-control" readonly="readonly">
						
					</div>
					<div class="form-group">
						<label>Hora</label><input type="text" id="fch" 
						name="hora" value="<%=dateFormat2.format(date)%>" class="form-control" readonly="readonly">
					</div>
				
					<div class="modal-footer">
								<button type="submit" class="btn btn-primary">Grabar</button>
					</div>
			</div>		
		</form>	
	  
	  
	
	  
	</div>
<script src="js/jquery-3.5.1.js"></script>
	
<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<!-- JS para la tabla -->
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>

<!-- JS para la validación-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>

<script>
$(document).on("click",".btn-buscar",function(){
	//variables
	let cod;
	//leer columnas de la fila actual según el botòn buscar que hizo click
	cod=$("#id-personal").val();
	$.get("ServletPersonal?accion=BUSCAR&codigoPersonal="+cod,function(response){
		console.log(response);
		//mostrar en las controles
		$("#id-nombrePersonal").val(response.nombresPersonal);
		$("#id-apellidoPersonal").val(response.apellidosPersonal);
		
		
	})
	
})

	
</script>

	
</body>
</html>










