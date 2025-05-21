
class EmpresaDeServicios {
  const empleadosProfesionales = []
  const honorarioDeReferenecia = 0

  method honorarioDeReferenecia() = honorarioDeReferenecia
  method contratar(unProfesional){
    empleadosProfesionales.add(unProfesional)

  }

  method contratadosDe(unaUniversidad){
    empleadosProfesionales.sum({e => e.estudioUniversidad(unaUniversidad)})
  }

  method profesionalesCaros(){
    empleadosProfesionales.asSet({e => e.honorario() > self.honorarioDeReferenecia()})
  }

  method profesionalMasBarato(){
    empleadosProfesionales.min({e => e.honorario()})
  }

  method universidadesFormadoras(){
    empleadosProfesionales.asSet({e => e.estudioUniversidad()})
  }

  method esGenteAcotada(){
    empleadosProfesionales.any({ e => e.estaAcotado()})
  }
}

class profesionalUniversitario {

}
