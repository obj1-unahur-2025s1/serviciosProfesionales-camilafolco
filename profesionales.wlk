class ProfesionalVinculado {
    const property universidad

    method honorarios() = universidad.honorariosRecomendados()
    method provinciasDondeTrabaja() = [universidad.provincia()] //se lo hace lista para que sea polimórfico
}

class ProfesionalAsociado {
    var property universidad
    
    method honorarios() = 3000 // o bien const property honorarios = 3000
    method provinciasDondeTrabaja() = ["Entre Rios", "Santa Fe", "Corrientes"]
}

class ProfesionalLibre {
    var property universidad
    const property provinciasDondeTrabaja = []
    var property honorarios

    method agregarProvincia(unaProvincia) {
        provinciasDondeTrabaja.add(unaProvincia)
    }
}