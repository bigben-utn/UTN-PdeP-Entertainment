import entrada.*
import excepciones.*

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
            throw new AsistenteCompraConSaldoNegativo()
        }
    }

    method entradasDelAnioAnterior() {
        const hoy = new Date()

        return entradasHistoricas.filter( {entrada => entrada.fecha().year() == hoy.year() - 1} )
    }

    method bandasVistas() = entradasHistoricas.map( {entrada => entrada.banda()} ).asSet()
}

object fan {
    method aplicarDescuento(entrada, descuento) = entrada.precio()
}

object vip {
    method aplicarDescuento(entrada, descuento) = entrada.precio() * descuento
}