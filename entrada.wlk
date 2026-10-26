class Entrada {
    const property banda
    const property fecha = new Date()
    const precioBase=1000

    method impuesto() = 0
    method precio() = precioBase + self.impuesto()
}