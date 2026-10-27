PolimorfismoEs la cpacidad de distintos objetos de entender un mismo mensaje y responder de forma distina, sin que el invocador interactuar con ellos de forma uniforme.
​Aplicación en el código:
​Clases / Objetos: fan y Vip frente a Asistente.
​Método: Asistente.comprar(entrada).
​Detalle: En saldo -= tipoAbono.aplicarDescuento(entrada), el asistente trata a tipoAbono polimórficamente sin recurrir a condicionales sobre el tipo de abono.
