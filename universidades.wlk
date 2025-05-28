class Universidad {
    const property provincia
    var property honorariosRecomendados
    var totalRecaudado = 0

    method recibirDonacion(unImporte) {totalRecaudado += unImporte}
}

object asociacion {
    var totalRecaudado = 0

    method recibirDonacion(unImporte) {totalRecaudado += unImporte}
    method totalRecaudado() = totalRecaudado
}