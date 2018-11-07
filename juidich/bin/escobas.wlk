import jugadores.*
import equipo.*

class Escoba {
	
	var property anioDeFabricacion
	var property salud
	
	constructor (unAnio,unaSalud){
		self.anioDeFabricacion(unAnio)
		self.salud(unaSalud)
	}
	
	method velocidad(){
		return 0
	}
	
	method saludPorcentaje(){
		return salud / 100
	}
	
	method aniosQuePasaron(){
		return (new Date().year()) - anioDeFabricacion
	}
}

class Nimbus inherits Escoba{
	
	override method velocidad(){
		return (80 - self.aniosQuePasaron()) * self.saludPorcentaje()
	}
}

class SaetaDeFuego inherits Escoba{
	
	override method velocidad(){
		return 100
	}
}