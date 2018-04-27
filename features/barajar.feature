#language: es
Característica:
	Como jugador de soft 21
	Quiero ingresar mi nombre
	Para iniciar el juego


Escenario: el jugador ingresa
	Dado que entra al juego
	Y ingreso el nombre "Diego"
	Entonces debo ver "Bienvenido a Soft21"

Escenario: si jugador da jugar e ingreso nombre diego
	Dado que entra al juego
	 Y ingreso el nombre "Diego"
	Cuando da iniciar
	Entonces debo ver "empieza partida"

Escenario: si jugador da jugar sin ingresar nombre
	Dado que entra al juego
	Cuando da iniciar
	Entonces debo ver "ingrese nombre"	
