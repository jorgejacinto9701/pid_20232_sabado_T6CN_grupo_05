<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="esS" >
<jsp:include page="Menu.jsp" />
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

	$.getJSON("cargaUsuario", {}, function (data){
		$.each(data, function(index, item){
			$("#id_usuario").append("<option value=" +  item.IdUsuario +" >" +  item.nombre+ "</option>");
		});	
	});		

	
	function limpiarFormulario(){	
		$('#id_monto').val('');
		$('#id_fechaIni').val('');
		$('#id_fechaFin').val(' ');
		$('#id_prestatario').val(' ');
		
	}
</script>



	
</div>
</body>
</html>



