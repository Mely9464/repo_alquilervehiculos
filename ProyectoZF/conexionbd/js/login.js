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

// redirigirme a la dashboard
function redirigir() {
	window.location.href = 'registrousuario.html'
}
// boton para simular el inicio de sesion
function iniciarSesion(user, password) {
	// simula los datos traidos de la base de datos
	const myEmail = 'andresm@gmail.com'
	const myPassword = '1234'
	if (user === myEmail && password === myPassword) {
		redirigir()
	} else {
		// alert('Usuario o contraseña incorrectos')
		const eventoToast = new bootstrap.Toast(toast)
		eventoToast.show()
	}
}
