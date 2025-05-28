class Persona {
    const property provinciaDondeVive

    method puedeSerAtendidoPor(unProfesional){
        return unProfesional.provinciaDondeTrabaja().contains(provinciaDondeVive)//provincia => Persona
    }
}

class Institucion {
    const property universidadesReconocidas = #{}

    method agregarUniversidad(unaUniversidad) = universidadesReconocidas.add(unaUniversidad)
    method puedeSerAtendidoPor(unProfesional){
        return universidadesReconocidas.contains(unProfesional.universidad())
    }
}

class Club {
    const property provinciasDondeEsta //=#{}

    method agregarProvincia(unaProvincia) = provinciasDondeEsta.add(unaProvincia)
    method puedeSerAtendidoPor(unProfesional) {
        return not provinciasDondeEsta.asSet().intersection(unProfesional.provinciasDondeTrabaja().asSet()).isEmpty()
         //!provinciasDondeEsta.intersection(unProfresional.provinciasDondeTrabaja()).isEmpy()
    }    //asSet() porque [universidad.provincia()] es lista y sólo un conjunto entiende el intersection
}