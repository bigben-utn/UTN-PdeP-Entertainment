import entrada.*
import excepciones.*

class Asistente {
    var tipoAbono

    var entradasHistoricas = []
    var saldo

    method comprar(entrada) {
        if (saldo > 0) {
            saldo -= tipoAbono.aplicarDescuento(entrada)
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
    method aplicarDescuento(entrada) = entrada.precio()
}

class Vip {
    var descuento

    method aplicarDescuento(entrada) = entrada.precio() * descuento
}