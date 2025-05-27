class Empresa {
    var property honorariosDeReferencia
    const property profesionales = []

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
}