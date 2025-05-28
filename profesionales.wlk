class ProfesionalVinculado {
    const property universidad

    method honorarios() = universidad.honorariosRecomendados()
    method provinciasDondeTrabaja() = [universidad.provincia()] //se lo hace lista para que sea polimórfico
    method cobrar(unImporte) {
        universidad.recibirDonacion(unImporte * 0.5)
    }
}

class ProfesionalAsociado {
    var property universidad
    
    method honorarios() = 3000 // o bien const property honorarios = 3000
    method provinciasDondeTrabaja() = ["Entre Rios", "Santa Fe", "Corrientes"]
    method cobrar(unImporte) {
        asociacion.recibirDonacion(unImporte)
    }
}

class ProfesionalLibre {
    var property universidad
    const property provinciasDondeTrabaja = []
    var property honorarios
    var totalRecaudado = 0

    method totalrecaudado() = totalRecaudado
    method agregarProvincia(unaProvincia) {
        provinciasDondeTrabaja.add(unaProvincia)
    }
    method cobrar(unImporte) {totalRecaudado += unImporte}
    method pasarDinero(unImporte, unProfesional) {
        totalRecaudado = (totalRecaudado - unImporte).max(0)
        unProfesional.cobrar(unImporte)
    }
}

object asociacion {
    var totalRecaudado = 0

    method recibirDonacion(unImporte) {totalRecaudado += unImporte}
    method totalRecaudado() = totalRecaudado
}