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

    method entradasDelAnioAnterior() = entradasHistoricas.filter( {entrada => entrada.esDelAnioAnterior()} )

    method bandasVistas() = entradasHistoricas.map( {entrada => entrada.banda()} ).asSet()

    method gastoTotalSinDescuento() = entradasHistoricas.map( {entrada => entrada.precio()} ).sum()

    method cantidadEntradasCompradas() = entradasHistoricas.size()

    method entradasHistorica() = entradasHistoricas
}

object fan {
    method aplicarDescuento(entrada) = entrada.precio()
}

class Vip {
    var descuento

    method aplicarDescuento(entrada) = entrada.precio() * (1 - descuento)
}