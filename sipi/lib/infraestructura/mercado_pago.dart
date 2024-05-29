import '../aplicacion/pago.dart';

class MercadoPago extends Pago {
  MercadoPago({
    required int idPago,
    required double monto,
    required DateTime fechaPago,
  }) : super(idPago: idPago, monto: monto, fechaPago: fechaPago);

  @override
  void realizarPago() {
    // Implementación de realizarPago
  }

  @override
  void cancelarPago() {
    // Implementación de cancelarPago
  }
}
