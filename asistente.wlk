import entrada.*
import excepciones.*

class Asistente {
    var property tipoAbono
    var saldo
    const entradasHistoricas = []

    method comprar(entrada) {
        if (saldo > 0) {
            saldo -= tipoAbono.aplicarDescuento(entrada)
            entradasHistoricas.add(entrada)
        } else {
            throw new AsistenteCompraConSaldoNegativo()
        }
    }

    method bonificarAbono() {
        tipoAbono.bonificar()
    }

    method entradasDelAnioAnterior() = entradasHistoricas.filter({ entrada => entrada.esDelAnioAnterior() })

    method bandasVistas() = entradasHistoricas.map({ entrada => entrada.banda().nombre() }).asSet()

    method gastoTotalSinDescuento() = entradasHistoricas.sum({ entrada => entrada.precio() })

    method cantidadEntradasCompradas() = entradasHistoricas.size()

    method entradasHistoricas() = entradasHistoricas
}

object fan {
    method aplicarDescuento(entrada) = entrada.precio()
    method bonificar() {} // polimorfismo con Vip
}

class Vip {
    var property descuento

    method aplicarDescuento(entrada) = entrada.precio() * (1 - descuento)
    method bonificar() {
        descuento += 0.01
    }
}
