class Empresa {
    var property honorariosDeReferencia
    const property profesionales = []
    const property clientes = #{}

    method contratarProfesional(unProfesional) {
        profesionales.add(unProfesional)
    }
    method cantidadQueEstudiaronEn_(unaUniversidad) {
        return profesionales.count({p => p.universidad() == unaUniversidad})
    }
    method profesionalesCaros() {
        return profesionales.filter({p => p.honorarios() > honorariosDeReferencia}).asSet()
    }
    method universidadesFormadoras() {
        return profesionales.map({p => p.universidad()}).asSet()
    }
    method profesionalMasBarato() {
        return profesionales.min({p => p.honorarios()})
    }
    method esDeGenteAcotada() {
        return profesionales.all({p => p.provinciasDondeTrabaja().size() <= 3})
    }
    method puedeSatisfacerA(unSolicitante) {
        return profesionales.any({p => unSolicitante.puedeSerAtendidoPor(p)})
    }
    method darServicio(unSolicitante) {
        if (self.puedeSatisfacerA(unSolicitante)){
            const unProfesional = profesionales.find({p =>unSolicitante.puedeSerAtendidoPor(p)})
            unProfesional.cobrar(unProfesional.honorarios())
            clientes.add(unSolicitante)
        } else {
            self.error("no puede ser atendido")
        }
    }
    method cantidadDeClientes() = clientes.size()
    method tieneComoClienteA(unSolicitante) = clientes.contains(unSolicitante)
    method esProfesionalPocoAtractivo(unProfesional) {
        const provinciasProf = unProfesional.provinciasDondeTrabaja().asSet()
        const profMismasProv = profesionales.filter({p => p.provinciasDondeTrabaja().asSet() == provinciasProf})
        return profMismasProv.any({p => p.honorarios() > unProfesional.honorarios()})
    }
    // method existeOtroProfMasBarato(provincia, unProf) {
    //   return profesionales.any({p => p.provinciasDondeTrabaja().contains(provincia)
    //          && p.honorarios() < unProf.honorarios()})
    //}
}