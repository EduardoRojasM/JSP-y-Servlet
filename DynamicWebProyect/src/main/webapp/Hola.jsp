<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Formulario de registro - Mi web</title>
<script>

function validateForm() {
  var x = document.forms["myForm"]["nombre"].value;
  if (x == "") {
    alert("El campo de nombre esta vacio");
    return false;
    }
  if (/^([0-9])*$/.test(x)) {
        alert("El valor " + x + " no es una letra");
        document.getElementById("nombre").focus();
        document.getElementById("nombre").style.borderColor="red";
        return false; 
  }
  
  var y = document.forms["myForm"]["apellido"].value;
  if (y == "") {
    alert("El campo de apellido esta vacio");
    return false;
  }
  if (/^([0-9])*$/.test(y)) {
        alert("El valor " + y + " no es una letra");
        document.getElementById("apellido").focus();
        document.getElementById("apellido").style.borderColor="red";
        return false; 
  }
  var z = document.forms["myForm"]["genero"].value;
  if (z == "") {
    alert("No hay marcado ningun genero ");
    return false;
  }
  var a = document.forms["myForm"]["email"].value;
  if (a == "") {
    alert("El campo de email esta vacio");
    return false;
  }
  var c = document.forms["myForm"]["condiciones"].value;
  if (c == "") {
    alert("El campo de condiciones esta sin marcar");
    return false;
  }
  var d = document.forms["myForm"]["ciudad"].value;
  if (d == "") {
    alert("No hay ninguna ciudad selecionada");
    return false;
    }
}
</script>
</head>
<body>

<form name="myForm" action="/action_page.php" onsubmit="return validateForm()" method="post">

<br>

<label for="nombre">Ingrese su nombre: </label>
<input type="text" placeholder="Escribe tu nombre" maxlength = "50" name = "nombre" id = "nombre">

<br><br>

<label for="apellido">Ingrese su apellido: </label>
<input type="text" placeholder="Escribe tus apellidos" maxlength = "50" name = "apellido" id = "apellido">

<br><br>

<input type="radio" name="genero" value="hombre"> Hombre
<input type="radio" name="genero" value="mujer"> Mujer

<br><br>

<label for="email">Ingrese su correo electrónico: </label>
<input type="email"name="email"id="email">

<br><br>

<input checked type="checkbox" name="novedades" value="novedades"> Deseo recibir información sobre novedades y ofertas

<br><br>

<input checked type="checkbox" name="condiciones" value="condiciones">Declaro haber leido y aceptar las condiciones generales 
del programa y la normativa sobre protección de datos

<br><br>

Elige tu ciudad
<select name="Ciudad" id="Ciudad">
<option value="Ciudad"></option>
<option value="Arequipa">Arequipa</option>
<option value="Lima">Lima</option>
<option value="Cuzco">Cuzco</option>
<option value="Puno">Puno</option>
</select>

<br><br>

<textarea>
Escribe aqui 
</textarea>

<br><br>

  <button type="submit">Enviar</button>

</form>
</body>
</html>