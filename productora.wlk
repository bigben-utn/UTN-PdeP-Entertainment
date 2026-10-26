import banda.*

object productora {
    var bandas = #{}
    var asistentes = #{}

    method gananciaTotal() = asistentes.filter( {asistente => asistente.gastoTotalSinDescuento()} ).sum() - bandas.filter( {banda => banda.canon()} ).sum()
    method cantidadEntradasVendidas() = asistentes.map( {asistente => asistente.cantidadEntradasCompradas()} ).sum()
    method bandaMasPopular() = bandas.max( {banda => self.cantidadEntradasVendidasPorBanda(banda)} )

    method entradasVendidas() = asistentes.map( {asistente => asistente.entradasHistorica()} ).flatten()
    method cantidadEntradasVendidasPorBanda(banda) = self.entradasVendidas().filter( {entrada => entrada.banda() == banda} )
}