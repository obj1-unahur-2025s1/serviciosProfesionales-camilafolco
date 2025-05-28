class Persona {
    const property provincia

    method puedeSerAtendidoPor(unProfesional){
        return unProfesional.provinciaDondeTrabaja().contains(provincia)//provincia => Persona
    }
}

class Institucion {
    const property universidadesReconocidas

    method agregarUniversidad(unaUniversidad) = universidadesReconocidas.add(unaUniversidad)
    method puedeSerAtendidoPor(unProfesional){
        return universidadesReconocidas.contains(unProfesional.universidad())
    }
}

class Club {
    const property provinciasDondeEsta

    method agregarProvincia(unaProvincia) = provinciasDondeEsta.add(unaProvincia)
    method puedeSerAtendidoPor(unProfesional) {
        return not provinciasDondeEsta.asSet().intersection(unProfesional.provinciasDondeTrabaja().asSet()).isEmpty()
    }    //asSet() porque [universidad.provincia()] es lista y sólo un conjunto entiende el intersection
}