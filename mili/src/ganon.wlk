import link.*
import octorokRojo.*
import zelda.*

object ganon {
	
	var salud
	var ataque
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
		var danioTotal = 0.5.max(ataque / defensa)
		personaje.sufrirAtaque(danioTotal)
	}
	
	method ataqueEspecial(personaje){
		self.atacar(personaje)
		self.curar(1)
	}
	
	method ataque(){
		return ataque
	}
	
	
}
