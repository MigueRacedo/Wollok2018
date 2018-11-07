import escobas.*
import jugadores.*

class Equipo {
	
	var integrantes = #{}
	
	method integrantes() = integrantes
	
	method agregarIntregrante(unIntegrante){
		integrantes.add(unIntegrante)
	}
}