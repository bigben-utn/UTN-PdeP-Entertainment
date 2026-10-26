class Banda {
    var nombre

    method canon() = 1000000

    method gastoExtra()

    method presupuesto() = self.canon() + self.gastoExtra()

    method popularidad()
}

class BandaRock inherits Banda() {
    var cantidadSolosGuitarra

    override method gastoExtra() = 10000
    override method popularidad() = 100 * cantidadSolosGuitarra
}

class BandaTrap inherits Banda() {
    var tieneHielo

    override method gastoExtra() = 0
    override method popularidad() = if (tieneHielo) 1000 else 0
    override method canon() = super() * self.popularidad()
}

class BandaIndie inherits Banda() {
    var cantidadInstrumentos

    override method popularidad() = 3.14 * nombre.size()
    override method gastoExtra() = 500 * cantidadInstrumentos
}