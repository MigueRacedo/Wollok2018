import ganon.*
import octorokRojo.*
import zelda.*

object link {
	var salud
	var ataque
	var defensa
	var arma
	
	method sufrirAtaque(danio){
		self.modificarSalud(-danio)
	}
	
	method curar(puntos){
		self.modificarSalud(puntos)
	}
	
	method modificarSalud(cantidad){
		salud += cantidad
	}
	
	method estaSano(){
		return salud >=10
	}
	
	method salud(nuevaSalud){
		salud = nuevaSalud
	}
	
	
	method ataque(){
		return ataque
		}
		
}
