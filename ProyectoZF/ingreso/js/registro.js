/** @format */
const formulario = document.querySelector('#formulario')
const btnLogin = document.querySelector('#btnLogin')
const btnCargando = document.querySelector('#btnCargando')

// Guardando el toast del html
const toast = document.querySelector('.toast')

formulario.addEventListener('submit', (e) => {
	e.preventDefault()
	const datos = new FormData(formulario)
	btnLogin.classList.add('d-none')
	btnCargando.classList.remove('d-none')
	window.setTimeout(() => {
		btnLogin.classList.remove('d-none')
		btnCargando.classList.add('d-none')
		// simular la consulta en la base de datos
		registrarse(datos.get('Nombre'), datos.get('Apellido'), datos.get('Documento_de_identidad'), 
		datos.get('Fecha_nacimiento'), datos.get('Número_celular'), datos.get('Correo_electrónico'), datos.get('Barrio'), 
		datos.get('Dirección_residencia'), datos.get('Licencia_de_conducción'), datos.get('Tarjeta_de_crédito'), 
		datos.get('Licencia_de_conducción'), datos.get('Contraseña'), datos.get('Confirmar_contraseña'))
	}, 3000)
})

// redirigirme a la dashboard
function redirigir() {
	window.location.href = 'servicios.html'
}
// boton para simular el inicio de sesion
function Registrarse(Nombre, Apellido, Documento_de_identidad, Fecha_nacimiento, Correo_electrónico, Barrio,
	Dirección_residencia, Licencia_de_conducción, Contraseña, Confirmar_contraseña) {
	// simula los datos traidos de la base de datos
	const myNombre = 'Andres'
	const myApellido = 'Marroquin'
	const myDocumento_de_identidad = '11111111'
	const myFecha_nacimiento = '02/11/1973'
	const myNúmero_celular = '3118912092'
	const myCorreo_electrónico = 'andresm@gmail.com'
	const myBarrio = 'Alamos'
	const myDirección_residencia = 'Calle 5 # 4-20'
	const myLicencia_de_conducción = '00000'
	const myTarjeta_de_crédito = '00000'
	const myContraseña = '1234'
	const myConfirmar_contraseña = '1234'

	if (Nombre === myNombre && Apellido === myApellido && Documento_de_identidad === myDocumento_de_identidad
		&& Fecha_nacimiento === myFecha_nacimiento && Correo_electrónico === myCorreo_electrónico 
		&& Barrio === myBarrio && Dirección_residencia === myDirección_residencia 
		&& Licencia_de_conduccióna === myLicencia_de_conducción 
		&& Contraseña === myContraseña && Confirmar_contraseña === myConfirmar_contraseña) {
		redirigir()
	} else {
		// alert('Usuario o contraseña incorrectos')
		const eventoToast = new bootstrap.Toast(toast)
		eventoToast.show()
	}
}
