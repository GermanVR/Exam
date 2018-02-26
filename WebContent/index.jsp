<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/funciones.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<label for="nombre">Ingresa tu nombre</label>
	<input type="text" id="nombre" name="nombre"\>
	<br>
	<label for="edad">Ingresa tu Edad</label>
	<input type="text" id="edad" name="edad"\>
	<br>
	<label for="sexo">Elige tu sexo</label>
	<br>
	<input type="radio" value="Masculino" name="sexo">Masculino
	<input type="radio" value="Femenino" name="sexo">Femenino
	<br>
	<label>Elige tu Profesionalidad</label>
	<br>
	<select name="tipoP" id="tipoP">
		<option value="estudiante">Estudiante</option>
		<option value="trabajador">Trabajador</option>
	</select>
	<br>
	<label for="tab_ini">Tabla Inicial</label>
	<input type="text" name="tab_ini" id="tab_ini">
	<br>
	<label for="tab_fin">Tabla Final</label>
	<input type="text" name="tab_fin" id="tab_fin">
	<br>
	<input type="button" value="Enviar Datos" onclick="valida();">

	<div id="repuesta"></div>
</body>
</html>