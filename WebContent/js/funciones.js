function valida() {
	var nombre = $("#nombre").val();
	var edad = $("#edad").val();
	var sexo = $("input:radio[name=sexo]:checked").val();
	var tipoP = $("#tipoP option:selected").text();
	var tab_ini = $("#tab_ini").val();
	var tab_fin = $("#tab_fin").val();

	if (tab_fin < tab_ini) {
		alert("Tabla Final no puede ser menor que Tabla Inicial");
		return false;
	}

	console.log(tipoP);
	if (nombre.length == 0) {
		alert("Ingresa un nombre");
		return false;
	}
	if (edad < 1 || edad > 99) {
		alert("Ingresa una edad valida");
		return false;
	}

	var datos = "nombre=" + nombre + "&edad=" + edad + "&sexo=" + sexo
			+ "&tipoP=" + tipoP + "&tab_ini=" + tab_ini + "&tab_fin="+
	tab_fin;
	console.log("Entro");
	$.ajax({
		url : './examenController',
		data : datos,
		type : "POST",
		success : function(dataResponse) {
			$('#repuesta').html(dataResponse);
		}
	});
	console.log("Salio");
}