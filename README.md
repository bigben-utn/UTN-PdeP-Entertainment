PolimorfismoEs la cpacidad de distintos objetos de entender un mismo mensaje y responder de forma distina, sin que el invocador interactuar con ellos de forma uniforme.
​Aplicación en el código:
​Clases / Objetos: fan y Vip frente a Asistente.
​Método: Asistente.comprar(entrada).
​Detalle: En saldo -= tipoAbono.aplicarDescuento(entrada), el asistente trata a tipoAbono polimórficamente sin recurrir a condicionales sobre el tipo de abono.

Herencia: jerarquías donde las subclases reutilizan estado y comportamiento de una superclase, pudiendo redefinir o extender métodos concretos y abstraxtos
​Aplicación en el código:
​Clases: Banda (superclase), BandaRock, BandaTrap y BandaIndie (subclases).
​Métodos: BandaTrap.canon() y BandaTrap.gastoExtra().
​Detalle: BandaTrap reescribe el comportamiento del canon haciendo override method canon() = super() * self.popularidad(), combinando el comportamiento de la superclase mediante super() con su propia lógica de popularidad
