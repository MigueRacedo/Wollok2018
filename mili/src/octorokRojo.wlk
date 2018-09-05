import link.*
import ganon.*
import zelda.*

object octorokrojo {
	
	var salud
	var defensa
	
	method sufrirAtaque(danio){
		self.modificarSalud(-danio)
	}
	
	method curar(puntos){
		self.modificarSalud(puntos)
	}
	
	method modificarSalud(cantidad){
		salud += cantidad
	}
	
	method atacar(personaje){
		personaje.sufrirAtaque(0.25)
	}
	
	
	
}
