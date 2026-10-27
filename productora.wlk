import banda.*

object productora {
    var property impuesto = 0
    const bandas = #{}
    const asistentes = #{}

    method agregarBanda(banda) = bandas.add(banda)
    method agregarAsistente(asistente) = asistentes.add(asistente)

    method gananciaTotal() = asistentes.sum({ asistente => asistente.gastoTotalSinDescuento() }) - bandas.sum({ banda => banda.presupuesto() })

    method cantidadEntradasVendidas() = asistentes.sum({ asistente => asistente.cantidadEntradasCompradas() })

    method entradasVendidas() = asistentes.flatMap({ asistente => asistente.entradasHistoricas() })

    method cantidadEntradasVendidasPorBanda(banda) = self.entradasVendidas().count({ entrada => entrada.banda() == banda })

    method bandaMasPopular() = bandas.max({ banda => self.cantidadEntradasVendidasPorBanda(banda) })

    method bonificarAsistentesVip() {
        asistentes.forEach({ asistente => asistente.bonificarAbono() })
    }
}
