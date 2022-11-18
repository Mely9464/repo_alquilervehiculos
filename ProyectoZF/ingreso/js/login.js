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
		iniciarSesion(datos.get('usuario'), datos.get('contrasena'))
	}, 3000)
})

