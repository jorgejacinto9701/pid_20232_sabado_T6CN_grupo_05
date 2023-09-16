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

<title>GENERAR ORDEN DE PAGO</title>
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
            <li><a class="dropdown-item" href="#">Registrar Asistencia</a></li>
            <li><a class="dropdown-item" href="RegistraSolicitud.jsp">Registro Solicitud</a></li>
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
	
		<c:if test="${param.MENSAJE!=null}">	
			<div class="alert alert-warning alert-dismissible fade show" role="alert">
			  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
		</c:if>
	
	
	  <h1>Generar Orden de Pago</h1>
	  <div class="card">
		  <div class="card-header modal-card">
		    	
			   <button type="button" class="btn btn-light mt-3" data-bs-toggle="modal" 
			   				data-bs-target="#modalRequerimiento">
			  	GENERAR ORDEN DE PAGO
			  </button>
			    	
	  	  </div>
		  
		  <div class="card-body">
		    	  <div class="mt-5">
					  <table id="tableDocente" class="table table-success table-striped" style="width:100%">
				        <thead>
				            <tr>
				                <th>Orden N° Pago</th>
				                <th>Razon social</th>
				                <th>N° Ruc</th>
				                <th>Base</th>
				                <th>Tasa</th>
				                <th>Sede</th>
				                <th>Fecha</th>
				                <th></th>
				                <th></th>
				            </tr>
				        </thead>
				        <tbody>
					       
				        </tbody>
				    </table>
			  	</div>
		  </div>
		</div>
	  
	  
	  
	  
	  <!-- Modal -->
		<div class="modal fade" id="modalRequerimiento" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered modal-xl">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="staticBackdropLabel">GENERAR ORDEN DE PAGO</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        	<form class="row g-3">
					  <div class="col-md-4">
					    <label for="inputEmail4" class="form-label">Orden N° Pago</label>
					    <input type="email" class="form-control" id="Orden">
					  </div>
					  <div class="col-md-4">
					    <label for="inputPassword4" class="form-label">Razon social</label>
					    <input type="password" class="form-control" id="inputPassword4">
					  </div>
					  <div class="col-md-4">
					    <label for="inputPassword4" class="form-label">Base</label>
					    <input type="password" class="form-control" id="inputPassword4">
					  </div>
					  <div class="col-md-4">
					    <label for="inputEmail4" class="form-label">Tasa</label>
					    <input type="email" class="form-control" id="inputEmail4">
					  </div>
					  <div class="col-md-4">
					    <label for="inputPassword4" class="form-label">Sede</label>
					    <input type="password" class="form-control" id="inputPassword4">
					  </div>
					  <div class="col-md-4">
					    <label for="inputPassword4" class="form-label">Fecha</label>
					    <input type="password" class="form-control" id="inputPassword4">
					  </div>
					  <div class="col-md-6">
					    <label for="inputCity" class="form-label">Buscar Planilla</label>
					    <input type="text" class="form-control" id="id-cantidad">
					  </div>
					  <div class="col-md-6">
					    <label for="inputState" class="form-label">Detalle</label>
						    <table id="tableDetalle" class="table table-striped" style="width:100%">
					        <thead>
					            <tr>
					                <th>Tributo Omitido</th>
					                <th>Interes Moratorio</th>
					                <th>Monto total</th>
					                <th></th>
					            </tr>
					        </thead>
					        <tbody>
						       
					        </tbody>
					    </table>
					  </div>
					
					  <div class="modal-footer">
					  	<button type="submit" class="btn btn-success">IMPRIMIR ORDEN DE PAGO</button>
					  	<button type="submit" class="btn btn-success">GENERAR ORDEN DE PAGO</button>
				        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Cerrar</button>
				      </div>
					</form>
		      </div>
		    </div>
		  </div>
		</div>
	  <!-- FIN MODAL -->
	 
	  
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

	
</script>

	
</body>
</html>










