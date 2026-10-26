class Entrada {
    const banda
    const fecha
    const precioBase=1000

    method impuesto() = 0
    method precio() = precioBase + self.impuesto()
}