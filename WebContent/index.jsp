<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Calculadora</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<form action="FORMServlet" method="POST">
					<!-- Titulo Formulario -->
					<h4 class="mt-4 mb-3 text center">Formulario Contacto</h4>
					<!-- Inicio Formulario -->
					<div class="form-group">
						<label for="nombre">Nombre</label>
						<input type="text" class="form-control" id="nombre" name="nombre" required/>
					</div>
					
					<div class="form-group">
						<label for="apellido">Apellido</label>
						<input type="text" class="form-control" id="apellido" name="apellido" required/>
					</div>
					
					<div class="form-group">
						<label for="email">E-mail</label>
						<input type="email" class="form-control" id="email" name="email" required/>
					</div>
					
					<div class="form-group">
						<label for="edad">Edad</label>
						<input type="text" class="form-control" id="edad" name="edad" required/>
					</div>
					
					<!-- Boton de Envio de datos y conexion con Servlet-->
					<input type="submit" class="btn btn-warning btn-block" id="mostrar" disabled value="Mostrar">
					<div class="form-group mt-4">
					<label for="mostrar">Mostrar Información</label>
					
					<!-- Intento de info en textarea -->
					<textarea rows="6" cols="40" class="form-control" id="resultado" disabled name="resultado" value="<%
						if(request.getSession().getAttribute("resultado")
								==null){
							out.println("");
						}else{
							
							out.print(request.getSession().getAttribute("resultado"));
							
						}
									
					
					%>>"></textarea>
					
					</div>
					
				</form>
			</div>
		</div>
	</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>