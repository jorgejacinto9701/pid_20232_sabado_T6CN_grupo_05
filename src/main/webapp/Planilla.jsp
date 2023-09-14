<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<!-- Bootstrap CSS -->
	    <link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/dataTables.bootstrap5.min.css" rel="stylesheet">
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
          </ul>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Transaccion
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="OrdenPago.jsp">Generar Orden de Pago</a></li>
        
      </ul>
      
    </div>
  </div>
</nav>
</br>
 <div class="container">
		<c:if test="${param.MENSAJE!=NULL}">	
				<div class="alert alert-warning alert-dismissible fade show" role="alert">
				  <strong>Sistema : </strong> ${param.MENSAJE}
				  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
		</c:if>
			
	
			<h1>Generar planilla</h1>
	<form id="formPlanilla" action="ServletPlanilla?accion=GRABAR" method="post">
	<div class="row">
		
			<div class="col-6 form-group">
				<div class="form-group">
					<div class="form-group">
						<input type="button" name="buscarPersonal" value="Generar descuentos" class="btn btn-primary btn-descontar">
					</div>
					<div class="form-group">
						<label>Código de planilla</label>
				    	<input type="text" class="form-control" name="codigoPlanilla" readonly value="0" id="id-codigo">		    
					</div>
					<div class="form-group">
						<label>Anticipo</label> <input type="text" name="anticipo"
							class="form-control" id="id-anticipo">
					</div>
					<div class="form-group">
						<label>Seguro</label> <input type="text" name="seguro"
							class="form-control" id="id-seguro">
					</div>
					<div class="form-group">
						<label>AFP</label> <input type="text" name="afp"
							class="form-control" id="id-afp">
					</div>
					
				</div>
			</div>
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
						<label>Nombres</label> <input type="text" name="nombre"
							class="form-control" readonly id="id-nombrePersonal">
					</div>
					
					<div class="form-group">
						<label>Apellidos</label> <input type="text" name="apellido"
							class="form-control" readonly id="id-apellidoPersonal">
					</div>
					<div class="form-group">
						<label>Sueldo Bruto</label> <input type="text" name="sueldo"
							class="form-control" readonly id="id-sueldoPersonal">
					</div>
					<div class="form-group">
						<label>Fecha de Ingreso</label> <input type="date" name="fecha"
							class="form-control" id="id-fecha">
					</div>
					
					
				  <div class="modal-footer">
			      	<button type="submit" class="btn btn-primary">Registrar</button>
			      </div>
				
			</div>

	
	</div>
	
</form>	



	
	<div class="mt-4">
			<table id="tablePlanilla" class="table table-striped table-bordered"
				style="width: 100%">
				<thead>
					<tr>
						<th>CÓDIGO</th>
						<th>NOMBRES</th>
						<th>APELLIDOS</th>
						<th>SUELDO BRUTO</th>
						<th>FECHA</th>
						<th>ANTICIPO</th>
						<th>SEGURO</th>
						<th>AFP</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>


	
	</div>
	
	
	
	
	
			

	

<!-- JS principal -->
	<script src="js/jquery-3.5.1.js"></script>

	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	

	<!--JS para validar  -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>

	<script src="datepicker/bootstrap-datepicker.js"></script>
	
	<script>
	cargarPlanilla();
	//asignar evento click a todos los botones con CLASE "btn-buscar"
	//usamos jquery
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
			$("#id-sueldoPersonal").val(response.sueldo);
			
			
		})
		
	})
	
	
	
	//asignar evento click a todos los botones con CLaSE "btn-buscar"
	//usamos jquery
	$(document).on("click",".btn-descontar",function(){
		//variables
		let cod;
		//leer columnas de la fila actual según el botòn buscar que hizo click
		cod=$("#id-personal").val();
		$.get("ServletPersonal?accion=BUSCAR&codigoPersonal="+cod,function(response){
			console.log(response);
			
			$("#id-afp").val(response.sueldo*0.10);
			$("#id-seguro").val(response.sueldo*0.09);
			//$("#id-anticipo")=$("#id-afp")+$("#id-seguro")  ;
			
		})
		
	})
	
	$(document).on("click",".btn-descontar",function(){
		//variables
		let cod, codP;
		//leer columnas de la fila actual según el botòn buscar que hizo click
		cod=$("#id-personal").val();
		$.get("ServletPlanilla?accion=BUSCAR&codigoPlanilla="+cod,function(response){
			console.log(response);
			$("#id-anticipo").val(response.afp+response.seguro) ;
			
		})
		
	})
	
		function cargarPlanilla() {
			$.get("ServletPlanillaJSON",
				function(e) {
				//console.log(e);
					$.each(e,
						function(i, item) {
							$("#tablePlanilla").append(
									"<tr>"																			
									+ "<td>"+ item.codigoPlanilla+ "</td>"
									+ "<td>"+ item.nombresPersonal+ "</td>"
									+ "<td>"+ item.apellidosPersonal
									+ "</td>"
									+ "<td>"+ item.sueldo+ "</td>"
									+ "<td>"+ item.fecha+ "</td>"
									+ "<td>"+ item.anticipo+ "</td>"
									+ "<td>"+ item.seguro+ "</td>"
									+ "<td>"+ item.afp+ "</td>"
									+ "</tr>");
									})
								$('#tablePlanilla').DataTable();
							})

		}

</script>

</body>
</html>
