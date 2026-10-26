class Entrada {
    const banda
    const fecha
    const precioBase=1000

    method impuesto() = 0
    method precio() = precioBase + self.impuesto()
}


class UserExc inherits Exception {
    override method message() = "El potencial asistente no puede comprar la entrada: Su saldo es negativo"
}

class Asistente {
    const tipoAbono
    var entradasHistoricas = []
    var saldo

    method comprar(entrada) {
        if (saldo > 0) {
            saldo -= entrada.precio()
            entradasHistoricas.add(entrada)
        } else {
            throw new UserExc()
        }
    }
}
