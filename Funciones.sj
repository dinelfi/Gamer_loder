// Función para validar que sea una URL real (http:// o https://)
function esUrlValida(cadena) {
  try {
    const url = new URL(cadena);
    return url.protocol === "http:" || url.protocol === "https:";
  } catch (_) {
    return false;  
  }
}

// Ejemplo de uso dentro de la validación del formulario
function enviarJuego() {
  const nombre = document.getElementById("nombreJuego").value.trim();
  const enlace = document.getElementById("enlaceJuego").value.trim();
  const archivoLocal = document.getElementById("archivoLocal").files[0];

  // Requiere un nombre de juego
  if (!nombre) {
    alert("Por favor ingresa el nombre del juego.");
    return;
  }

  // Verifica que exista al menos un enlace válido O un archivo seleccionado
  if (!archivoLocal && (!enlace || !esUrlValida(enlace))) {
    alert("Por favor ingresa un enlace de descarga válido (ej: https://...) o selecciona un archivo de tu dispositivo.");
    return;
  }

  // Lógica para procesar el envío...
  alert("Juego enviado correctamente a revisión.");
}
