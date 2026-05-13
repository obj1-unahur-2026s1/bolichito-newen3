 object rojo{
  method fuerte() = true
}
object pardo{
  method fuerte() = false
}

object celeste{
  method fuerte() = false
}

object verde{
  method fuerte() = true
}

object naranja{
  method fuerte() = true
}

object lino{ 
  method brilla() = false
}

object madera{
  method brilla() = false
}

object cuero{
  method brilla() = false
}

object cobre{
  method brilla() = true
}

object vidrio{
  method brilla() = true
}

object remera{
  method peso() = 800
  method color() = rojo
  method material() = lino
}

object pelota{
  method peso() = 1300
  method color() = pardo
  method material() = cuero
}

object biblioteca{
  method peso() = 8000
  method color() = verde
  method material() = madera
}

object munieco{
  var peso = 100
  method peso() = peso
  method peso(nuevo) {peso = nuevo}
  method color() = celeste
  method material() = vidrio
}

object placa{
  var peso = 0
  var color = rojo
  method peso() = peso
  method color() = color
  method material() = cobre
  method peso(nuevo) {peso = nuevo}
  method color(nuevo) {color = nuevo}
}

object arito{
  method color() = celeste
  method material() = cobre
  method peso() = 180
}


object banquito{
  var color = naranja
  method peso() = 1700
  method material() = madera
  method color() = color
  method color(nuevo) {color = nuevo}
}

object cajita{
  var objetoInterno = arito
  method color() = rojo
  method material() = cobre
  method peso() { 400 + objetoInterno.peso() }
  method objetoInterno(unObjeto) {
    objetoInterno = unObjeto
  }
}

