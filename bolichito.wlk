import personas.*
import objetos.*

object bolichito {
  var objetoEnVidriera = pelota
  var objetoEnMostrador = remera

    method objetoEnMostrador(objetoAPoner) {
        objetoEnMostrador = objetoAPoner
    }

    method objetoEnVidriera(objetoAPoner) {
        objetoEnVidriera = objetoAPoner
    }

    method esBrillante() {
        return objetoEnMostrador.material().brilla() &&
        objetoEnVidriera.material().brilla()
    }

    method esMonocromatico() {
        return objetoEnMostrador.color() == objetoEnVidriera.color()
    }

    method estaEquilibrado() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }

    method tieneAlgoDeColor(unColor) {
        return objetoEnMostrador.color() == unColor ||
        objetoEnVidriera.color() == unColor
    }

    method puedeMejorar() {
        return not self.estaEquilibrado() || 
        self.esMonocromatico()
    }

    method puedeOfrecerleAlgoA(unaPersona) {
        return
        unaPersona.leGusta(objetoEnMostrador) ||
        unaPersona.leGusta(objetoEnVidriera)
    }

    method intercambiarObjetos(){
        const aux = objetoEnMostrador
        objetoEnMostrador = objetoEnVidriera
        objetoEnVidriera = aux
    }

    method intercambiarPlus() {
        self.intercambiar(objetoEnVidriera, objetoEnMostrador)
    }

    method intercambiar(unObjeto,otroObjeto) {
        objetoEnMostrador = unObjeto
        objetoEnVidriera = otroObjeto
    }
}