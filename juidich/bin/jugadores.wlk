import escobas.*
import equipo.*


class Jugador {
	
	var property skills
	var property peso
	var property escoba
	
	constructor (unSkills,unPeso,unaEscoba){
		self.skills(unSkills)
		self.peso(unPeso)
		self.escoba(unaEscoba)
	}
	
	method nivelDeManejoDeEscoba(){
		return skills / peso
	}
	
	method velocidad(){
		return escoba.velocidad() * self.nivelDeManejoDeEscoba()
	}
	
	method habilidad(){
		return 0
	}
}

class Cazador inherits Jugador{
	
	var property punteria
	var property fuerza
	
/* no hace falta el constructor (no esta mal si lo haces) porque podes crear la instancia asi:
	
	>>> var jose = new Golpeador(punteria=10,skills=15,peso=5,escoba="cacho")
	
	y no importa el orden de los parametros
	
*/
	override method habilidad(){
		return self.velocidad() + skills + punteria * fuerza
	}
}

class Guardian inherits Jugador{
	
	var property reflejos
	var property fuerza
	
	override method habilidad(){
		return self.velocidad() + skills + reflejos + fuerza
	}
}

class Golpeador inherits Jugador{
	
	var property punteria
	var property fuerza
	
	override method habilidad(){
		return self.velocidad() + skills + punteria + fuerza
	}
}

class Buscador inherits Jugador{
	
	var property reflejos
	var property vision
	
	override method habilidad(){
		return self.velocidad() + skills + reflejos * vision
	}
}