<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Principal</title>
</head>
<body>
	<!--  <nav class="navbar navbar-expand-lg navbar-light bg-info">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Inicio</a></li>
					<li class="nav-item dropdown"><a
						style="margin-left: 10px; border: none"
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Mantenimiento</a></li>
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-outline-light" href="ServletControlador?accion=Empleado" >Transacción</a></li>
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-outline-light" href="ServletControlador?accion=Cliente">Consulta</a></li>
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-outline-light" href="ServletControlador?accion=Venta">Reporte</a></li>
					<li class="nav-item"><a
						style="margin-left: 10px; border: none"
						class="btn btn-outline-light" href="ServletControlador?accion=Reporte">Ayuda</a></li>
				</ul>

			</div>
			<div class="dropdown">
				<a class="btn btn-danger"
						href="ServletControlador?accion=Salir">Cerrar Sesion</a>
			</div>
		</div>
	</nav>
	
	<div class="m-4" style="height: 530px">
	<iframe name="myframe" style="height: 100% ;width: 100%;border-color: red"></iframe>
  
	</div>
	-->



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
                   <li><a class="dropdown-item" href="Cuota.jsp">Registrar Cuota</a></li>
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
      	</li>
      	
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


	<!-- JS principal -->
	<script src="js/jquery-3.5.1.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous"></script>
</body>
</html>