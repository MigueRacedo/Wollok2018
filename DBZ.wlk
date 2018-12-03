class Guerrero {
      
      const property energiaInicial
      var property energia = energiaInicial
      var property potencialOfensivo
      var property experiencia
      var estaMuerto = false
      var property traje
      
      constructor(unaEnergia,unaExperiencia,unPotencial){
              self.energiaInicial(unaEnergia)
              self.experiencia(unaExperiencia)
              self.potencialOfensivo(unPotencial)
      }
      
      method atacarA(unGuerrero){
              var potencialAtacante = potencialOfensivo * 0.1
              unGuerrero.disminuirEnergia(potencialAtacante)
              unGuerrero.aumentarExperiencia(1)
      }
      
      method disminuirEnergia(unaCantidad){
              energia -= unaCantidad
      }
      
      method aumentarExperiencia(unaCantidad){
              experiencia += unaCantidad
      }
      
}

class Traje {

      var property proteccion 
}

class TrajeDeEntrenamiento inherits Traje {
      
      method efectoAtaque(){
      
      }
