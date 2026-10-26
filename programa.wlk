class Entrada {
    const banda
    const fecha = new Date()
    const precioBase=1000

    method impuesto() = 0
    method precio() = precioBase + self.impuesto()
    method fecha() = fecha
}


class UserExc inherits Exception {
    override method message() = "El potencial asistente no puede comprar la entrada: Su saldo es negativo"
}

class Asistente {
    var tipoAbono
    var descuento

    var entradasHistoricas = []
    var saldo

    method comprar(entrada) {
        if (saldo > 0) {
            saldo -= tipoAbono.aplicarDescuento(entrada, descuento)
            entradasHistoricas.add(entrada)
        } else {
            throw new UserExc()
        }
    }

    method entradasDelAnioAnterior() {
        const hoy = new Date()

        return entradasHistoricas.filter({ entrada => entrada.fecha().year() == hoy.year() - 1 })
    }
}

object fan {
    method aplicarDescuento(entrada, descuento) = entrada.precio()
}

object vip {
    method aplicarDescuento(entrada, descuento) = entrada.precio() * descuento
}