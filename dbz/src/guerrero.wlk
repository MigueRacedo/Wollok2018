import trajes.*

class Guerrero {
      
      var property energiaInicial
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
              var danioFinal = traje.efectoAtaque() - 
              unGuerrero.disminuirEnergia(danioFinal)
              unGuerrero.aumentarExperiencia(1)
      }
      
      method disminuirEnergia(unaCantidad){
              energia -= unaCantidad
      }
      
      method aumentarExperiencia(unaCantidad){
              experiencia += unaCantidad
      }
      
}