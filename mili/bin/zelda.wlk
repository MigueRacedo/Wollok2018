import link.*
import ganon.*
import octorokRojo.*

object zelda {
	
	var salud
	var titulo
	var defensa
	var arma
	
	method sufrirAtaque(danio){
		var danioTotal = danio - self.danioMitigado()
		self.modificarSalud(-danioTotal)
	}
	
	method curar(puntos){
		self.modificarSalud(puntos)
	}
	
	method modificarSalud(cantidad){
		salud += cantidad
	}
	
	method danioMitigado(){
		return (defensa*(titulo.size())/500)
	}
	
	method curarPersonaje(personaje){
		if(! personaje.estaSano()){
			personaje.salud(10)
		}
	}
	
	method atacar(personaje) {
		var danioTotal = self.calcularDanio(personaje)
		personaje.sufrirAtaque(danioTotal)
		
	}

	method equiparArco(arco){
		arma = arco
	}
	
	method calcularDanio(enemigo){
		if(arma.equals(arcoSagrado)){
			return ((self.salud() - enemigo.ataque()).abs())
			}else{return 0}
	}
	
	method salud(){
		return salud
	}
	
}

object arcoSagrado {}