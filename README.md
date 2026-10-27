Polimorfismo Es la cpacidad de distintos objetos de entender un mismo mensaje y responder de forma distina, sin que el invocador interactuar con ellos de forma uniforme.
​Aplicación en el código:
​Clases / Objetos: fan y Vip frente a Asistente.
​Método: Asistente.comprar(entrada).
​Detalle: En saldo -= tipoAbono.aplicarDescuento(entrada), el asistente trata a tipoAbono polimórficamente sin recurrir a condicionales sobre el tipo de abono.

Herencia: jerarquías donde las subclases reutilizan estado y comportamiento de una superclase, pudiendo redefinir o extender métodos concretos y abstraxtos
​Aplicación en el código:
​Clases: Banda (superclase), BandaRock, BandaTrap y BandaIndie (subclases).
​Métodos: BandaTrap.canon() y BandaTrap.gastoExtra().
​Detalle: BandaTrap reescribe el comportamiento del canon haciendo override method canon() = super() * self.popularidad(), combinando el comportamiento de la superclase mediante super() con su propia lógica de popularidad

Encapsulamiento: Principio que restringe el acceso directo al estado interno de un objeto, protegiendo sus invariantes y exponiendo únicamente una interfaz controlada de mensajes.
​Aplicación en el código:
​Clase: Asistente.
​Método: Asistente.comprar(entrada).
​Detalle: Las referencias saldo y entradasHistoricas no se modifican de forma externa; la compra valida el saldo antes de descontar dinero y añadir la entrada, garantizando la consistencia interna del objeto.

Manejo de Excepciones: Uso de fallas explícitas para detener la ejecución ante una condición no válida del dominio, evitando estados inconsistentes o retornos de valores artificiales.
​Aplicación en el código:
​Clase: Asistente.
​Método: Asistente.comprar(entrada).
​Detalle: Si el saldo <= 0, se lanza throw new AsistenteCompraConSaldoNegativo(), interrumpiendo el flujo antes de modificar las colecciones o el dinero del asistente.
