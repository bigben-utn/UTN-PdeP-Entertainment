class AsistenteCompraConSaldoNegativo inherits Exception {
    override method message() = "El potencial asistente no puede comprar la entrada: Su saldo es negativo"
}