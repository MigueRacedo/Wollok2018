import guerrero.*

class Traje {

      var property porcentaje 
}

class TrajeComun inherits Traje {
	
	method efectoAtaque(guerrero){
		guerrero.disminuirEnergia()
      }
}

class TrajeEntrenamiento inherits Traje {
	
	method efectoAtaque(guerrero){
	}
}