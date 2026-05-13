import objetos.*
object estefania{
    method leGusta(algo) = algo.color().fuerte() 
}

object luisa{
    method leGusta(algo) = algo.material().brilla() 
}

object juan{
    method leGusta(algo) = algo.color().fuerte() || algo.peso().between(1200, 1800)
}

object rosa{
    method leGusta(algo) = algo.material().brilla()
}
