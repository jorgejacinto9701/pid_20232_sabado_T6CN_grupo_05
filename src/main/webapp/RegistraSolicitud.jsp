<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="esS" >

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>

<title>Registra Solicitud de Prestamos</title>
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
							<li><a class="dropdown-item" href="RegistraSolicitud.jsp">Registro Solicitud</a></li>
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

<jsp:include page="Menu.jsp" />
<div class="container" style="margin-top: 4%">
<h2 class="text-center">Registra Solicitud de Prestamos</h2>

<br>
    

	<form action="registraSolicitud" id="id_form"> 
			<input type="hidden" name="metodo" value="registra">
			
			<div class="row" style="margin-top: 5%">
			<div class="form-group col-sm-6">
				<div class="col-sm-4">
					<label class="control-label" for="id_nombre">Nombre</label>
				</div>
				<div class="col-sm-8">
					<input class="form-control" type="text" id="id_nombre" name="nombre" placeholder="Ingrese el nombre" maxlength="40">
				</div>
			</div>
			<div class="form-group  col-sm-6">
				<div class="col-sm-4">
					<label class="control-label" for="id_dni">DNI</label>
				</div>
				<div class="col-sm-6">
					<input class="form-control" type="text" id="id_dni" name="dni" placeholder="Ingrese el dni" maxlength="8">
		 		</div>
			</div>
		</div>
			<div class="row" style="margin-top: 0%">
			<div class="form-group col-sm-6">
				<div class="col-sm-4">
					<label class="control-label" for="id_correo">Correo</label>
				</div>
				<div class="col-sm-8">
					<input class="form-control" type="text" id="id_correo" name="correo" placeholder="Ingrese el correo" maxlength="100">
				</div>
			</div>
			<div class="form-group  col-sm-6">
				<div class="col-sm-4">
					<label class="control-label" for="id_fecha">Fecha de Nacimiento</label>
				</div>
				<div class="col-sm-6">
					<input class="form-control" type="date" id="id_fecha" name="fechaNacimiento" placeholder="Ingrese la fecha" maxlength="100">
		 		</div>
			</div>
		</div>
				
			<div class="form-group col-sm-6">
			<div class="col-sm-4">	
			  <label class="control-label" for="id_monto">Monto</label>
			</div>
				<div class="col-sm-8">
				<input class="form-control" type="text" id="id_monto" name="monto" placeholder="Ingrese el monto">
				</div>
				
			</div>
			
				<div class="form-group col-sm-6">
			<div class="col-sm-4">	
				<label class="control-Label" for ="id_fechaIni">Fecha Inicial de Prestamo</label>
			</div>
			
				<div class="col-sm-8">
				<input class="form-control" type ="date" id="id_fechaIni" name="fechaIni" placeholder="Ingrese La fecha inical del Prestamo">
			</div>
			
			</div>
			
	        <div class="form-group col-sm-6">
			<div class="col-sm-4">	
				<label class="control-Label" for ="id_fechaFin">Fecha Final de Prestamo</label>
			</div>
			
				<div class="col-sm-8">
				<input class="form-control" type ="date" id="id_fechaFin" name="fechaFin" placeholder="Ingrese La fecha final del Prestamo">
			</div>
			
			</div>
		
			<div class="col-sm-6">
			<div class="col-sm-4">
			<label class="control-label" for="id_usuario"> Usuario </label>
			</div>
				<div class="col-sm-8">
				 <select class="form-control" id="id_usuario" name="usuario">
					<option value=" ">[Seleccione]</option>
				</select>
				</div>
				
			</div>
			<br>
			
			<div  class="">
				<button type="submit" class="btn btn-primary" id="id_btn_registra">Crear Solicitud</button>
			</div>
	</form>
</div>

<script type="text/javascript">
$("#success-alert").fadeTo(1000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>


<script type="text/javascript">
$(document).ready(function() {
    $('#id_form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        
        fields:{
        	monto : {  
        		selector: "#id_monto",
        		validators : {
        			notEmpty: {
                        message: 'El monto es requerido'
                    },
        		}
        	},
        	fechaIni : {  
        		selector: "#id_fechaIni",
        		validators : {
        			notEmpty: {
                        message: 'La fecha inicial es requerida'
                    },
                   
        		}
        	},
        	fechaFin : {  
        		selector: "#id_fechaFin",
        		validators : {
        			notEmpty: {
                        message: 'La fecha inicial es requerida'
                    },
                   
        		}
        	},
         	
        	prestatario : {
        		selector: "#id_prestatario",
        		validators : {
        			notEmpty: {
                        message: 'El prestatario es requerido'
                    },
        		}
        	},        	
        }
  
    });

});
</script>


<script type="text/javascript">
	$("#id_btn_registra").click(function(){
		var validator = $('#id_form').data('bootstrapValidator');
	    validator.validate();
		
	    if (validator.isValid()) {
	        $.ajax({
	          type: "POST",
	          url: "registraSolicitud", 
	          data: $('#id_form').serialize(),
	          success: function(data){
	        	  mostrarMensaje(data.mensaje);
	        	  limpiarFormulario();
	        	  validator.resetForm();
	          },
	          error: function(){
	        	  mostrarMensaje(MSG_ERROR);
	          }
	        });
	        
	    }
	});

	$.getJSON("cargaPais", {}, function (data){
		$.each(data, function(index, item){
			$("#id_pais").append("<option value=" +  item.idPais +" >" +  item.nombre+ "</option>");
		});	
	});		

	
	function limpiarFormulario(){	
		$('#id_razon').val('');
		$('#id_celular').val('');
		$('#id_pais').val(' ');
		$('#id_direccion').val(' ');
		$('#id_contacto').val(' ');
		$('#id_ruc').val(' ');
	}
</script>



	
</div>
</body>
</html>



